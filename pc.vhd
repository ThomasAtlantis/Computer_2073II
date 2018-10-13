library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity pc is
	port(
		pc_enpcout, pc_nextn, pc_rst, pc_ldpc: in std_logic;
		pc_ir_addr: in std_logic_vector(7 downto 0);
		pc_pc_addr: out std_logic_vector(7 downto 0)
	);
end entity pc;
architecture behave of pc is
signal addr_latch: std_logic_vector(7 downto 0) := (others => '0');
begin
	process(pc_nextn)
	begin
		if (pc_nextn'event and pc_nextn = '1') then
			if pc_rst = '1' then
				addr_latch <= (others => '0');
			elsif pc_ldpc = '1' then
				addr_latch <= pc_ir_addr;
			else
				addr_latch <= addr_latch + 1;
			end if;
		end if;
	end process;
	pc_pc_addr <= addr_latch when pc_enpcout = '1' else (others => 'Z');
end behave;