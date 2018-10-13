library ieee;
use ieee.std_logic_1164.all;
entity dbuffera is
	port(
		dbfa_dbfaout: in std_logic;
		dbfa_data_in: in std_logic_vector(7 downto 0);
		dbfa_data_out: out std_logic_vector(7 downto 0)
	);
end entity dbuffera;
architecture behave of dbuffera is
begin
	dbfa_data_out <= dbfa_data_in when dbfa_dbfaout = '1' else (others => 'Z');
end behave;