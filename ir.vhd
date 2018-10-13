library ieee;
use ieee.std_logic_1164.all;
entity ir is
	port(
		ir_enirin: in std_logic; --控制ir从bus读取数据
		ir_data: in std_logic_vector (7 downto 0); --来自bus的8位数据输入
		ir_regf: out std_logic; --解析指令中的寄存器标志位，将信号传给statectrl
		ir_opcode: out std_logic_vector (4 downto 0); --解析指令中的操作码，传给alu和irdecoder
		ir_grcode: out std_logic_vector (5 downto 0); --解析指令中的寄存器码，传给grctrl
		ir_address_data: out std_logic_vector (7 downto 0) --解析指令中的地址/数据码字段，传给pc和dbuffera
	);
end entity ir;
architecture behave of ir is
signal instruction: std_logic_vector(15 downto 0); --锁存输入的16位指令的机器码
begin
	process(ir_enirin)
	variable state: std_logic := '0'; --控制ir读取两条8位数据，组成16位指令机器码
	begin
		if (ir_enirin'event and ir_enirin = '1') then
			case state is
			when '0' => 
				instruction(15 downto 8) <= ir_data; --读高8位
				state := '1';
			when '1' => 
				instruction(7 downto 0) <= ir_data;  --读低8位
				state := '0';
			when others => null;
			end case;
		else 
			instruction <= instruction;
		end if;
	end process;
	ir_regf <= instruction(10);
	ir_opcode <= instruction(15 downto 11);
	ir_address_data <= instruction(7 downto 0);
	--when ir_regf=1: instruction[3:2]读写操作数寄存器地址 instruction[1:0]第一读取操作数寄存器地址
	--ir_grcode[1:0]第一读取地址 ir_grcode[3:2]写入地址 ir_grcode[5:4]第二读取地址
	ir_grcode <= instruction(3 downto 2) & instruction(3 downto 0) when instruction(10) = '1' else
				 instruction(9 downto 8) & instruction(9 downto 8) & instruction(9 downto 8);
end behave;