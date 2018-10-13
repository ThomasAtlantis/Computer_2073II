library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity ram is
	port(
		ramin, ramrd, ramwt: in std_logic;
		ram_address: in std_logic_vector(7 downto 0);
		ram_data_in: in std_logic_vector(7 downto 0);
		ram_data_out: out std_logic_vector(7 downto 0)
	);
end entity ram;
architecture behave of ram is
type t_ram is array(15 downto 0) of std_logic_vector(7 downto 0);
signal ram_address_latch: std_logic_vector(7 downto 0) := (others => '0');
begin
	process(ramin)
	begin
		if (ramin'event and ramin = '1') then
			ram_address_latch <= ram_address;
		else 
			ram_address_latch <= ram_address_latch;
		end if;
	end process;
	process(ramrd, ramwt)
	variable ram_data: t_ram;
	begin
		if ramrd = '1' then
			ram_data_out <= ram_data(CONV_INTEGER(ram_address_latch));
		else 
			ram_data_out <= (others => 'Z');
			if ramwt = '1' then
				ram_data(CONV_INTEGER(ram_address_latch)) := ram_data_in;
			end if;
		end if;
	end process;
end behave;