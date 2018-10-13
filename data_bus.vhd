library ieee;
use ieee.std_logic_1164.all;
entity data_bus is
	port(
		bus_data_in: in std_logic_vector(7 downto 0);
		bus_data_out: out std_logic_vector(7 downto 0)
	);
end entity data_bus;
architecture behave of data_bus is
begin
	bus_data_out <= bus_data_in;
end behave;