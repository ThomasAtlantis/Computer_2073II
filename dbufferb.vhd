library ieee;
use ieee.std_logic_1164.all;
entity dbufferb is
	port(
		dbfb_dbfbin, dbfb_dbfbout, dbfb_from_alu: in std_logic;
		dbfb_data_in: in std_logic_vector(7 downto 0);
		dbfb_data_out: out std_logic_vector(7 downto 0);
		dbfb_data_from_alu: in std_logic_vector(7 downto 0);
		dbfb_data_to_alu: out std_logic_vector(7 downto 0)
	);
end entity dbufferb;
architecture behave of dbufferb is
signal data_latch: std_logic_vector(7 downto 0);
begin
	data_latch <= dbfb_data_in when dbfb_dbfbin = '1' else
					  dbfb_data_from_alu when dbfb_from_alu = '1';
	dbfb_data_out <= data_latch when dbfb_dbfbout = '1' else (others => 'Z');
	dbfb_data_to_alu <= data_latch;
end behave;