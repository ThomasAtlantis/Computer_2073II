library ieee;
use ieee.std_logic_1164.all;
entity irdecoder is
	port(
		ird_opcode: in std_logic_vector(4 downto 0);
		ird_opsignals: out std_logic_vector(11 downto 0)
		-- ird_opsignals[9:0]: jnz, dly, prt, hlt, mov, so, do, jmp, rdm, wtm
	);
end entity irdecoder;
architecture behave of irdecoder is
signal ird_opsignals_latch: std_logic_vector(11 downto 0) := (others => '0');
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
	process(ird_opcode)
	begin
		ird_opsignals_latch <= (others => '0');
		case ird_opcode is
		--signals: jnz, dly, prt, hlt, mov, so, do, jmp, rdm, wtm
		when HLT => ird_opsignals_latch(6) <= '1';
		when MOV => ird_opsignals_latch(5) <= '1';
		when INC => ird_opsignals_latch(4) <= '1';
		when DEC => ird_opsignals_latch(4) <= '1';
		when ADD => ird_opsignals_latch(3) <= '1';
		when SUB => ird_opsignals_latch(3) <= '1';
		when JMP => ird_opsignals_latch(2) <= '1';
		when SHL => ird_opsignals_latch(4) <= '1';
		when SHR => ird_opsignals_latch(4) <= '1';
		when MAND => ird_opsignals_latch(3) <= '1';
		when MOR => ird_opsignals_latch(3) <= '1';
		when MNOT => ird_opsignals_latch(4) <= '1';
		when MXOR => ird_opsignals_latch(3) <= '1';
		when MUL => ird_opsignals_latch(3) <= '1';
		when DIV => ird_opsignals_latch(3) <= '1';
		when NEG => ird_opsignals_latch(4) <= '1';
		when RDM => ird_opsignals_latch(1) <= '1';
		when WTM => ird_opsignals_latch(0) <= '1';
		when PRT => ird_opsignals_latch(7) <= '1';
		when DLY => ird_opsignals_latch(8) <= '1';
		when JNZ => ird_opsignals_latch(9) <= '1';
		when others => null;
		end case;
	end process;
	ird_opsignals <= ird_opsignals_latch;
end behave;