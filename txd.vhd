library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity txd is
	generic(framelen:integer := 8); --类属说明
	port(
		bclkt, resett, xmit_cmd_p: in std_logic; --定义输入输出信号
		txdbuf: in std_logic_vector(7 downto 0);
		txd, txd_done: out std_logic
	);
end txd;
architecture arch of txd is
type states is (x_idle, x_start, x_wait, x_shift, x_stop); --定义 5 个子状态
signal state:states := x_idle;
signal tcnt:integer := 0;
begin
	process(bclkt, resett, xmit_cmd_p, txdbuf) --主控时序进程
	variable xcnt16: std_logic_vector(4 downto 0) := "00000"; --定义中间变量
	variable xbitcnt: integer := 0;
	variable txds: std_logic;
	variable txd_content: std_logic_vector(7 downto 0);
	begin
		if resett = '1' then
			state <= x_idle; --复位，txd 输出保持 1
			txd_done <= '0';
			txds := '1';
		elsif rising_edge(bclkt) then
			case state is
			when x_idle => --状态 1，等待数据帧发送命令
				if xmit_cmd_p = '1' then
					txd_content := txdbuf;
					state <= x_start;
					txd_done <= '0';
				else 
					state <= x_idle;
				end if;
			when x_start => --状态 2，发送信号至起始位
				if xcnt16 = "01111" then
					state <= x_shift;
					xcnt16 := "00000";
				else 
					xcnt16 := xcnt16+1; 
					txds := '0'; 
					state <= x_start; --输出开始位，'0'
				end if;
			when x_wait => --状态 3，等待状态
				if xcnt16 >= "01110" then
					if xbitcnt = framelen then
						state <= x_stop;
						xbitcnt := 0;
						xcnt16 := "00000";
					else 
						state <= x_shift;
					end if;
					xcnt16 := "00000";
				else 
					xcnt16 := xcnt16+1; 
					state <= x_wait;
				end if;
			when x_shift => --状态 4，将待发数据进行并串转换
				txds := txd_content(xbitcnt);
				xbitcnt := xbitcnt+1;
				state <= x_wait;
			when x_stop => --状态 5，停止位发送状态
				if xcnt16 >= "01111" then
					if xmit_cmd_p = '0' then
						state <= x_idle; --高电平保持时间应低于一个帧发送的时间
						xcnt16 := "00000";
					else
						xcnt16 := xcnt16;
						state <= x_stop;
					end if;
					txd_done <= '1';
				else 
					xcnt16 := xcnt16+1;
					txds := '1';
					state <= x_stop;
				end if; 
			when others => 
				state <= x_idle;
			end case;
		end if;
		txd <= txds;
	end process;
end arch;
