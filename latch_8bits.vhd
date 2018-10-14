library ieee;
use ieee.std_logic_1164.all;

entity latch_8bits is
	port(
		enable: in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
	);
end latch_8bits;

architecture arch of latch_8bits is
signal data_latch: std_logic_vector(7 downto 0);
begin
	process(enable) begin
		if enable'event and enable = '1' then
			data_latch <= data_in;
		end if;
	end process;
	data_out <= data_latch;
end arch;