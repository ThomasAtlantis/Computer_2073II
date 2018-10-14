library ieee;
use ieee.std_logic_1164.all;
package statedef is
	type state is (
		t_rst_1, t_rst_2, t1, t2, t3, t4, t5, t6, t7, t8,
		t9,t10, t11, t12, t13, t14, t15, t16, t17, t18
	);
end statedef;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.statedef.all;
entity statectrl is
	port(
		clk: in std_logic;
		regf: in std_logic; --from ir
		zf: in std_logic;
		opsignals: in std_logic_vector(11 downto 0);
		--from irdecoder opsignals[11:0]: snd, rcv, jnz, dly, prt, hlt, mov, so, do, jmp, rdm, wtm
		nextn, rstpc, ldpc, enpcout: out std_logic;  --control pc
		enirin: out std_logic;								--control ir
		enalu: out std_logic;								--control alu
		dbfaout: out std_logic;								--control dbuffera
		dbfbin, dbfbout: out std_logic;					--control dbufferb
		regrd1, regrd2, regwt: out std_logic;			--control grctrl
		enrom, romin: out std_logic;						--control rom
		ramin, ramrd, ramwt: out std_logic;				--control ram
		enled: out std_logic;								--control ledencoder
		txd_cmd, enuart, uart_reset: out std_logic;
		r_ready, txd_done: in std_logic
	);
end entity statectrl;
architecture behave of statectrl is
signal current_state, next_state: state;
signal rstpc_latch: std_logic := '0';
signal nextn_latch: std_logic := '0';
signal ldpc_latch: std_logic := '0';
signal enpcout_latch: std_logic := '0';
signal enirin_latch: std_logic := '0';
signal enalu_latch: std_logic := '0';
signal dbfaout_latch: std_logic := '0';
signal dbfbin_latch: std_logic := '0';
signal dbfbout_latch: std_logic := '0';
signal regrd1_latch: std_logic := '0';
signal regrd2_latch: std_logic := '0';
signal regwt_latch: std_logic := '0';
signal enrom_latch: std_logic := '0';
signal ramin_latch: std_logic := '0';
signal ramrd_latch: std_logic := '0';
signal ramwt_latch: std_logic := '0';
signal romin_latch: std_logic := '0';
signal enled_latch: std_logic := '0';
signal txd_cmd_latch: std_logic := '0';
signal enuart_latch: std_logic := '0';
signal uart_reset_latch: std_logic := '0';
signal counter: integer range 0 to 999900 := 0;
begin
	process(clk)
		begin
		if clk'event and clk = '1' then
		case current_state is
		when t_rst_1 =>
			rstpc_latch <= '1'; nextn_latch <= '0';
			ldpc_latch <= '0'; enpcout_latch <= '0';
			enirin_latch <= '0'; enalu_latch <= '0'; dbfaout_latch <= '0';
			dbfbin_latch <= '0'; dbfbout_latch <= '0'; regrd1_latch <= '0';
			regrd2_latch <= '0'; regwt_latch <= '0'; enrom_latch <= '0';
			ramin_latch <= '0'; ramrd_latch <= '0'; ramwt_latch <= '0';
			txd_cmd_latch <= '1'; enuart_latch <= '0'; uart_reset_latch <= '0';
			next_state <= t_rst_2;
		when t_rst_2 =>
			nextn_latch <= '1';
			next_state <= t1;
		when t1 =>
			enpcout_latch <= '1';
			next_state <= t2;
		when t2 =>
			romin_latch <= '1';
			next_state <= t3;
		when t3 =>
			rstpc_latch <= '0';
			nextn_latch <= '0';
			enpcout_latch <= '0';
			enrom_latch <= '1';
			romin_latch <= '0';
			next_state <= t4;
		when t4 =>
			enirin_latch <= '1'; 
			nextn_latch <= '1';
			next_state <= t5;
		when t5 =>
			enirin_latch <= '0';
			enrom_latch <= '0';
			enpcout_latch <= '1';
			nextn_latch <= '0';
			next_state <= t6;
		when t6 =>
			romin_latch <= '1';
			next_state <= t7;
		when t7 =>
			enpcout_latch <= '0';
			enrom_latch <= '1';
			romin_latch <= '0';
			next_state <= t8;
		when t8 =>
			enirin_latch <= '1';
			nextn_latch <= '1';
			next_state <= t9;
		when t9 =>
			enirin_latch <= '0';
			enrom_latch <= '0';
			nextn_latch <= '0';
			next_state <= t10;
		when t10 =>
			if (opsignals(5) = '1' and regf = '1') or opsignals(4) = '1' or
			opsignals(3) = '1' or (opsignals(7) = '1' and regf = '1') then
				regrd1_latch <= '1';
			elsif opsignals(2) = '1' or (opsignals(9) = '1' and zf = '0') then
				ldpc_latch <= '1';
			elsif (opsignals(5) = '1' and not regf = '1') or ((opsignals(1) = '1' or
			opsignals(0) = '1') and not regf = '1') or (opsignals(7) = '1' and not regf = '1')then
				dbfaout_latch <= '1';
			elsif regf = '1' and (opsignals(0) = '1' or opsignals(1) = '1') then
				regrd2_latch <= '1';
			elsif opsignals(9) = '1' and zf = '1' then
				nextn_latch <= '0';
				ldpc_latch <= '0';
			elsif opsignals(10) = '1' then
				uart_reset_latch <= '1';
			elsif opsignals(11) = '1' then
				if regf = '1' then
					regrd1_latch <= '1';
				else
					dbfaout_latch <= '1';
				end if;
				uart_reset_latch <= '1';
			else null;
			end if;
			if opsignals(6) = '1' then
				next_state <= t17;
			elsif opsignals(5) = '1' or opsignals(4) = '1' or opsignals(3) = '1' or 
			opsignals(2) = '1' or opsignals(1) = '1' or opsignals(0) = '1' or 
			opsignals(7) = '1' or (opsignals(9) = '1' and zf = '0') or opsignals(11) = '1' then
				next_state <= t11;
			elsif opsignals(8) = '1' then
				next_state <= t18;
			elsif opsignals(10) = '1' then
				next_state <= t17;
			else
				next_state <= t1;
			end if;
		when t11 =>
			if opsignals(5) = '1' or opsignals(10) = '1' then
				regwt_latch <= '1';
			elsif opsignals(4) = '1' then
				enalu_latch <= '1';
			elsif opsignals(3) = '1' then
				dbfbin_latch <= '1';
			elsif opsignals(2) = '1' or (opsignals(9) = '1' and zf = '0') then
				nextn_latch <= '1';
				enpcout_latch <= '1';
			elsif opsignals(1) = '1' or opsignals(0) = '1' then
				ramin_latch <= '1';
			elsif opsignals(7) = '1' then
				enled_latch <= '1';
			elsif opsignals(11) = '1' then
				txd_cmd_latch <= '0';
			else null;
			end if;
			if opsignals(11) = '1' then
				next_state <= t17;
			else 
				next_state <= t12;
			end if;
		when t12 =>
			if opsignals(5) = '1' then
				regrd1_latch <= '0';
				regwt_latch <= '0';
				dbfaout_latch <= '0';
			elsif opsignals(4) = '1' then
				regrd1_latch <= '0';
				enalu_latch <= '0';
				dbfbout_latch <= '1';
			elsif opsignals(3) = '1' then
				regrd1_latch <= '0';
				dbfbin_latch <= '0';
				if regf = '1' then
					regrd2_latch <= '1';
				else
					dbfaout_latch <= '1';
				end if;
			elsif opsignals(2) = '1' or opsignals(9) = '1' then
				nextn_latch <= '0';
				ldpc_latch <= '0';
			elsif opsignals(1) = '1' then
				if regf = '1' then
					regrd2_latch <= '0';
				else
					dbfaout_latch <= '0';
				end if;
				ramin_latch <= '0';
				ramrd_latch <= '1';
			elsif opsignals(0) = '1' then
				if regf = '1' then
					regrd2_latch <= '0';
				else
					dbfaout_latch <= '0';
				end if;
				ramin_latch <= '0';
				regrd1_latch <= '1';
			elsif opsignals(7) = '1' then
				enled_latch <= '0';
				regrd1_latch <= '0';
				dbfaout_latch <= '0';
			elsif opsignals(10) = '1' then
				regwt_latch <= '0';
				enuart_latch <= '0';
			elsif opsignals(11) = '1' then
				uart_reset_latch <= '0';
			else null;
			end if;
			if opsignals(5) = '1' or opsignals(7) = '1' or opsignals(10) = '1' or opsignals(11) = '1' then
				next_state <= t1;
			elsif opsignals(2) = '1' or (opsignals(9) = '1' and zf = '0') then
				next_state <= t2;
			else 
				next_state <= t13;
			end if;
		when t13 =>
			if opsignals(4) = '1' or opsignals(1) = '1' then
				regwt_latch <= '1';
			elsif opsignals(3) = '1' then
				enalu_latch <= '1';
			elsif opsignals(0) = '1' then
				ramwt_latch <= '1';
			else null;
			end if;
			next_state <= t14;
		when t14 =>
			if opsignals(3) = '1' then
				if regf = '1' then
					regrd2_latch <= '0';
				else 
					dbfaout_latch <= '0';
				end if;
				enalu_latch <= '0';
				dbfbout_latch <= '1';
			elsif opsignals(4) = '1' then
				dbfbout_latch <= '0';
				regwt_latch <= '0';
			elsif opsignals(1) = '1' then
				ramrd_latch <= '0';
				regwt_latch <= '0';
			elsif opsignals(0) = '1' then
				ramwt_latch <= '0';
				regrd1_latch <= '0';
			else null;
			end if;
			if opsignals(3) = '1' then
				next_state <= t15;
			else
				next_state <= t1;
			end if;
		when t15 =>
			regwt_latch <= '1';
			next_state <= t16;
		when t16 =>
			dbfbout_latch <= '0';
			regwt_latch <= '0';
			next_state <= t1;
		when t17 => 
			if opsignals(10) = '1' and r_ready = '1' then
				enuart_latch <= '1';
				uart_reset_latch <= '0';
				next_state <= t11;
			elsif opsignals(11) = '1' and txd_done = '1' then
				next_state <= t12;
			else
				if opsignals(11) = '1' then
					if regf = '1' then
						regrd1_latch <= '0';
					else	
						dbfaout_latch <= '0';
					end if;
					txd_cmd_latch <= '1';
				end if;
				next_state <= t17;
			end if;
		when t18 =>
			if counter = 999900 then 
				counter <= 0;
				next_state <= t1;
			else 
				counter <= counter + 1;
				next_state <= t18;
			end if;
		end case;
		current_state <= next_state;
		end if;
	end process;
	rstpc <= rstpc_latch;
	nextn <= nextn_latch;
	ldpc <= ldpc_latch;
	enpcout <= enpcout_latch;
	enirin <= enirin_latch;
	enalu <= enalu_latch;
	dbfaout <= dbfaout_latch;
	dbfbin <= dbfbin_latch;
	dbfbout <= dbfbout_latch;
	regrd1 <= regrd1_latch;
	regrd2 <= regrd2_latch;
	regwt <= regwt_latch;
	enrom <= enrom_latch;
	ramin <= ramin_latch;
	ramrd <= ramrd_latch;
	ramwt <= ramwt_latch;
	romin <= romin_latch;
	enled <= enled_latch;
	uart_reset <= uart_reset_latch;
	txd_cmd <= txd_cmd_latch;
	enuart <= enuart_latch;
end behave;