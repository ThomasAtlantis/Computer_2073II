library ieee;
use ieee.std_logic_1164.all;
entity grctrl is
	port(
		grc_regrd1, grc_regrd2, grc_regwt: in std_logic;
		grc_grcode: in std_logic_vector(5 downto 0);
		grc_grrd, grc_grwt: out std_logic_vector(3 downto 0)
	);
end entity grctrl;
architecture behave of grctrl is
begin
	process(grc_regrd1, grc_regrd2)
	begin
		if grc_regrd1 = '1' then
			case grc_grcode(1 downto 0) is
			when "00" => grc_grrd <= "0001";
			when "01" => grc_grrd <= "0010";
			when "10" => grc_grrd <= "0100";
			when "11" => grc_grrd <= "1000";
			when others => grc_grrd <= "0000";
			end case;
		elsif grc_regrd2 = '1' then
			case grc_grcode(5 downto 4) is
			when "00" => grc_grrd <= "0001";
			when "01" => grc_grrd <= "0010";
			when "10" => grc_grrd <= "0100";
			when "11" => grc_grrd <= "1000";
			when others => grc_grrd <= "0000";
			end case;
		else
			grc_grrd <= "0000";
		end if;
	end process;
	process(grc_regwt) 
	begin
		if grc_regwt = '1' then
			case grc_grcode(3 downto 2) is
			when "00" => grc_grwt <= "0001";
			when "01" => grc_grwt <= "0010";
			when "10" => grc_grwt <= "0100";
			when "11" => grc_grwt <= "1000";
			when others => grc_grwt <= "0000";
			end case;
		else
			grc_grwt <= "0000";
		end if;
	end process;
	
end behave;