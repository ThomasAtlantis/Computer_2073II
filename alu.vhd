library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.math.all;
entity alu is
	port(
		alu_enalu: in std_logic;
		alu_dst, alu_src: in std_logic_vector(7 downto 0); --alu_src comes from dbufferb, alu_dst comes from bus
		alu_opcode: in std_logic_vector(4 downto 0);
		alu_result: out std_logic_vector(7 downto 0);
		alu_zf: out std_logic
	);
end entity alu;
architecture behave of alu is
signal alu_result_latch: std_logic_vector(7 downto 0);
signal zero_flag_latch: std_logic := '0';
constant HLT: std_logic_vector(4 downto 0) := "00000";
constant MOV: std_logic_vector(4 downto 0) := "00001";
constant INC: std_logic_vector(4 downto 0) := "00010";
constant DEC: std_logic_vector(4 downto 0) := "00011";
constant ADD: std_logic_vector(4 downto 0) := "00100";
constant SUB: std_logic_vector(4 downto 0) := "00101";
constant JMP: std_logic_vector(4 downto 0) := "00110";
constant SHL: std_logic_vector(4 downto 0) := "00111";
constant SHR: std_logic_vector(4 downto 0) := "01000";
constant MAND:std_logic_vector(4 downto 0) := "01001";
constant MOR: std_logic_vector(4 downto 0) := "01010";
constant MNOT:std_logic_vector(4 downto 0) := "01011";
constant MXOR:std_logic_vector(4 downto 0) := "01100";
constant MUL: std_logic_vector(4 downto 0) := "01101";
constant DIV: std_logic_vector(4 downto 0) := "01110";
constant NEG: std_logic_vector(4 downto 0) := "01111";
constant RDM: std_logic_vector(4 downto 0) := "10000";
constant WTM: std_logic_vector(4 downto 0) := "10001";
constant PRT: std_logic_vector(4 downto 0) := "10010";
constant DLY: std_logic_vector(4 downto 0) := "10011";
constant JNZ: std_logic_vector(4 downto 0) := "10100";
begin
	process(alu_enalu)
	begin
		if (alu_enalu'event and alu_enalu = '1') then
			case alu_opcode is
			when HLT => alu_result_latch <= alu_src;
			when MOV => alu_result_latch <= alu_src;
			when INC => alu_result_latch <= alu_dst + 1;
			when DEC => alu_result_latch <= alu_dst - 1;
			when ADD => alu_result_latch <= alu_dst + alu_src;
			when SUB => alu_result_latch <= alu_dst + not alu_src + 1;
			when JMP => alu_result_latch <= alu_src;
			when JNZ => alu_result_latch <= alu_src;
			when SHL => alu_result_latch <= alu_dst(6 downto 0) & '0';
			when SHR => alu_result_latch <= '0' & alu_dst(7 downto 1);
			when MAND => alu_result_latch <= alu_dst and alu_src;
			when MOR => alu_result_latch <= alu_dst or alu_src;
			when MNOT => alu_result_latch <= not alu_dst;
			when MXOR => alu_result_latch <= alu_dst xor alu_src;
			when MUL => alu_result_latch <= mul8(alu_dst(3 downto 0), alu_src(3 downto 0));
			when DIV => alu_result_latch <= div8(alu_dst(3 downto 0), alu_src(3 downto 0));
			when NEG => alu_result_latch <= not alu_dst + 1;
			when RDM => alu_result_latch <= alu_src;
			when WTM => alu_result_latch <= alu_src;
			when PRT => alu_result_latch <= alu_src;
			when DLY => alu_result_latch <= alu_src;
			when others => alu_result_latch <= "XXXXXXXX";
			end case;
		end if;
	end process;
	process(alu_result_latch)
	begin
		if alu_enalu = '1' and (alu_opcode = DEC or alu_opcode = SUB or alu_opcode = SHL or alu_opcode = SHR or alu_opcode = MAND
		or alu_opcode = MOR or alu_opcode = MXOR or alu_opcode = MNOT or alu_opcode = NEG) then
			if alu_result_latch = "00000000" then
				zero_flag_latch <= '1';
			else
				zero_flag_latch <= '0';
			end if;
		end if;
	end process;
	alu_result <= alu_result_latch;
	alu_zf <= zero_flag_latch;
end behave;