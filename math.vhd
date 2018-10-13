library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
package math is
	function mul8(a, b: std_logic_vector)
	return std_logic_vector;
	function div8(a, b: std_logic_vector)
	return std_logic_vector;
end math;
package body math is
	function mul8(a, b: std_logic_vector)
	return std_logic_vector is
		 variable iterator: integer := 0;
		 variable a_temp, b_temp: std_logic_vector(7 downto 0);
		 variable result: std_logic_vector(7 downto 0);
		 begin
			 a_temp := "0000" & a;
			 b_temp := "0000" & b;
			 result := (others => '0');
			 while iterator < 4 LOOP
				if b_temp(iterator) = '1' then
				result := result + a_temp;
				end if;
				a_temp := a_temp(6 downto 0) & '0';
				iterator := iterator + 1;
			 end loop;
			 return result;
		 end mul8;
	function div8(a, b: std_logic_vector)
	return std_logic_vector is
		variable result: std_logic_vector(7 downto 0);
		variable divided: std_logic_vector(3 downto 0);
		variable divider: std_logic_vector(3 downto 0);
		variable iterator: integer range 0 to 15 := 0;
		variable index: integer range 0 to 15 := 0;
		begin
			divided := a;
			divider := b;
			if divider = "0000" then result := "11111111";
			else
				result := "00000000";
				if divider(3 downto 1) = "000" then
					index := 3;
				elsif divider(3 downto 2) = "00" then
					index := 2;
				elsif divider(3) = '0' then
					index := 1;
				else 
					index := 0;
				end if;
				lp1: for iterator in 0 to 3 loop
					if divider(3) = '0' then
						divider := divider(2 downto 0) & '0';
					end if;
				end loop lp1;
				lp2: for iterator in 0 to 3 loop
					if divided < divider then result(index + 4) := '0';
					else 
						result(index + 4) := '1';
						divided := divided - divider;
					end if;
					divider := '0' & divider(3 downto 1);
					exit lp2 when index = 0;
					index := index - 1;
				end loop lp2;
				result(3 downto 0) := divided;
			end if;
			return result;
		end div8;
end math;