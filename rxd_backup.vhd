library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity rxd is
	generic(framelen:integer := 8); --传送的数据位为 8 位
	port (
		bclkr, resetr, rxdr: in std_logic; --定义输入输出信号
		r_ready: out std_logic;
		rbuf: out std_logic_vector(7 downto 0)
	);
end rxd;
architecture arch of rxd is
	type states is (r_start,  r_center,  r_wait,  r_sample,  r_stop); --定义各子状态
	signal state:states := r_start;
	signal rxd_sync:std_logic; -- rxd_sync 内部信号，接受 rxd 输入
begin
	pro1: process(rxdr)
	begin
		if rxdr = '0' then
			rxd_sync <= '0';
 		else 
 			rxd_sync <= '1';
 		end if;
 	end process;
 	pro2: process(bclkr,  resetr,  rxd_sync) --主控时序、组合进程
 	variable count: std_logic_vector(3 downto 0); --定义中间变量
 	variable rcnt: integer := 0; -- rcnt 为接收的数据位数计数
 	variable rbufs: std_logic_vector(7 downto 0);
 	begin
 		if resetr='1' then
 			state <= r_start;
 			count := "0000"; --复位
		elsif rising_edge(bclkr) then --波特率信号的上升沿
			--状态机
 			case state is
 			when r_start =>  --状态 1，等待起始位
 				if rxd_sync='0' then
 					state <= r_center;
 					r_ready <= '0';
 					rcnt := 0;
 				else
 					state <= r_start;
 					r_ready <= '0';
 				end if;
 			when r_center =>  --状态 2，求出每位的中点
 				if rxd_sync='0' then --每个数据位被分为 16 等分，中点为 8
					if count="0100" then 
						state <= r_wait; 
						count := "0000";
					else
						count := count+1; 
						state <= r_center;
					end if;
				else
					state <= r_start;
				end if;
			when r_wait =>  --状态 3，等待状态
				if count>="1110" then
					if rcnt = framelen then -- rcnt = framelen 表示数据接收够 8 位
						state <= r_stop;
					else state <= r_sample;
					end if;
					count := "0000";
				else 
					count := count+1; 
					state <= r_wait;
				end if;
			when r_sample => --状态 4，数据位采样检测
				rbufs(rcnt) := rxd_sync; 
				rcnt := rcnt+1;
				state <= r_wait;
			when r_stop => --状态 5，输出帧接收完毕信号
				r_ready <= '1';
				rbuf <= rbufs; 
				state <= r_start;
			when others =>
				state <= r_start;
			end case;
		end if;
 	end process;
end arch;