library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
package computer_components is
	
	component clk_divider
	port(
		clk_in: in std_logic;
		clk_out: out std_logic;
		clk_led: out std_logic
	);
	end component;
	
	component data_bus
	port(
		bus_data_in: in std_logic_vector(7 downto 0);
		bus_data_out: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component ram_new
	port(
		ramin, ramrd, ramwt: in std_logic;
		ram_address: in std_logic_vector(7 downto 0);
		ram_data_in: in std_logic_vector(7 downto 0);
		ram_data_out: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component rom_new
	port(
		enrom, romin, rom_clk: in std_logic;
		rom_address: in std_logic_vector(7 downto 0);
		rom_data: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component ir
	port(
		ir_enirin: in std_logic;
		ir_data: in std_logic_vector (7 downto 0);
		ir_regf: out std_logic;
		ir_opcode: out std_logic_vector (4 downto 0);
		ir_grcode: out std_logic_vector (5 downto 0);
		ir_address_data: out std_logic_vector (7 downto 0)
	);
	end component;
	
	component irdecoder
	port(
		ird_opcode: in std_logic_vector(4 downto 0);
		ird_opsignals: out std_logic_vector(11 downto 0)
		-- opsignals[9:0]: jnz, dly, prt, hlt, mov, so, do, jmp, rdm, wtm
	);
	end component;
	
	component pc
	port(
		pc_enpcout, pc_nextn, pc_rst, pc_ldpc: in std_logic;
		pc_ir_addr: in std_logic_vector(7 downto 0);
		pc_pc_addr: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component alu
	port(
		alu_enalu: in std_logic;
		alu_dst, alu_src: in std_logic_vector(7 downto 0); --src comes from dbufferb, dst comes from bus
		alu_opcode: in std_logic_vector(4 downto 0);
		alu_result: out std_logic_vector(7 downto 0);
		alu_zf: out std_logic
	);
	end component;
	
	component dbuffera
	port(
		dbfa_dbfaout: in std_logic;
		dbfa_data_in: in std_logic_vector(7 downto 0);
		dbfa_data_out: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component dbufferb
	port(
		dbfb_dbfbin, dbfb_dbfbout, dbfb_from_alu: in std_logic;
		dbfb_data_in: in std_logic_vector(7 downto 0);
		dbfb_data_out: out std_logic_vector(7 downto 0);
		dbfb_data_from_alu: in std_logic_vector(7 downto 0);
		dbfb_data_to_alu: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component grctrl
	port(
		grc_regrd1, grc_regrd2, grc_regwt: in std_logic;
		grc_grcode: in std_logic_vector(5 downto 0);
		grc_grrd, grc_grwt: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component gr
	port(
		gr_grrd, gr_grwt: in std_logic_vector(3 downto 0);
		gr_data_in: in std_logic_vector(7 downto 0);
		gr_data_out: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component led_encoder
	port(
		led_clk, led_enled: in std_logic;
		led_data: in std_logic_vector(7 downto 0);
		led_sel: out std_logic_vector(5 downto 0);
		led_dig: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component statectrl
	port(
		clk: in std_logic;
		regf: in std_logic; --from ir
		zf: in std_logic;
		opsignals: in std_logic_vector(11 downto 0);
		--from irdecoder opsignals[9:0]: jnz, dly, prt, hlt, mov, so, do, jmp, rdm, wtm
		nextn, rstpc, ldpc, enpcout: out std_logic;  --control pc
		enirin: out std_logic;								--control ir
		enalu: out std_logic;								--control alu
		dbfaout: out std_logic;								--control dbuffera
		dbfbin, dbfbout: out std_logic;					--control dbufferb
		regrd1, regrd2, regwt: out std_logic;			--control grctrl
		enrom, romin: out std_logic;						--control rom
		ramin, ramrd, ramwt: out std_logic;				--control ram
		enled: out std_logic									--control ledencoder
	);
	end component;
	
end computer_components;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.computer_components.all;
entity computer_8bits is
	port(
		--nodes for debug
		--co_alu_src, co_alu_result: inout std_logic_vector(7 downto 0);
		--data: out std_logic_vector(7 downto 0);
		--grcode: out std_logic_vector(5 downto 0);
		--zf: out std_logic;
		--nodes for operation
		clk_input: in std_logic;
		sel: out std_logic_vector(5 downto 0);
		dig: out std_logic_vector(7 downto 0)
	);
end entity computer_8bits;
architecture behave of computer_8bits is
signal co_grrd, co_grwt: std_logic_vector(3 downto 0);
signal co_opcode: std_logic_vector(4 downto 0);
signal co_grcode: std_logic_vector(5 downto 0);
signal data_latch, data_in, data_out, co_address_data, co_alu_src, co_alu_result: std_logic_vector(7 downto 0);
signal grcode_latch: std_logic_vector(5 downto 0);
signal co_opsignals: std_logic_vector(11 downto 0);
signal co_clk, co_ramin, co_ramrd, co_ramwt, co_romin, 
co_enrom, co_enirin, co_regf, co_enpcout, co_nextn, 
co_ldpc, co_pc_rst, co_enalu, co_dbfaout, co_dbfbin,
co_dbfbout, co_regrd1, co_regrd2, co_regwt, co_enled, 
co_led_clk, co_zf, zf_latch: std_logic;
begin
	U1: clk_divider port map(clk_in=>clk_input, clk_out=>co_clk, clk_led=>co_led_clk);
	U2: data_bus port map(bus_data_in=>data_out, bus_data_out=>data_in);
	U3: ram_new port map(ramin=>co_ramin, ramrd=>co_ramrd, ramwt=>co_ramwt,
		ram_address=>data_in, ram_data_in=>data_in, ram_data_out=>data_out);
	U4: rom_new port map(romin=>co_romin, enrom=>co_enrom, rom_clk=> clk_input, rom_address=>data_in,
		rom_data=>data_out);
	U5: ir port map(ir_enirin=>co_enirin, ir_data=>data_in, ir_regf=>co_regf,
		ir_opcode=>co_opcode, ir_grcode=>co_grcode, ir_address_data=>co_address_data);
	U6: irdecoder port map(ird_opcode=>co_opcode, ird_opsignals=>co_opsignals);
	U7: pc port map(pc_enpcout=>co_enpcout, pc_nextn=>co_nextn, pc_ldpc=>co_ldpc,
		pc_rst=>co_pc_rst, pc_ir_addr=>co_address_data, pc_pc_addr=>data_out);
	U8: alu port map(alu_enalu=>co_enalu, alu_dst=>data_in, alu_src=>co_alu_src,
		alu_opcode=>co_opcode, alu_result=>co_alu_result, alu_zf=>co_zf);
	U9: dbuffera port map(dbfa_dbfaout=>co_dbfaout, dbfa_data_in=>co_address_data,
		dbfa_data_out=>data_out);
	U10: dbufferb port map(dbfb_dbfbin=>co_dbfbin, dbfb_dbfbout=>co_dbfbout, 
		dbfb_from_alu=>co_enalu, dbfb_data_in=>data_in, dbfb_data_out=>data_out, 
		dbfb_data_to_alu=>co_alu_src, dbfb_data_from_alu=>co_alu_result);
	U11: grctrl port map(grc_regrd1=>co_regrd1, grc_regrd2=>co_regrd2, 
		grc_regwt=>co_regwt, grc_grcode=>co_grcode, grc_grrd=>co_grrd, grc_grwt=>co_grwt);
	U12: gr port map(gr_grrd=>co_grrd, gr_grwt=>co_grwt, gr_data_in=>data_in,
		gr_data_out=>data_out);
	U13: led_encoder port map(led_clk=>co_led_clk, led_enled=>co_enled, led_data=>data_in,
		led_sel=>sel, led_dig=>dig);
	U14: statectrl port map(clk=>co_clk, regf=>co_regf, opsignals=>co_opsignals, 
		nextn=>co_nextn, rstpc=>co_pc_rst, ldpc=>co_ldpc, enpcout=>co_enpcout, enirin=>co_enirin,
		enalu=>co_enalu, dbfaout=>co_dbfaout, dbfbin=>co_dbfbin, dbfbout=>co_dbfbout,
		regrd1=>co_regrd1, regrd2=>co_regrd2, regwt=>co_regwt, enrom=>co_enrom, romin=>co_romin,
		ramin=>co_ramin, ramrd=>co_ramrd, ramwt=>co_ramwt, enled=>co_enled, zf=>co_zf);
--	process(data_out)
--	begin
--		data_latch <= data_out;
--	end process;
--	process(co_grcode)
--	begin
--		grcode_latch <= co_grcode;
--	end process;
--	data <= data_latch;
--	grcode <= grcode_latch;
--	process(co_zf)
--	begin
--		zf_latch <= co_zf;
--	end process;
--	zf <= zf_latch;
end behave;
