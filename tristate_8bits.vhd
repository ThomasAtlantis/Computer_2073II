library ieee;
use ieee.std_logic_1164.all;

entity tristate_8bits is
	port(
		enable: in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
	);
end tristate_8bits;

architecture arch of tristate_8bits is
begin
	data_out <= data_in when enable = '1' else (others => 'Z');
end arch;