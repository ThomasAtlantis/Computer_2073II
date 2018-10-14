-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "10/14/2018 23:08:27"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	computer_8bits IS
    PORT (
	clk_input : IN std_logic;
	sel : OUT std_logic_vector(5 DOWNTO 0);
	dig : OUT std_logic_vector(7 DOWNTO 0);
	rxd : IN std_logic;
	txd : OUT std_logic
	);
END computer_8bits;

-- Design Ports Information
-- sel[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_input	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF computer_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_input : std_logic;
SIGNAL ww_sel : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rxd : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U1|clk_led~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_inst|inst|bclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U14|enled_latch~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_input~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U10|data_latch[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_inst|inst1|r_ready~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[3]~output_o\ : std_logic;
SIGNAL \sel[4]~output_o\ : std_logic;
SIGNAL \sel[5]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[5]~output_o\ : std_logic;
SIGNAL \dig[6]~output_o\ : std_logic;
SIGNAL \dig[7]~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \clk_input~input_o\ : std_logic;
SIGNAL \clk_input~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|counter[0]~51_combout\ : std_logic;
SIGNAL \U1|counter[1]~17_combout\ : std_logic;
SIGNAL \U1|counter[1]~18\ : std_logic;
SIGNAL \U1|counter[2]~19_combout\ : std_logic;
SIGNAL \U1|counter[2]~20\ : std_logic;
SIGNAL \U1|counter[3]~21_combout\ : std_logic;
SIGNAL \U1|counter[3]~22\ : std_logic;
SIGNAL \U1|counter[4]~23_combout\ : std_logic;
SIGNAL \U1|counter[4]~24\ : std_logic;
SIGNAL \U1|counter[5]~25_combout\ : std_logic;
SIGNAL \U1|counter[5]~26\ : std_logic;
SIGNAL \U1|counter[6]~27_combout\ : std_logic;
SIGNAL \U1|counter[6]~28\ : std_logic;
SIGNAL \U1|counter[7]~29_combout\ : std_logic;
SIGNAL \U1|counter[7]~30\ : std_logic;
SIGNAL \U1|counter[8]~31_combout\ : std_logic;
SIGNAL \U1|counter[8]~32\ : std_logic;
SIGNAL \U1|counter[9]~33_combout\ : std_logic;
SIGNAL \U1|counter[9]~34\ : std_logic;
SIGNAL \U1|counter[10]~35_combout\ : std_logic;
SIGNAL \U1|counter[10]~36\ : std_logic;
SIGNAL \U1|counter[11]~37_combout\ : std_logic;
SIGNAL \U1|counter[11]~38\ : std_logic;
SIGNAL \U1|counter[12]~39_combout\ : std_logic;
SIGNAL \U1|counter[12]~40\ : std_logic;
SIGNAL \U1|counter[13]~41_combout\ : std_logic;
SIGNAL \U1|counter[13]~42\ : std_logic;
SIGNAL \U1|counter[14]~43_combout\ : std_logic;
SIGNAL \U1|counter[14]~44\ : std_logic;
SIGNAL \U1|counter[15]~45_combout\ : std_logic;
SIGNAL \U1|counter[15]~46\ : std_logic;
SIGNAL \U1|counter[16]~47_combout\ : std_logic;
SIGNAL \U1|counter[16]~48\ : std_logic;
SIGNAL \U1|counter[17]~49_combout\ : std_logic;
SIGNAL \U1|clk_led~feeder_combout\ : std_logic;
SIGNAL \U1|clk_led~q\ : std_logic;
SIGNAL \U1|clk_led~clkctrl_outclk\ : std_logic;
SIGNAL \U13|current_led_sel[0]~0_combout\ : std_logic;
SIGNAL \U13|current_led_sel[1]~feeder_combout\ : std_logic;
SIGNAL \U13|Mux9~0_combout\ : std_logic;
SIGNAL \U13|led_sel[1]~0_combout\ : std_logic;
SIGNAL \U13|led_sel[2]~1_combout\ : std_logic;
SIGNAL \U1|clk_out~feeder_combout\ : std_logic;
SIGNAL \U1|clk_out~q\ : std_logic;
SIGNAL \U1|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \uart_inst|inst|cnt[0]~32_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[0]~33\ : std_logic;
SIGNAL \uart_inst|inst|cnt[1]~34_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[1]~35\ : std_logic;
SIGNAL \uart_inst|inst|cnt[2]~36_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[2]~37\ : std_logic;
SIGNAL \uart_inst|inst|cnt[3]~38_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[3]~39\ : std_logic;
SIGNAL \uart_inst|inst|cnt[4]~40_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[4]~41\ : std_logic;
SIGNAL \uart_inst|inst|cnt[5]~42_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[5]~43\ : std_logic;
SIGNAL \uart_inst|inst|cnt[6]~44_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[6]~45\ : std_logic;
SIGNAL \uart_inst|inst|cnt[7]~46_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[7]~47\ : std_logic;
SIGNAL \uart_inst|inst|cnt[8]~48_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[8]~49\ : std_logic;
SIGNAL \uart_inst|inst|cnt[9]~50_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[9]~51\ : std_logic;
SIGNAL \uart_inst|inst|cnt[10]~52_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[10]~53\ : std_logic;
SIGNAL \uart_inst|inst|cnt[11]~54_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[11]~55\ : std_logic;
SIGNAL \uart_inst|inst|cnt[12]~56_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[12]~57\ : std_logic;
SIGNAL \uart_inst|inst|cnt[13]~58_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[13]~59\ : std_logic;
SIGNAL \uart_inst|inst|cnt[14]~60_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[14]~61\ : std_logic;
SIGNAL \uart_inst|inst|cnt[15]~62_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[15]~63\ : std_logic;
SIGNAL \uart_inst|inst|cnt[16]~64_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[16]~65\ : std_logic;
SIGNAL \uart_inst|inst|cnt[17]~66_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[17]~67\ : std_logic;
SIGNAL \uart_inst|inst|cnt[18]~68_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[18]~69\ : std_logic;
SIGNAL \uart_inst|inst|cnt[19]~70_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[19]~71\ : std_logic;
SIGNAL \uart_inst|inst|cnt[20]~72_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[20]~73\ : std_logic;
SIGNAL \uart_inst|inst|cnt[21]~74_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[21]~75\ : std_logic;
SIGNAL \uart_inst|inst|cnt[22]~76_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[22]~77\ : std_logic;
SIGNAL \uart_inst|inst|cnt[23]~78_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[23]~79\ : std_logic;
SIGNAL \uart_inst|inst|cnt[24]~80_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[24]~81\ : std_logic;
SIGNAL \uart_inst|inst|cnt[25]~82_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[25]~83\ : std_logic;
SIGNAL \uart_inst|inst|cnt[26]~84_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[26]~85\ : std_logic;
SIGNAL \uart_inst|inst|cnt[27]~86_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[27]~87\ : std_logic;
SIGNAL \uart_inst|inst|cnt[28]~88_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[28]~89\ : std_logic;
SIGNAL \uart_inst|inst|cnt[29]~90_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[29]~91\ : std_logic;
SIGNAL \uart_inst|inst|cnt[30]~92_combout\ : std_logic;
SIGNAL \uart_inst|inst|cnt[30]~93\ : std_logic;
SIGNAL \uart_inst|inst|cnt[31]~94_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~7_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~5_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~4_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~6_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~8_combout\ : std_logic;
SIGNAL \uart_inst|inst|LessThan0~9_combout\ : std_logic;
SIGNAL \uart_inst|inst|bclk~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst|bclk~q\ : std_logic;
SIGNAL \uart_inst|inst|bclk~clkctrl_outclk\ : std_logic;
SIGNAL \U14|next_state.t_rst_1~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t_rst_1~q\ : std_logic;
SIGNAL \U14|current_state.t_rst_1~q\ : std_logic;
SIGNAL \U14|Selector4~0_combout\ : std_logic;
SIGNAL \U14|Selector4~1_combout\ : std_logic;
SIGNAL \U14|enirin_latch~feeder_combout\ : std_logic;
SIGNAL \U14|enirin_latch~q\ : std_logic;
SIGNAL \U14|Selector15~2_combout\ : std_logic;
SIGNAL \U14|Selector12~2_combout\ : std_logic;
SIGNAL \U14|enrom_latch~q\ : std_logic;
SIGNAL \U14|Selector25~0_combout\ : std_logic;
SIGNAL \U14|Selector25~1_combout\ : std_logic;
SIGNAL \U14|romin_latch~q\ : std_logic;
SIGNAL \U4|inst3|pulse~feeder_combout\ : std_logic;
SIGNAL \U4|inst3|counter[0]~31_combout\ : std_logic;
SIGNAL \U4|inst3|counter[1]~32_combout\ : std_logic;
SIGNAL \U4|inst3|counter[1]~33\ : std_logic;
SIGNAL \U4|inst3|counter[2]~34_combout\ : std_logic;
SIGNAL \U4|inst3|counter[2]~35\ : std_logic;
SIGNAL \U4|inst3|counter[3]~36_combout\ : std_logic;
SIGNAL \U4|inst3|counter[3]~37\ : std_logic;
SIGNAL \U4|inst3|counter[4]~38_combout\ : std_logic;
SIGNAL \U4|inst3|counter[4]~39\ : std_logic;
SIGNAL \U4|inst3|counter[5]~40_combout\ : std_logic;
SIGNAL \U4|inst3|counter[5]~41\ : std_logic;
SIGNAL \U4|inst3|counter[6]~42_combout\ : std_logic;
SIGNAL \U4|inst3|counter[6]~43\ : std_logic;
SIGNAL \U4|inst3|counter[7]~44_combout\ : std_logic;
SIGNAL \U4|inst3|counter[7]~45\ : std_logic;
SIGNAL \U4|inst3|counter[8]~46_combout\ : std_logic;
SIGNAL \U4|inst3|counter[8]~47\ : std_logic;
SIGNAL \U4|inst3|counter[9]~48_combout\ : std_logic;
SIGNAL \U4|inst3|counter[9]~49\ : std_logic;
SIGNAL \U4|inst3|counter[10]~50_combout\ : std_logic;
SIGNAL \U4|inst3|counter[10]~51\ : std_logic;
SIGNAL \U4|inst3|counter[11]~52_combout\ : std_logic;
SIGNAL \U4|inst3|counter[11]~53\ : std_logic;
SIGNAL \U4|inst3|counter[12]~54_combout\ : std_logic;
SIGNAL \U4|inst3|counter[12]~55\ : std_logic;
SIGNAL \U4|inst3|counter[13]~56_combout\ : std_logic;
SIGNAL \U4|inst3|counter[13]~57\ : std_logic;
SIGNAL \U4|inst3|counter[14]~58_combout\ : std_logic;
SIGNAL \U4|inst3|counter[14]~59\ : std_logic;
SIGNAL \U4|inst3|counter[15]~60_combout\ : std_logic;
SIGNAL \U4|inst3|counter[15]~feeder_combout\ : std_logic;
SIGNAL \U4|inst3|counter[15]~61\ : std_logic;
SIGNAL \U4|inst3|counter[16]~62_combout\ : std_logic;
SIGNAL \U4|inst3|counter[16]~63\ : std_logic;
SIGNAL \U4|inst3|counter[17]~64_combout\ : std_logic;
SIGNAL \U4|inst3|counter[17]~65\ : std_logic;
SIGNAL \U4|inst3|counter[18]~66_combout\ : std_logic;
SIGNAL \U4|inst3|counter[18]~67\ : std_logic;
SIGNAL \U4|inst3|counter[19]~68_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~5_combout\ : std_logic;
SIGNAL \U4|inst3|counter[19]~69\ : std_logic;
SIGNAL \U4|inst3|counter[20]~70_combout\ : std_logic;
SIGNAL \U4|inst3|counter[20]~71\ : std_logic;
SIGNAL \U4|inst3|counter[21]~72_combout\ : std_logic;
SIGNAL \U4|inst3|counter[21]~73\ : std_logic;
SIGNAL \U4|inst3|counter[22]~74_combout\ : std_logic;
SIGNAL \U4|inst3|counter[22]~75\ : std_logic;
SIGNAL \U4|inst3|counter[23]~76_combout\ : std_logic;
SIGNAL \U4|inst3|counter[23]~77\ : std_logic;
SIGNAL \U4|inst3|counter[24]~78_combout\ : std_logic;
SIGNAL \U4|inst3|counter[24]~79\ : std_logic;
SIGNAL \U4|inst3|counter[25]~80_combout\ : std_logic;
SIGNAL \U4|inst3|counter[25]~81\ : std_logic;
SIGNAL \U4|inst3|counter[26]~82_combout\ : std_logic;
SIGNAL \U4|inst3|counter[26]~83\ : std_logic;
SIGNAL \U4|inst3|counter[27]~84_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~7_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~6_combout\ : std_logic;
SIGNAL \U4|inst3|counter[27]~85\ : std_logic;
SIGNAL \U4|inst3|counter[28]~86_combout\ : std_logic;
SIGNAL \U4|inst3|counter[28]~87\ : std_logic;
SIGNAL \U4|inst3|counter[29]~88_combout\ : std_logic;
SIGNAL \U4|inst3|counter[29]~89\ : std_logic;
SIGNAL \U4|inst3|counter[30]~90_combout\ : std_logic;
SIGNAL \U4|inst3|counter[30]~91\ : std_logic;
SIGNAL \U4|inst3|counter[31]~92_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~8_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~9_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~4_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~3_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~2_combout\ : std_logic;
SIGNAL \U4|inst3|Equal0~10_combout\ : std_logic;
SIGNAL \U4|inst3|stop_counter~0_combout\ : std_logic;
SIGNAL \U4|inst3|stop_counter~feeder_combout\ : std_logic;
SIGNAL \U4|inst3|stop_counter~q\ : std_logic;
SIGNAL \U4|inst3|pulse~q\ : std_logic;
SIGNAL \U4|inst2~combout\ : std_logic;
SIGNAL \U14|Selector13~3_combout\ : std_logic;
SIGNAL \U14|Selector13~2_combout\ : std_logic;
SIGNAL \U14|ramin_latch~feeder_combout\ : std_logic;
SIGNAL \U14|ramin_latch~q\ : std_logic;
SIGNAL \U3|inst1|address_latch[2]~feeder_combout\ : std_logic;
SIGNAL \U3|inst1|address_latch[3]~feeder_combout\ : std_logic;
SIGNAL \U5|state~0_combout\ : std_logic;
SIGNAL \U5|state~q\ : std_logic;
SIGNAL \U6|Mux0~6_combout\ : std_logic;
SIGNAL \U6|Mux1~4_combout\ : std_logic;
SIGNAL \U6|Mux7~0_combout\ : std_logic;
SIGNAL \U14|Selector5~2_combout\ : std_logic;
SIGNAL \U6|Mux3~0_combout\ : std_logic;
SIGNAL \U6|Mux6~0_combout\ : std_logic;
SIGNAL \U14|Selector17~4_combout\ : std_logic;
SIGNAL \U6|Mux8~1_combout\ : std_logic;
SIGNAL \U14|Selector5~0_combout\ : std_logic;
SIGNAL \U14|Selector5~3_combout\ : std_logic;
SIGNAL \U6|Mux7~1_combout\ : std_logic;
SIGNAL \U14|Selector5~4_combout\ : std_logic;
SIGNAL \U6|Mux1~5_combout\ : std_logic;
SIGNAL \U6|Mux1~6_combout\ : std_logic;
SIGNAL \U14|Selector5~1_combout\ : std_logic;
SIGNAL \U14|Selector5~5_combout\ : std_logic;
SIGNAL \U14|enalu_latch~feeder_combout\ : std_logic;
SIGNAL \U14|enalu_latch~q\ : std_logic;
SIGNAL \U14|Selector7~12_combout\ : std_logic;
SIGNAL \U14|Selector7~11_combout\ : std_logic;
SIGNAL \U14|Selector7~10_combout\ : std_logic;
SIGNAL \U14|dbfbin_latch~q\ : std_logic;
SIGNAL \U3|inst1|address_latch[6]~feeder_combout\ : std_logic;
SIGNAL \U3|inst1|address_latch[7]~feeder_combout\ : std_logic;
SIGNAL \data_out[7]~64_combout\ : std_logic;
SIGNAL \U5|instruction[7]~feeder_combout\ : std_logic;
SIGNAL \U14|Selector3~0_combout\ : std_logic;
SIGNAL \U14|Selector1~0_combout\ : std_logic;
SIGNAL \U14|Selector1~1_combout\ : std_logic;
SIGNAL \U6|Mux9~0_combout\ : std_logic;
SIGNAL \U14|process_0~3_combout\ : std_logic;
SIGNAL \U14|process_0~4_combout\ : std_logic;
SIGNAL \U14|Selector1~2_combout\ : std_logic;
SIGNAL \U14|Selector3~1_combout\ : std_logic;
SIGNAL \U14|enpcout_latch~q\ : std_logic;
SIGNAL \U14|process_0~8_combout\ : std_logic;
SIGNAL \U6|Mux5~0_combout\ : std_logic;
SIGNAL \U14|Selector23~3_combout\ : std_logic;
SIGNAL \U14|Selector23~12_combout\ : std_logic;
SIGNAL \U6|Mux0~4_combout\ : std_logic;
SIGNAL \U6|Mux0~5_combout\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \uart_inst|inst1|count~1_combout\ : std_logic;
SIGNAL \U14|Selector18~4_combout\ : std_logic;
SIGNAL \U14|process_0~9_combout\ : std_logic;
SIGNAL \U14|Selector18~0_combout\ : std_logic;
SIGNAL \U14|Selector18~1_combout\ : std_logic;
SIGNAL \U14|Selector18~2_combout\ : std_logic;
SIGNAL \U14|Selector18~5_combout\ : std_logic;
SIGNAL \U14|uart_reset_latch~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:count[2]~q\ : std_logic;
SIGNAL \uart_inst|inst1|count~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:count[3]~q\ : std_logic;
SIGNAL \uart_inst|inst1|count~3_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:count[0]~q\ : std_logic;
SIGNAL \uart_inst|inst1|count~2_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:count[1]~q\ : std_logic;
SIGNAL \uart_inst|inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[0]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[31]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[0]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[0]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[1]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[1]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[1]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[2]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[2]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[2]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[3]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[3]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[3]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[4]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[4]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[4]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[5]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[5]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[5]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[6]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[6]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[6]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[7]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[7]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[7]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[8]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[8]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[8]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[9]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[9]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[9]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[10]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[10]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[10]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[11]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[11]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[11]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[12]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[12]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[12]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[13]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[13]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[13]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[14]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[14]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[14]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[15]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[15]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[15]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[16]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[16]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[16]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[17]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[17]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[17]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[18]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[18]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[18]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[19]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[19]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[19]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[20]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[20]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[20]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[21]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[21]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[21]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[22]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[22]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[22]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[23]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[23]~q\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~6_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~5_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~3_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~4_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[23]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[24]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[24]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[24]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[25]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[25]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[25]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[26]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[26]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[26]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[27]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[27]~q\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~7_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[27]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[28]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[28]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[28]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[29]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[29]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[29]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[30]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[30]~q\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[30]~2\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[31]~2_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rcnt[31]~q\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~8_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~9_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Equal0~10_combout\ : std_logic;
SIGNAL \uart_inst|inst1|state~8_combout\ : std_logic;
SIGNAL \uart_inst|inst1|state.r_stop~q\ : std_logic;
SIGNAL \uart_inst|inst1|Selector0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|state.r_start~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst1|state.r_start~q\ : std_logic;
SIGNAL \uart_inst|inst1|Selector1~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Selector1~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|state.r_wait~q\ : std_logic;
SIGNAL \uart_inst|inst1|state~9_combout\ : std_logic;
SIGNAL \uart_inst|inst1|state.r_sample~q\ : std_logic;
SIGNAL \uart_inst|inst1|Selector2~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|r_ready~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst1|r_ready~q\ : std_logic;
SIGNAL \uart_inst|inst1|r_ready~clkctrl_outclk\ : std_logic;
SIGNAL \uart_inst|inst8|pulse~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[0]~37_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[1]~31_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[1]~32\ : std_logic;
SIGNAL \uart_inst|inst8|counter[2]~33_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[2]~34\ : std_logic;
SIGNAL \uart_inst|inst8|counter[3]~35_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[3]~36\ : std_logic;
SIGNAL \uart_inst|inst8|counter[4]~38_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[4]~39\ : std_logic;
SIGNAL \uart_inst|inst8|counter[5]~40_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[5]~41\ : std_logic;
SIGNAL \uart_inst|inst8|counter[6]~42_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[6]~43\ : std_logic;
SIGNAL \uart_inst|inst8|counter[7]~44_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[7]~45\ : std_logic;
SIGNAL \uart_inst|inst8|counter[8]~46_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[8]~47\ : std_logic;
SIGNAL \uart_inst|inst8|counter[9]~48_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[9]~49\ : std_logic;
SIGNAL \uart_inst|inst8|counter[10]~50_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[10]~51\ : std_logic;
SIGNAL \uart_inst|inst8|counter[11]~52_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[11]~53\ : std_logic;
SIGNAL \uart_inst|inst8|counter[12]~54_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[12]~55\ : std_logic;
SIGNAL \uart_inst|inst8|counter[13]~56_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[13]~57\ : std_logic;
SIGNAL \uart_inst|inst8|counter[14]~58_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[14]~59\ : std_logic;
SIGNAL \uart_inst|inst8|counter[15]~60_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[15]~61\ : std_logic;
SIGNAL \uart_inst|inst8|counter[16]~62_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[16]~63\ : std_logic;
SIGNAL \uart_inst|inst8|counter[17]~64_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[17]~65\ : std_logic;
SIGNAL \uart_inst|inst8|counter[18]~66_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[18]~67\ : std_logic;
SIGNAL \uart_inst|inst8|counter[19]~68_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[19]~69\ : std_logic;
SIGNAL \uart_inst|inst8|counter[20]~70_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[20]~71\ : std_logic;
SIGNAL \uart_inst|inst8|counter[21]~72_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[21]~73\ : std_logic;
SIGNAL \uart_inst|inst8|counter[22]~74_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[22]~75\ : std_logic;
SIGNAL \uart_inst|inst8|counter[23]~76_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[23]~77\ : std_logic;
SIGNAL \uart_inst|inst8|counter[24]~78_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[24]~79\ : std_logic;
SIGNAL \uart_inst|inst8|counter[25]~80_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[25]~81\ : std_logic;
SIGNAL \uart_inst|inst8|counter[26]~82_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[26]~83\ : std_logic;
SIGNAL \uart_inst|inst8|counter[27]~84_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~8_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~3_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~4_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[27]~85\ : std_logic;
SIGNAL \uart_inst|inst8|counter[28]~86_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[28]~87\ : std_logic;
SIGNAL \uart_inst|inst8|counter[29]~88_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[29]~89\ : std_logic;
SIGNAL \uart_inst|inst8|counter[30]~90_combout\ : std_logic;
SIGNAL \uart_inst|inst8|counter[30]~91\ : std_logic;
SIGNAL \uart_inst|inst8|counter[31]~92_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~9_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~6_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~5_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~7_combout\ : std_logic;
SIGNAL \uart_inst|inst8|Equal0~10_combout\ : std_logic;
SIGNAL \uart_inst|inst8|stop_counter~0_combout\ : std_logic;
SIGNAL \uart_inst|inst8|stop_counter~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst8|stop_counter~q\ : std_logic;
SIGNAL \uart_inst|inst8|pulse~q\ : std_logic;
SIGNAL \U14|process_0~2_combout\ : std_logic;
SIGNAL \U14|Selector23~9_combout\ : std_logic;
SIGNAL \U14|Selector23~10_combout\ : std_logic;
SIGNAL \U14|Selector23~11_combout\ : std_logic;
SIGNAL \U14|next_state.t17~q\ : std_logic;
SIGNAL \U14|current_state.t17~q\ : std_logic;
SIGNAL \U14|Selector16~0_combout\ : std_logic;
SIGNAL \U14|Selector6~4_combout\ : std_logic;
SIGNAL \U14|Selector6~6_combout\ : std_logic;
SIGNAL \U14|Selector6~7_combout\ : std_logic;
SIGNAL \U14|Selector6~5_combout\ : std_logic;
SIGNAL \U14|Selector6~12_combout\ : std_logic;
SIGNAL \U14|Selector6~8_combout\ : std_logic;
SIGNAL \U14|Selector6~2_combout\ : std_logic;
SIGNAL \U14|Selector6~3_combout\ : std_logic;
SIGNAL \U14|Selector6~9_combout\ : std_logic;
SIGNAL \U14|Selector6~10_combout\ : std_logic;
SIGNAL \U14|Selector6~11_combout\ : std_logic;
SIGNAL \U14|dbfaout_latch~q\ : std_logic;
SIGNAL \U14|nextn_latch~0_combout\ : std_logic;
SIGNAL \U14|Selector1~3_combout\ : std_logic;
SIGNAL \U14|next_state.t_rst_2~0_combout\ : std_logic;
SIGNAL \U14|next_state.t_rst_2~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t_rst_2~q\ : std_logic;
SIGNAL \U14|current_state.t_rst_2~q\ : std_logic;
SIGNAL \U14|Selector1~5_combout\ : std_logic;
SIGNAL \U14|ldpc_latch~0_combout\ : std_logic;
SIGNAL \U14|Selector1~4_combout\ : std_logic;
SIGNAL \U14|next_state.t15~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t15~q\ : std_logic;
SIGNAL \U14|current_state.t15~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t15~q\ : std_logic;
SIGNAL \U14|next_state.t16~q\ : std_logic;
SIGNAL \U14|current_state.t16~q\ : std_logic;
SIGNAL \U14|Add0~0_combout\ : std_logic;
SIGNAL \U14|Add0~3\ : std_logic;
SIGNAL \U14|Add0~4_combout\ : std_logic;
SIGNAL \U14|counter~9_combout\ : std_logic;
SIGNAL \U14|Add0~5\ : std_logic;
SIGNAL \U14|Add0~6_combout\ : std_logic;
SIGNAL \U14|counter~8_combout\ : std_logic;
SIGNAL \U14|Add0~7\ : std_logic;
SIGNAL \U14|Add0~8_combout\ : std_logic;
SIGNAL \U14|counter~7_combout\ : std_logic;
SIGNAL \U14|Add0~9\ : std_logic;
SIGNAL \U14|Add0~10_combout\ : std_logic;
SIGNAL \U14|Add0~11\ : std_logic;
SIGNAL \U14|Add0~12_combout\ : std_logic;
SIGNAL \U14|counter~6_combout\ : std_logic;
SIGNAL \U14|Add0~13\ : std_logic;
SIGNAL \U14|Add0~14_combout\ : std_logic;
SIGNAL \U14|counter~5_combout\ : std_logic;
SIGNAL \U14|Add0~15\ : std_logic;
SIGNAL \U14|Add0~16_combout\ : std_logic;
SIGNAL \U14|counter~4_combout\ : std_logic;
SIGNAL \U14|Add0~17\ : std_logic;
SIGNAL \U14|Add0~18_combout\ : std_logic;
SIGNAL \U14|Add0~19\ : std_logic;
SIGNAL \U14|Add0~20_combout\ : std_logic;
SIGNAL \U14|Add0~21\ : std_logic;
SIGNAL \U14|Add0~22_combout\ : std_logic;
SIGNAL \U14|Add0~23\ : std_logic;
SIGNAL \U14|Add0~24_combout\ : std_logic;
SIGNAL \U14|Add0~25\ : std_logic;
SIGNAL \U14|Add0~26_combout\ : std_logic;
SIGNAL \U14|Add0~27\ : std_logic;
SIGNAL \U14|Add0~28_combout\ : std_logic;
SIGNAL \U14|counter~11_combout\ : std_logic;
SIGNAL \U14|Add0~29\ : std_logic;
SIGNAL \U14|Add0~30_combout\ : std_logic;
SIGNAL \U14|Add0~31\ : std_logic;
SIGNAL \U14|Add0~32_combout\ : std_logic;
SIGNAL \U14|counter~0_combout\ : std_logic;
SIGNAL \U14|Add0~33\ : std_logic;
SIGNAL \U14|Add0~34_combout\ : std_logic;
SIGNAL \U14|counter~1_combout\ : std_logic;
SIGNAL \U14|Add0~35\ : std_logic;
SIGNAL \U14|Add0~36_combout\ : std_logic;
SIGNAL \U14|counter~2_combout\ : std_logic;
SIGNAL \U14|Add0~37\ : std_logic;
SIGNAL \U14|Add0~38_combout\ : std_logic;
SIGNAL \U14|counter~3_combout\ : std_logic;
SIGNAL \U14|Equal0~0_combout\ : std_logic;
SIGNAL \U14|counter~10_combout\ : std_logic;
SIGNAL \U14|Add0~1\ : std_logic;
SIGNAL \U14|Add0~2_combout\ : std_logic;
SIGNAL \U14|Equal0~3_combout\ : std_logic;
SIGNAL \U14|Equal0~1_combout\ : std_logic;
SIGNAL \U14|Equal0~4_combout\ : std_logic;
SIGNAL \U14|Equal0~2_combout\ : std_logic;
SIGNAL \U14|Equal0~5_combout\ : std_logic;
SIGNAL \U14|Selector24~0_combout\ : std_logic;
SIGNAL \U14|process_0~12_combout\ : std_logic;
SIGNAL \U14|process_0~10_combout\ : std_logic;
SIGNAL \U6|Mux3~1_combout\ : std_logic;
SIGNAL \U14|Selector24~1_combout\ : std_logic;
SIGNAL \U14|next_state.t18~q\ : std_logic;
SIGNAL \U14|current_state.t18~q\ : std_logic;
SIGNAL \U14|Selector1~6_combout\ : std_logic;
SIGNAL \U14|Selector1~7_combout\ : std_logic;
SIGNAL \U14|Selector1~8_combout\ : std_logic;
SIGNAL \U14|process_0~6_combout\ : std_logic;
SIGNAL \U14|Selector1~9_combout\ : std_logic;
SIGNAL \U14|Selector1~10_combout\ : std_logic;
SIGNAL \U14|Selector1~11_combout\ : std_logic;
SIGNAL \U14|nextn_latch~q\ : std_logic;
SIGNAL \U7|addr_latch[0]~8_combout\ : std_logic;
SIGNAL \U5|instruction[0]~feeder_combout\ : std_logic;
SIGNAL \U14|Selector0~0_combout\ : std_logic;
SIGNAL \U14|rstpc_latch~q\ : std_logic;
SIGNAL \U14|Selector2~4_combout\ : std_logic;
SIGNAL \U14|Selector2~6_combout\ : std_logic;
SIGNAL \U14|Selector2~5_combout\ : std_logic;
SIGNAL \U14|ldpc_latch~feeder_combout\ : std_logic;
SIGNAL \U14|ldpc_latch~q\ : std_logic;
SIGNAL \U7|addr_latch[0]~9\ : std_logic;
SIGNAL \U7|addr_latch[1]~10_combout\ : std_logic;
SIGNAL \U5|instruction[1]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[1]~11\ : std_logic;
SIGNAL \U7|addr_latch[2]~12_combout\ : std_logic;
SIGNAL \U5|instruction[2]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[2]~13\ : std_logic;
SIGNAL \U7|addr_latch[3]~14_combout\ : std_logic;
SIGNAL \U5|instruction[3]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[3]~15\ : std_logic;
SIGNAL \U7|addr_latch[4]~16_combout\ : std_logic;
SIGNAL \U7|addr_latch[4]~17\ : std_logic;
SIGNAL \U7|addr_latch[5]~18_combout\ : std_logic;
SIGNAL \U5|instruction[5]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[5]~19\ : std_logic;
SIGNAL \U7|addr_latch[6]~20_combout\ : std_logic;
SIGNAL \U5|instruction[6]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[6]~21\ : std_logic;
SIGNAL \U7|addr_latch[7]~22_combout\ : std_logic;
SIGNAL \data_out[7]~65_combout\ : std_logic;
SIGNAL \data_out[7]~66_combout\ : std_logic;
SIGNAL \U5|instruction[8]~feeder_combout\ : std_logic;
SIGNAL \U6|Mux10~1_combout\ : std_logic;
SIGNAL \U14|Selector11~4_combout\ : std_logic;
SIGNAL \U14|Selector11~1_combout\ : std_logic;
SIGNAL \U14|regwt_latch~0_combout\ : std_logic;
SIGNAL \U14|Selector11~2_combout\ : std_logic;
SIGNAL \U14|Selector11~0_combout\ : std_logic;
SIGNAL \U14|Selector11~3_combout\ : std_logic;
SIGNAL \U14|Selector11~5_combout\ : std_logic;
SIGNAL \U14|regwt_latch~q\ : std_logic;
SIGNAL \U11|grc_grwt[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U12|gra_latch[7]~feeder_combout\ : std_logic;
SIGNAL \U5|ir_grcode[5]~1_combout\ : std_logic;
SIGNAL \U5|ir_grcode[1]~0_combout\ : std_logic;
SIGNAL \data_out[4]~18_combout\ : std_logic;
SIGNAL \U11|grc_grwt[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U12|grb_latch[7]~feeder_combout\ : std_logic;
SIGNAL \U12|grd_latch[7]~feeder_combout\ : std_logic;
SIGNAL \U11|grc_grwt[2]~clkctrl_outclk\ : std_logic;
SIGNAL \data_out[7]~68_combout\ : std_logic;
SIGNAL \data_out[7]~69_combout\ : std_logic;
SIGNAL \data_out[7]~74_combout\ : std_logic;
SIGNAL \U10|data_latch[7]~8_combout\ : std_logic;
SIGNAL \U10|data_latch[7]~1_combout\ : std_logic;
SIGNAL \U10|data_latch[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~7_combout\ : std_logic;
SIGNAL \U8|Mux1~6_combout\ : std_logic;
SIGNAL \U8|Mux1~2_combout\ : std_logic;
SIGNAL \U8|Add1~1\ : std_logic;
SIGNAL \U8|Add1~3\ : std_logic;
SIGNAL \U8|Add1~5\ : std_logic;
SIGNAL \U8|Add1~7\ : std_logic;
SIGNAL \U8|Add1~9\ : std_logic;
SIGNAL \U8|Add1~11\ : std_logic;
SIGNAL \U8|Add1~12_combout\ : std_logic;
SIGNAL \U8|Mux1~3_combout\ : std_logic;
SIGNAL \data_out[5]~50_combout\ : std_logic;
SIGNAL \data_out[5]~51_combout\ : std_logic;
SIGNAL \data_out[5]~52_combout\ : std_logic;
SIGNAL \U12|grd_latch[5]~feeder_combout\ : std_logic;
SIGNAL \data_out[5]~54_combout\ : std_logic;
SIGNAL \U12|gra_latch[5]~feeder_combout\ : std_logic;
SIGNAL \U12|grb_latch[5]~feeder_combout\ : std_logic;
SIGNAL \data_out[5]~55_combout\ : std_logic;
SIGNAL \U14|Selector17~5_combout\ : std_logic;
SIGNAL \U14|Selector17~6_combout\ : std_logic;
SIGNAL \U14|enuart_latch~q\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[5]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[5]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[5]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[0]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[5]~feeder_combout\ : std_logic;
SIGNAL \data_out[5]~53_combout\ : std_logic;
SIGNAL \data_out[5]~72_combout\ : std_logic;
SIGNAL \U8|Mux0~10_combout\ : std_logic;
SIGNAL \U8|Add1~10_combout\ : std_logic;
SIGNAL \U8|Mux2~2_combout\ : std_logic;
SIGNAL \data_out[4]~43_combout\ : std_logic;
SIGNAL \data_out[4]~44_combout\ : std_logic;
SIGNAL \data_out[4]~45_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[4]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[4]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[4]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[4]~feeder_combout\ : std_logic;
SIGNAL \data_out[4]~46_combout\ : std_logic;
SIGNAL \data_out[4]~71_combout\ : std_logic;
SIGNAL \U8|Mux3~6_combout\ : std_logic;
SIGNAL \U8|result~14_combout\ : std_logic;
SIGNAL \U8|Add1~8_combout\ : std_logic;
SIGNAL \U8|Mux3~3_combout\ : std_logic;
SIGNAL \U8|Mux0~5_combout\ : std_logic;
SIGNAL \U8|Mux5~2_combout\ : std_logic;
SIGNAL \U8|result~10_combout\ : std_logic;
SIGNAL \U8|result~3_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \U8|Mux7~2_combout\ : std_logic;
SIGNAL \U8|Add1~0_combout\ : std_logic;
SIGNAL \U8|Mux7~3_combout\ : std_logic;
SIGNAL \U8|result~1_combout\ : std_logic;
SIGNAL \U8|result~2_combout\ : std_logic;
SIGNAL \U8|Mux7~0_combout\ : std_logic;
SIGNAL \U8|result~0_combout\ : std_logic;
SIGNAL \U8|Equal0~0_combout\ : std_logic;
SIGNAL \U8|Add18~7_combout\ : std_logic;
SIGNAL \U8|divider~1_combout\ : std_logic;
SIGNAL \U8|divider~2_combout\ : std_logic;
SIGNAL \U8|divider~0_combout\ : std_logic;
SIGNAL \U8|LessThan0~0_combout\ : std_logic;
SIGNAL \U8|LessThan0~1_combout\ : std_logic;
SIGNAL \U8|LessThan0~2_combout\ : std_logic;
SIGNAL \U8|Add8~2_combout\ : std_logic;
SIGNAL \U8|Add8~4_combout\ : std_logic;
SIGNAL \U8|Add18~4_combout\ : std_logic;
SIGNAL \U8|Add11~0_combout\ : std_logic;
SIGNAL \U8|Add8~3\ : std_logic;
SIGNAL \U8|Add8~6\ : std_logic;
SIGNAL \U8|Add8~8\ : std_logic;
SIGNAL \U8|Add8~9_combout\ : std_logic;
SIGNAL \U8|Add8~13_combout\ : std_logic;
SIGNAL \U8|Add8~7_combout\ : std_logic;
SIGNAL \U8|LessThan1~0_combout\ : std_logic;
SIGNAL \U8|Add8~5_combout\ : std_logic;
SIGNAL \U8|Add8~11_combout\ : std_logic;
SIGNAL \U8|LessThan1~1_combout\ : std_logic;
SIGNAL \U8|LessThan1~2_combout\ : std_logic;
SIGNAL \U8|LessThan1~3_combout\ : std_logic;
SIGNAL \U8|LessThan1~4_combout\ : std_logic;
SIGNAL \U8|divided~0_combout\ : std_logic;
SIGNAL \U8|Add14~0_combout\ : std_logic;
SIGNAL \U8|Add11~1\ : std_logic;
SIGNAL \U8|Add11~2_combout\ : std_logic;
SIGNAL \U8|divided~1_combout\ : std_logic;
SIGNAL \U8|LessThan2~0_combout\ : std_logic;
SIGNAL \U8|Add8~12_combout\ : std_logic;
SIGNAL \U8|Add11~3\ : std_logic;
SIGNAL \U8|Add11~4_combout\ : std_logic;
SIGNAL \U8|Add11~5\ : std_logic;
SIGNAL \U8|Add11~6_combout\ : std_logic;
SIGNAL \U8|LessThan2~1_combout\ : std_logic;
SIGNAL \U8|div8~2_combout\ : std_logic;
SIGNAL \U8|Add18~5_combout\ : std_logic;
SIGNAL \U8|div8~6_combout\ : std_logic;
SIGNAL \U8|Add18~6_combout\ : std_logic;
SIGNAL \U8|Add18~8_combout\ : std_logic;
SIGNAL \U8|Add14~1\ : std_logic;
SIGNAL \U8|Add14~2_combout\ : std_logic;
SIGNAL \U8|LessThan2~2_combout\ : std_logic;
SIGNAL \U8|divided~3_combout\ : std_logic;
SIGNAL \U8|Add14~3\ : std_logic;
SIGNAL \U8|Add14~5\ : std_logic;
SIGNAL \U8|Add14~6_combout\ : std_logic;
SIGNAL \U8|LessThan3~1_combout\ : std_logic;
SIGNAL \U8|Add14~4_combout\ : std_logic;
SIGNAL \U8|LessThan3~0_combout\ : std_logic;
SIGNAL \U8|Add18~9_combout\ : std_logic;
SIGNAL \U8|divided~2_combout\ : std_logic;
SIGNAL \U8|Add17~0_combout\ : std_logic;
SIGNAL \U8|Add18~10_combout\ : std_logic;
SIGNAL \U8|Mux7~1_combout\ : std_logic;
SIGNAL \U8|Mux7~4_combout\ : std_logic;
SIGNAL \U8|Mux7~5_combout\ : std_logic;
SIGNAL \U8|Mux7~6_combout\ : std_logic;
SIGNAL \U10|data_latch[0]~0_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~0_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \U8|Mux6~2_combout\ : std_logic;
SIGNAL \U8|Mux0~4_combout\ : std_logic;
SIGNAL \U8|Add1~2_combout\ : std_logic;
SIGNAL \U8|Mux6~3_combout\ : std_logic;
SIGNAL \U8|result~4_combout\ : std_logic;
SIGNAL \U8|Add5~4_combout\ : std_logic;
SIGNAL \U8|Mux0~1_combout\ : std_logic;
SIGNAL \U8|Mux0~2_combout\ : std_logic;
SIGNAL \U8|Mux0~3_combout\ : std_logic;
SIGNAL \U8|Mux6~0_combout\ : std_logic;
SIGNAL \U8|Mux0~0_combout\ : std_logic;
SIGNAL \U8|Add18~12_cout\ : std_logic;
SIGNAL \U8|Add18~13_combout\ : std_logic;
SIGNAL \U8|Add18~15_combout\ : std_logic;
SIGNAL \U8|Add18~16_combout\ : std_logic;
SIGNAL \U8|Add18~17_combout\ : std_logic;
SIGNAL \U8|divided~4_combout\ : std_logic;
SIGNAL \U8|Add17~1\ : std_logic;
SIGNAL \U8|Add17~2_combout\ : std_logic;
SIGNAL \U8|Add18~18_combout\ : std_logic;
SIGNAL \U8|Mux6~1_combout\ : std_logic;
SIGNAL \U8|Mux6~4_combout\ : std_logic;
SIGNAL \U8|Mux6~5_combout\ : std_logic;
SIGNAL \U8|Mux6~6_combout\ : std_logic;
SIGNAL \U10|data_latch[1]~2_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~1_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \U8|Add1~4_combout\ : std_logic;
SIGNAL \U8|Mux5~3_combout\ : std_logic;
SIGNAL \U8|Mux5~4_combout\ : std_logic;
SIGNAL \U8|Mux5~5_combout\ : std_logic;
SIGNAL \U8|Mux5~6_combout\ : std_logic;
SIGNAL \U8|result~5_combout\ : std_logic;
SIGNAL \U8|result~9_combout\ : std_logic;
SIGNAL \U8|result~6_combout\ : std_logic;
SIGNAL \U8|Add5~5\ : std_logic;
SIGNAL \U8|Add5~6_combout\ : std_logic;
SIGNAL \U8|Add5~16_combout\ : std_logic;
SIGNAL \U8|Add6~4_combout\ : std_logic;
SIGNAL \U8|result~7_combout\ : std_logic;
SIGNAL \U8|result~8_combout\ : std_logic;
SIGNAL \U8|Mux5~0_combout\ : std_logic;
SIGNAL \U8|Add18~14\ : std_logic;
SIGNAL \U8|Add18~19_combout\ : std_logic;
SIGNAL \U8|Add18~21_combout\ : std_logic;
SIGNAL \U8|Add18~45_combout\ : std_logic;
SIGNAL \U8|Equal0~1_combout\ : std_logic;
SIGNAL \U8|Add18~22_combout\ : std_logic;
SIGNAL \U8|Add18~23_combout\ : std_logic;
SIGNAL \U8|Add17~3\ : std_logic;
SIGNAL \U8|Add17~4_combout\ : std_logic;
SIGNAL \U8|Add18~24_combout\ : std_logic;
SIGNAL \U8|Mux5~1_combout\ : std_logic;
SIGNAL \U8|Mux5~7_combout\ : std_logic;
SIGNAL \U10|data_latch[2]~3_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~2_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \U8|Add1~6_combout\ : std_logic;
SIGNAL \U8|Mux4~0_combout\ : std_logic;
SIGNAL \U8|Mux4~1_combout\ : std_logic;
SIGNAL \U8|Add18~20\ : std_logic;
SIGNAL \U8|Add18~25_combout\ : std_logic;
SIGNAL \U8|Add18~27_combout\ : std_logic;
SIGNAL \U8|Mux0~7_combout\ : std_logic;
SIGNAL \U8|Mux0~6_combout\ : std_logic;
SIGNAL \U8|result~11_combout\ : std_logic;
SIGNAL \U8|Add5~7\ : std_logic;
SIGNAL \U8|Add5~8_combout\ : std_logic;
SIGNAL \U8|Add5~17_combout\ : std_logic;
SIGNAL \U8|Add6~5\ : std_logic;
SIGNAL \U8|Add6~6_combout\ : std_logic;
SIGNAL \U8|Add6~8_combout\ : std_logic;
SIGNAL \U8|Add7~0_combout\ : std_logic;
SIGNAL \U8|Add7~2_combout\ : std_logic;
SIGNAL \U8|Add7~3_combout\ : std_logic;
SIGNAL \U8|Mux4~2_combout\ : std_logic;
SIGNAL \U8|Mux4~3_combout\ : std_logic;
SIGNAL \U8|Add18~28_combout\ : std_logic;
SIGNAL \U8|Mux4~4_combout\ : std_logic;
SIGNAL \U8|Mux4~5_combout\ : std_logic;
SIGNAL \U8|Mux4~6_combout\ : std_logic;
SIGNAL \U8|Mux4~7_combout\ : std_logic;
SIGNAL \U8|Add17~5\ : std_logic;
SIGNAL \U8|Add17~6_combout\ : std_logic;
SIGNAL \U8|Mux4~8_combout\ : std_logic;
SIGNAL \U8|Mux4~9_combout\ : std_logic;
SIGNAL \U8|Mux4~10_combout\ : std_logic;
SIGNAL \U8|Mux4~11_combout\ : std_logic;
SIGNAL \U10|data_latch[3]~4_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~3_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \U8|Mux3~4_combout\ : std_logic;
SIGNAL \U8|Mux3~2_combout\ : std_logic;
SIGNAL \U8|Mux3~5_combout\ : std_logic;
SIGNAL \U8|result~12_combout\ : std_logic;
SIGNAL \U8|Add18~26\ : std_logic;
SIGNAL \U8|Add18~29_combout\ : std_logic;
SIGNAL \U8|Add18~31_combout\ : std_logic;
SIGNAL \U8|Add18~32_combout\ : std_logic;
SIGNAL \U8|Add18~33_combout\ : std_logic;
SIGNAL \U8|div8~5_combout\ : std_logic;
SIGNAL \U8|div8~3_combout\ : std_logic;
SIGNAL \U8|div8~4_combout\ : std_logic;
SIGNAL \U8|Add18~34_combout\ : std_logic;
SIGNAL \U8|result~13_combout\ : std_logic;
SIGNAL \U8|Add5~9\ : std_logic;
SIGNAL \U8|Add5~10_combout\ : std_logic;
SIGNAL \U8|Add5~12_combout\ : std_logic;
SIGNAL \U8|Add6~7\ : std_logic;
SIGNAL \U8|Add6~9_combout\ : std_logic;
SIGNAL \U8|Add6~16_combout\ : std_logic;
SIGNAL \U8|Add7~1\ : std_logic;
SIGNAL \U8|Add7~4_combout\ : std_logic;
SIGNAL \U8|Add7~6_combout\ : std_logic;
SIGNAL \U8|Add7~7_combout\ : std_logic;
SIGNAL \U8|Mux3~0_combout\ : std_logic;
SIGNAL \U8|Mux3~1_combout\ : std_logic;
SIGNAL \U8|Mux3~7_combout\ : std_logic;
SIGNAL \U10|data_latch[4]~5_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~4_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \U8|Mux2~3_combout\ : std_logic;
SIGNAL \U8|Mux0~8_combout\ : std_logic;
SIGNAL \U8|Add18~35_combout\ : std_logic;
SIGNAL \U8|Add18~47_combout\ : std_logic;
SIGNAL \U8|Add18~30\ : std_logic;
SIGNAL \U8|Add18~36_combout\ : std_logic;
SIGNAL \U8|Add18~48_combout\ : std_logic;
SIGNAL \U8|Mux0~9_combout\ : std_logic;
SIGNAL \U8|Add5~11\ : std_logic;
SIGNAL \U8|Add5~13_combout\ : std_logic;
SIGNAL \U8|Add5~15_combout\ : std_logic;
SIGNAL \U8|Add6~10\ : std_logic;
SIGNAL \U8|Add6~11_combout\ : std_logic;
SIGNAL \U8|Add6~17_combout\ : std_logic;
SIGNAL \U8|Add7~5\ : std_logic;
SIGNAL \U8|Add7~8_combout\ : std_logic;
SIGNAL \U8|Add7~10_combout\ : std_logic;
SIGNAL \U8|Add7~11_combout\ : std_logic;
SIGNAL \U8|Mux2~0_combout\ : std_logic;
SIGNAL \U8|Mux2~1_combout\ : std_logic;
SIGNAL \U8|Mux2~4_combout\ : std_logic;
SIGNAL \U8|Mux2~5_combout\ : std_logic;
SIGNAL \U8|Mux2~6_combout\ : std_logic;
SIGNAL \U10|data_latch[5]~6_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~5_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \U8|result~17_combout\ : std_logic;
SIGNAL \U8|Mux1~4_combout\ : std_logic;
SIGNAL \U8|Mux1~5_combout\ : std_logic;
SIGNAL \U8|Add18~37\ : std_logic;
SIGNAL \U8|Add18~38_combout\ : std_logic;
SIGNAL \U8|Add18~46_combout\ : std_logic;
SIGNAL \U8|Add18~40_combout\ : std_logic;
SIGNAL \U8|Add18~41_combout\ : std_logic;
SIGNAL \U8|result~15_combout\ : std_logic;
SIGNAL \U8|result~16_combout\ : std_logic;
SIGNAL \U8|Add6~12\ : std_logic;
SIGNAL \U8|Add6~13_combout\ : std_logic;
SIGNAL \U8|Add6~15_combout\ : std_logic;
SIGNAL \U8|Add7~9\ : std_logic;
SIGNAL \U8|Add7~12_combout\ : std_logic;
SIGNAL \U8|Add7~14_combout\ : std_logic;
SIGNAL \U8|Add7~15_combout\ : std_logic;
SIGNAL \U8|Mux1~0_combout\ : std_logic;
SIGNAL \U8|Mux1~1_combout\ : std_logic;
SIGNAL \U8|Mux1~7_combout\ : std_logic;
SIGNAL \U12|grc_latch[6]~feeder_combout\ : std_logic;
SIGNAL \U12|gra_latch[6]~feeder_combout\ : std_logic;
SIGNAL \U12|grd_latch[6]~feeder_combout\ : std_logic;
SIGNAL \data_out[6]~61_combout\ : std_logic;
SIGNAL \data_out[6]~62_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[6]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[6]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[6]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[6]~feeder_combout\ : std_logic;
SIGNAL \data_out[6]~60_combout\ : std_logic;
SIGNAL \data_out[6]~73_combout\ : std_logic;
SIGNAL \U10|data_latch[6]~7_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~6_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \U8|Add1~13\ : std_logic;
SIGNAL \U8|Add1~14_combout\ : std_logic;
SIGNAL \U8|Mux0~16_combout\ : std_logic;
SIGNAL \U8|Mux0~17_combout\ : std_logic;
SIGNAL \U8|Mux0~18_combout\ : std_logic;
SIGNAL \U8|Mux0~13_combout\ : std_logic;
SIGNAL \U8|Mux0~14_combout\ : std_logic;
SIGNAL \U8|Add18~42_combout\ : std_logic;
SIGNAL \U8|Add18~39\ : std_logic;
SIGNAL \U8|Add18~43_combout\ : std_logic;
SIGNAL \U8|Add7~13\ : std_logic;
SIGNAL \U8|Add7~16_combout\ : std_logic;
SIGNAL \U8|Mux0~11_combout\ : std_logic;
SIGNAL \U8|Mux0~12_combout\ : std_logic;
SIGNAL \U8|Mux0~15_combout\ : std_logic;
SIGNAL \U8|Mux0~19_combout\ : std_logic;
SIGNAL \U8|Mux0~20_combout\ : std_logic;
SIGNAL \U8|Mux0~21_combout\ : std_logic;
SIGNAL \U8|Equal16~0_combout\ : std_logic;
SIGNAL \U8|Equal16~1_combout\ : std_logic;
SIGNAL \U8|Equal16~2_combout\ : std_logic;
SIGNAL \U8|process_1~0_combout\ : std_logic;
SIGNAL \U8|process_1~1_combout\ : std_logic;
SIGNAL \U8|zero_flag_latch~combout\ : std_logic;
SIGNAL \U14|process_0~5_combout\ : std_logic;
SIGNAL \U14|Selector18~3_combout\ : std_logic;
SIGNAL \U14|Selector9~6_combout\ : std_logic;
SIGNAL \U14|Selector9~0_combout\ : std_logic;
SIGNAL \U14|Selector15~0_combout\ : std_logic;
SIGNAL \U14|Selector9~2_combout\ : std_logic;
SIGNAL \U14|Selector9~3_combout\ : std_logic;
SIGNAL \U14|Selector9~1_combout\ : std_logic;
SIGNAL \U14|Selector9~4_combout\ : std_logic;
SIGNAL \U14|Selector9~5_combout\ : std_logic;
SIGNAL \U14|Selector9~7_combout\ : std_logic;
SIGNAL \U14|regrd1_latch~q\ : std_logic;
SIGNAL \data_out[4]~16_combout\ : std_logic;
SIGNAL \data_out[4]~17_combout\ : std_logic;
SIGNAL \data_out[4]~75_combout\ : std_logic;
SIGNAL \U12|grd_latch[4]~feeder_combout\ : std_logic;
SIGNAL \data_out[4]~47_combout\ : std_logic;
SIGNAL \U12|grc_latch[4]~feeder_combout\ : std_logic;
SIGNAL \U12|gra_latch[4]~feeder_combout\ : std_logic;
SIGNAL \data_out[4]~48_combout\ : std_logic;
SIGNAL \data_out[4]~49_combout\ : std_logic;
SIGNAL \U3|inst1|address_latch[4]~feeder_combout\ : std_logic;
SIGNAL \data_out[1]~22_combout\ : std_logic;
SIGNAL \data_out[1]~23_combout\ : std_logic;
SIGNAL \data_out[1]~24_combout\ : std_logic;
SIGNAL \U12|grd_latch[1]~feeder_combout\ : std_logic;
SIGNAL \data_out[1]~26_combout\ : std_logic;
SIGNAL \U12|grb_latch[1]~feeder_combout\ : std_logic;
SIGNAL \U12|gra_latch[1]~feeder_combout\ : std_logic;
SIGNAL \data_out[1]~27_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[1]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[1]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[1]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[1]~feeder_combout\ : std_logic;
SIGNAL \data_out[1]~25_combout\ : std_logic;
SIGNAL \data_out[1]~28_combout\ : std_logic;
SIGNAL \U3|inst1|address_latch[1]~feeder_combout\ : std_logic;
SIGNAL \data_out[0]~12_combout\ : std_logic;
SIGNAL \data_out[0]~13_combout\ : std_logic;
SIGNAL \data_out[0]~14_combout\ : std_logic;
SIGNAL \U12|grd_latch[0]~feeder_combout\ : std_logic;
SIGNAL \data_out[0]~19_combout\ : std_logic;
SIGNAL \U12|gra_latch[0]~feeder_combout\ : std_logic;
SIGNAL \data_out[0]~20_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[0]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[0]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[0]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[0]~feeder_combout\ : std_logic;
SIGNAL \data_out[0]~15_combout\ : std_logic;
SIGNAL \data_out[0]~21_combout\ : std_logic;
SIGNAL \data_out[6]~57_combout\ : std_logic;
SIGNAL \data_out[6]~58_combout\ : std_logic;
SIGNAL \data_out[6]~59_combout\ : std_logic;
SIGNAL \data_out[6]~63_combout\ : std_logic;
SIGNAL \U6|Mux10~0_combout\ : std_logic;
SIGNAL \U14|Selector15~1_combout\ : std_logic;
SIGNAL \U14|Selector15~3_combout\ : std_logic;
SIGNAL \U14|ramwt_latch~feeder_combout\ : std_logic;
SIGNAL \U14|ramwt_latch~q\ : std_logic;
SIGNAL \data_out[3]~36_combout\ : std_logic;
SIGNAL \data_out[3]~37_combout\ : std_logic;
SIGNAL \data_out[3]~38_combout\ : std_logic;
SIGNAL \U12|grb_latch[3]~feeder_combout\ : std_logic;
SIGNAL \U12|grd_latch[3]~feeder_combout\ : std_logic;
SIGNAL \data_out[3]~40_combout\ : std_logic;
SIGNAL \data_out[3]~41_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[3]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[3]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[3]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[3]~feeder_combout\ : std_logic;
SIGNAL \data_out[3]~39_combout\ : std_logic;
SIGNAL \data_out[3]~42_combout\ : std_logic;
SIGNAL \U14|process_0~7_combout\ : std_logic;
SIGNAL \U14|process_0~11_combout\ : std_logic;
SIGNAL \U14|next_state~23_combout\ : std_logic;
SIGNAL \U14|next_state.t13~q\ : std_logic;
SIGNAL \U14|current_state.t13~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t13~q\ : std_logic;
SIGNAL \U14|next_state.t14~q\ : std_logic;
SIGNAL \U14|current_state.t14~q\ : std_logic;
SIGNAL \U14|Selector14~0_combout\ : std_logic;
SIGNAL \U14|Selector14~1_combout\ : std_logic;
SIGNAL \U14|ramrd_latch~feeder_combout\ : std_logic;
SIGNAL \U14|ramrd_latch~q\ : std_logic;
SIGNAL \data_out[2]~29_combout\ : std_logic;
SIGNAL \data_out[2]~30_combout\ : std_logic;
SIGNAL \data_out[2]~31_combout\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[2]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[2]~q\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[2]~feeder_combout\ : std_logic;
SIGNAL \data_out[2]~32_combout\ : std_logic;
SIGNAL \U12|gra_latch[2]~feeder_combout\ : std_logic;
SIGNAL \U12|grc_latch[2]~feeder_combout\ : std_logic;
SIGNAL \U12|grd_latch[2]~feeder_combout\ : std_logic;
SIGNAL \data_out[2]~33_combout\ : std_logic;
SIGNAL \data_out[2]~34_combout\ : std_logic;
SIGNAL \data_out[2]~35_combout\ : std_logic;
SIGNAL \U5|instruction[10]~feeder_combout\ : std_logic;
SIGNAL \U14|regrd2_latch~0_combout\ : std_logic;
SIGNAL \U14|Selector10~1_combout\ : std_logic;
SIGNAL \U14|Selector10~2_combout\ : std_logic;
SIGNAL \U14|Selector10~3_combout\ : std_logic;
SIGNAL \U14|Selector10~4_combout\ : std_logic;
SIGNAL \U14|Selector10~0_combout\ : std_logic;
SIGNAL \U14|Selector10~5_combout\ : std_logic;
SIGNAL \U14|regrd2_latch~q\ : std_logic;
SIGNAL \U12|gr_data_out[7]~0_combout\ : std_logic;
SIGNAL \data_out[5]~56_combout\ : std_logic;
SIGNAL \U6|Mux8~0_combout\ : std_logic;
SIGNAL \U14|next_state~22_combout\ : std_logic;
SIGNAL \U14|Selector8~0_combout\ : std_logic;
SIGNAL \U14|Selector8~1_combout\ : std_logic;
SIGNAL \U14|Selector8~2_combout\ : std_logic;
SIGNAL \U14|dbfbout_latch~q\ : std_logic;
SIGNAL \uart_inst|inst1|Decoder0~8_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[7]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst1|pro2:rbufs[7]~q\ : std_logic;
SIGNAL \uart_inst|inst1|rbuf[7]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst3|data_latch[7]~feeder_combout\ : std_logic;
SIGNAL \data_out[7]~67_combout\ : std_logic;
SIGNAL \data_out[7]~70_combout\ : std_logic;
SIGNAL \U14|Selector19~1_combout\ : std_logic;
SIGNAL \U14|Selector19~0_combout\ : std_logic;
SIGNAL \U14|Selector19~2_combout\ : std_logic;
SIGNAL \U14|Selector19~3_combout\ : std_logic;
SIGNAL \U14|Selector19~4_combout\ : std_logic;
SIGNAL \U14|next_state.t1~q\ : std_logic;
SIGNAL \U14|current_state.t1~q\ : std_logic;
SIGNAL \U14|Selector20~0_combout\ : std_logic;
SIGNAL \U14|next_state.t2~q\ : std_logic;
SIGNAL \U14|current_state.t2~q\ : std_logic;
SIGNAL \U14|next_state.t3~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t3~q\ : std_logic;
SIGNAL \U14|current_state.t3~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t3~q\ : std_logic;
SIGNAL \U14|next_state.t4~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t4~q\ : std_logic;
SIGNAL \U14|current_state.t4~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t4~q\ : std_logic;
SIGNAL \U14|next_state.t5~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t5~q\ : std_logic;
SIGNAL \U14|current_state.t5~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t5~q\ : std_logic;
SIGNAL \U14|next_state.t6~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t6~q\ : std_logic;
SIGNAL \U14|current_state.t6~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t6~q\ : std_logic;
SIGNAL \U14|next_state.t7~q\ : std_logic;
SIGNAL \U14|current_state.t7~q\ : std_logic;
SIGNAL \U14|next_state.t8~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t8~q\ : std_logic;
SIGNAL \U14|current_state.t8~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t8~q\ : std_logic;
SIGNAL \U14|next_state.t9~q\ : std_logic;
SIGNAL \U14|current_state.t9~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t9~q\ : std_logic;
SIGNAL \U14|next_state.t10~q\ : std_logic;
SIGNAL \U14|current_state.t10~q\ : std_logic;
SIGNAL \U14|Selector21~0_combout\ : std_logic;
SIGNAL \U14|Selector21~1_combout\ : std_logic;
SIGNAL \U14|next_state.t11~q\ : std_logic;
SIGNAL \U14|current_state.t11~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t11~q\ : std_logic;
SIGNAL \U14|Selector16~1_combout\ : std_logic;
SIGNAL \U14|Selector16~2_combout\ : std_logic;
SIGNAL \U14|txd_cmd_latch~q\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[0]~32_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector11~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~3\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~4_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[2]~6_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~5\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~6_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[3]~5_combout\ : std_logic;
SIGNAL \uart_inst|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector2~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|state.x_wait~q\ : std_logic;
SIGNAL \uart_inst|inst2|Selector6~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[0]~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[0]~4_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~1\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[1]~7_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[4]~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[4]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~7\ : std_logic;
SIGNAL \uart_inst|inst2|Add0~8_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xcnt16[4]~3_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_content[7]~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector1~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|state.x_start~q\ : std_logic;
SIGNAL \uart_inst|inst2|Selector3~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector3~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|state.x_shift~q\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[31]~34_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[31]~35_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[0]~33\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[1]~36_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[1]~37\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[2]~38_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[2]~39\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[3]~40_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[3]~41\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[4]~42_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[4]~43\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[5]~44_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[5]~45\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[6]~46_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[6]~47\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[7]~48_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[7]~49\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[8]~50_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[8]~51\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[9]~52_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[9]~53\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[10]~54_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[10]~55\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[11]~56_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[11]~57\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[12]~58_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[12]~59\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[13]~60_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[13]~61\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[14]~62_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[14]~63\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[15]~64_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[15]~65\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[16]~66_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[16]~67\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[17]~68_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[17]~69\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[18]~70_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[18]~71\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[19]~72_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[19]~73\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[20]~74_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[20]~75\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[21]~76_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[21]~77\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[22]~78_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[22]~79\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[23]~80_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[23]~81\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[24]~82_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[24]~83\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[25]~84_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[25]~85\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[26]~86_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[26]~87\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[27]~88_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[27]~89\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[28]~90_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[28]~91\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[29]~92_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[29]~93\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[30]~94_combout\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[30]~95\ : std_logic;
SIGNAL \uart_inst|inst2|xbitcnt[31]~96_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~9_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~8_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~6_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~5_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~7_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~3_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~4_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Equal1~10_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector4~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector4~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|state.x_stop~q\ : std_logic;
SIGNAL \uart_inst|inst2|Selector0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|state.x_idle~q\ : std_logic;
SIGNAL \uart_inst|inst2|txd_done~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_done~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_done~q\ : std_logic;
SIGNAL \uart_inst|inst7|pulse~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[0]~37_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[1]~31_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[1]~32\ : std_logic;
SIGNAL \uart_inst|inst7|counter[2]~33_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[2]~34\ : std_logic;
SIGNAL \uart_inst|inst7|counter[3]~35_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[3]~36\ : std_logic;
SIGNAL \uart_inst|inst7|counter[4]~38_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[4]~39\ : std_logic;
SIGNAL \uart_inst|inst7|counter[5]~40_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[5]~41\ : std_logic;
SIGNAL \uart_inst|inst7|counter[6]~42_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[6]~43\ : std_logic;
SIGNAL \uart_inst|inst7|counter[7]~44_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[7]~45\ : std_logic;
SIGNAL \uart_inst|inst7|counter[8]~46_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[8]~47\ : std_logic;
SIGNAL \uart_inst|inst7|counter[9]~48_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[9]~49\ : std_logic;
SIGNAL \uart_inst|inst7|counter[10]~50_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[10]~51\ : std_logic;
SIGNAL \uart_inst|inst7|counter[11]~52_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[11]~53\ : std_logic;
SIGNAL \uart_inst|inst7|counter[12]~54_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[12]~55\ : std_logic;
SIGNAL \uart_inst|inst7|counter[13]~56_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[13]~57\ : std_logic;
SIGNAL \uart_inst|inst7|counter[14]~58_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[14]~59\ : std_logic;
SIGNAL \uart_inst|inst7|counter[15]~60_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[15]~61\ : std_logic;
SIGNAL \uart_inst|inst7|counter[16]~62_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[16]~63\ : std_logic;
SIGNAL \uart_inst|inst7|counter[17]~64_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[17]~65\ : std_logic;
SIGNAL \uart_inst|inst7|counter[18]~66_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[18]~67\ : std_logic;
SIGNAL \uart_inst|inst7|counter[19]~68_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[19]~69\ : std_logic;
SIGNAL \uart_inst|inst7|counter[20]~70_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[20]~71\ : std_logic;
SIGNAL \uart_inst|inst7|counter[21]~72_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[21]~73\ : std_logic;
SIGNAL \uart_inst|inst7|counter[22]~74_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[22]~75\ : std_logic;
SIGNAL \uart_inst|inst7|counter[23]~76_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[23]~77\ : std_logic;
SIGNAL \uart_inst|inst7|counter[24]~78_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[24]~79\ : std_logic;
SIGNAL \uart_inst|inst7|counter[25]~80_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[25]~81\ : std_logic;
SIGNAL \uart_inst|inst7|counter[26]~82_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[26]~83\ : std_logic;
SIGNAL \uart_inst|inst7|counter[27]~84_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[27]~85\ : std_logic;
SIGNAL \uart_inst|inst7|counter[28]~86_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[28]~87\ : std_logic;
SIGNAL \uart_inst|inst7|counter[29]~88_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[29]~89\ : std_logic;
SIGNAL \uart_inst|inst7|counter[30]~90_combout\ : std_logic;
SIGNAL \uart_inst|inst7|counter[30]~91\ : std_logic;
SIGNAL \uart_inst|inst7|counter[31]~92_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~9_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~8_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~3_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~4_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~5_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~6_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~7_combout\ : std_logic;
SIGNAL \uart_inst|inst7|Equal0~10_combout\ : std_logic;
SIGNAL \uart_inst|inst7|stop_counter~0_combout\ : std_logic;
SIGNAL \uart_inst|inst7|stop_counter~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst7|stop_counter~q\ : std_logic;
SIGNAL \uart_inst|inst7|pulse~q\ : std_logic;
SIGNAL \U14|Selector22~0_combout\ : std_logic;
SIGNAL \U14|next_state.t12~q\ : std_logic;
SIGNAL \U14|current_state.t12~q\ : std_logic;
SIGNAL \U6|Mux4~0_combout\ : std_logic;
SIGNAL \U14|Selector26~0_combout\ : std_logic;
SIGNAL \U14|enled_latch~feeder_combout\ : std_logic;
SIGNAL \U14|enled_latch~q\ : std_logic;
SIGNAL \U14|enled_latch~clkctrl_outclk\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \U13|Mux8~0_combout\ : std_logic;
SIGNAL \U13|Mux8~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \U13|Mux7~0_combout\ : std_logic;
SIGNAL \U13|Mux7~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \U13|Mux6~0_combout\ : std_logic;
SIGNAL \U13|Mux6~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \U13|Mux5~0_combout\ : std_logic;
SIGNAL \U13|Mux5~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \U13|Mux4~0_combout\ : std_logic;
SIGNAL \U13|Mux4~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \U13|Mux3~0_combout\ : std_logic;
SIGNAL \U13|Mux3~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \U13|Mux2~0_combout\ : std_logic;
SIGNAL \U13|Mux2~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \U13|Mux1~0_combout\ : std_logic;
SIGNAL \U13|Mux1~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector11~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_content[2]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_content[7]~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_content[1]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Mux0~2_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Mux0~3_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_content[5]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txd_content[6]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Mux0~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector11~1_combout\ : std_logic;
SIGNAL \uart_inst|inst2|Selector11~3_combout\ : std_logic;
SIGNAL \uart_inst|inst2|txds~q\ : std_logic;
SIGNAL \uart_inst|inst7|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U7|addr_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_inst|inst2|xbitcnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_inst|inst|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U12|grd_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst3|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_inst|inst1|rbuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U13|led_dig_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_inst|inst8|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U13|led_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U13|current_led_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \uart_inst|inst2|xcnt16\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_inst|inst2|txd_content\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U5|instruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_inst|inst3|data_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|grc_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|grb_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|gra_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|inst1|address_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U8|alu_result_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U5|ir_grcode\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U11|grc_grwt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U14|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U10|data_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst3|ALT_INV_stop_counter~q\ : std_logic;
SIGNAL \uart_inst|inst1|ALT_INV_state.r_sample~q\ : std_logic;
SIGNAL \uart_inst|inst7|ALT_INV_stop_counter~q\ : std_logic;
SIGNAL \uart_inst|inst8|ALT_INV_stop_counter~q\ : std_logic;
SIGNAL \U5|ALT_INV_state~q\ : std_logic;
SIGNAL \uart_inst|inst2|ALT_INV_state.x_shift~q\ : std_logic;
SIGNAL \uart_inst|inst2|ALT_INV_txds~q\ : std_logic;
SIGNAL \U13|ALT_INV_led_dig_temp\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk_input <= clk_input;
sel <= ww_sel;
dig <= ww_dig;
ww_rxd <= rxd;
txd <= ww_txd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_out[7]~70_combout\ & \data_out[6]~63_combout\ & \data_out[5]~56_combout\ & \data_out[4]~49_combout\ & \data_out[3]~42_combout\ & \data_out[2]~35_combout\ & \data_out[1]~28_combout\ & 
\data_out[0]~21_combout\);

\U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U13|Ram0_rtl_0|auto_generated|ram_block1a1\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U13|Ram0_rtl_0|auto_generated|ram_block1a2\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U13|Ram0_rtl_0|auto_generated|ram_block1a3\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U13|Ram0_rtl_0|auto_generated|ram_block1a4\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U13|Ram0_rtl_0|auto_generated|ram_block1a5\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U13|Ram0_rtl_0|auto_generated|ram_block1a6\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U13|Ram0_rtl_0|auto_generated|ram_block1a7\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U13|Ram0_rtl_0|auto_generated|ram_block1a8\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U13|Ram0_rtl_0|auto_generated|ram_block1a9\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U13|Ram0_rtl_0|auto_generated|ram_block1a10\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U13|Ram0_rtl_0|auto_generated|ram_block1a11\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U13|Ram0_rtl_0|auto_generated|ram_block1a12\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U13|Ram0_rtl_0|auto_generated|ram_block1a13\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\U13|Ram0_rtl_0|auto_generated|ram_block1a14\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\U13|Ram0_rtl_0|auto_generated|ram_block1a15\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\U13|Ram0_rtl_0|auto_generated|ram_block1a16\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\U13|Ram0_rtl_0|auto_generated|ram_block1a17\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\U13|Ram0_rtl_0|auto_generated|ram_block1a18\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\U13|Ram0_rtl_0|auto_generated|ram_block1a19\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\U13|Ram0_rtl_0|auto_generated|ram_block1a20\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\U13|Ram0_rtl_0|auto_generated|ram_block1a21\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\U13|Ram0_rtl_0|auto_generated|ram_block1a22\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\U13|Ram0_rtl_0|auto_generated|ram_block1a23\ <= \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);

\U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_out[7]~70_combout\ & \data_out[6]~63_combout\ & \data_out[5]~56_combout\ & \data_out[4]~49_combout\ & 
\data_out[3]~42_combout\ & \data_out[2]~35_combout\ & \data_out[1]~28_combout\ & \data_out[0]~21_combout\);

\U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U3|inst1|address_latch\(7) & \U3|inst1|address_latch\(6) & \U3|inst1|address_latch\(5) & \U3|inst1|address_latch\(4) & \U3|inst1|address_latch\(3) & 
\U3|inst1|address_latch\(2) & \U3|inst1|address_latch\(1) & \U3|inst1|address_latch\(0));

\U3|inst|altsyncram_component|auto_generated|q_a\(0) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U3|inst|altsyncram_component|auto_generated|q_a\(1) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U3|inst|altsyncram_component|auto_generated|q_a\(2) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U3|inst|altsyncram_component|auto_generated|q_a\(3) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U3|inst|altsyncram_component|auto_generated|q_a\(4) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U3|inst|altsyncram_component|auto_generated|q_a\(5) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U3|inst|altsyncram_component|auto_generated|q_a\(6) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U3|inst|altsyncram_component|auto_generated|q_a\(7) <= \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_out[7]~70_combout\ & \data_out[6]~63_combout\ & \data_out[5]~56_combout\ & \data_out[4]~49_combout\ & \data_out[3]~42_combout\ & \data_out[2]~35_combout\ & 
\data_out[1]~28_combout\ & \data_out[0]~21_combout\);

\U4|inst|altsyncram_component|auto_generated|q_a\(0) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U4|inst|altsyncram_component|auto_generated|q_a\(1) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U4|inst|altsyncram_component|auto_generated|q_a\(2) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U4|inst|altsyncram_component|auto_generated|q_a\(3) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U4|inst|altsyncram_component|auto_generated|q_a\(4) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U4|inst|altsyncram_component|auto_generated|q_a\(5) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U4|inst|altsyncram_component|auto_generated|q_a\(6) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U4|inst|altsyncram_component|auto_generated|q_a\(7) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\U1|clk_led~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|clk_led~q\);

\uart_inst|inst|bclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart_inst|inst|bclk~q\);

\U14|enled_latch~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U14|enled_latch~q\);

\U1|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|clk_out~q\);

\clk_input~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_input~input_o\);

\U10|data_latch[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U10|data_latch[7]~1_combout\);

\uart_inst|inst1|r_ready~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart_inst|inst1|r_ready~q\);

\U11|grc_grwt[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(2));

\U11|grc_grwt[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(1));

\U11|grc_grwt[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(0));
\U4|inst3|ALT_INV_stop_counter~q\ <= NOT \U4|inst3|stop_counter~q\;
\uart_inst|inst1|ALT_INV_state.r_sample~q\ <= NOT \uart_inst|inst1|state.r_sample~q\;
\uart_inst|inst7|ALT_INV_stop_counter~q\ <= NOT \uart_inst|inst7|stop_counter~q\;
\uart_inst|inst8|ALT_INV_stop_counter~q\ <= NOT \uart_inst|inst8|stop_counter~q\;
\U5|ALT_INV_state~q\ <= NOT \U5|state~q\;
\uart_inst|inst2|ALT_INV_state.x_shift~q\ <= NOT \uart_inst|inst2|state.x_shift~q\;
\uart_inst|inst2|ALT_INV_txds~q\ <= NOT \uart_inst|inst2|txds~q\;
\U13|ALT_INV_led_dig_temp\(7) <= NOT \U13|led_dig_temp\(7);
\U13|ALT_INV_led_dig_temp\(6) <= NOT \U13|led_dig_temp\(6);
\U13|ALT_INV_led_dig_temp\(5) <= NOT \U13|led_dig_temp\(5);
\U13|ALT_INV_led_dig_temp\(4) <= NOT \U13|led_dig_temp\(4);
\U13|ALT_INV_led_dig_temp\(3) <= NOT \U13|led_dig_temp\(3);
\U13|ALT_INV_led_dig_temp\(2) <= NOT \U13|led_dig_temp\(2);
\U13|ALT_INV_led_dig_temp\(1) <= NOT \U13|led_dig_temp\(1);
\U13|ALT_INV_led_dig_temp\(0) <= NOT \U13|led_dig_temp\(0);

-- Location: IOOBUF_X32_Y0_N9
\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|led_sel\(0),
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|led_sel\(1),
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|led_sel\(2),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\sel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sel[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\sel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sel[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\sel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sel[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(0),
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(1),
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(2),
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(3),
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(4),
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\dig[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(5),
	devoe => ww_devoe,
	o => \dig[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\dig[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(6),
	devoe => ww_devoe,
	o => \dig[6]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\dig[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|ALT_INV_led_dig_temp\(7),
	devoe => ww_devoe,
	o => \dig[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_inst|inst2|ALT_INV_txds~q\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_input~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_input,
	o => \clk_input~input_o\);

-- Location: CLKCTRL_G2
\clk_input~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_input~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_input~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N10
\U1|counter[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[0]~51_combout\ = !\U1|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|counter\(0),
	combout => \U1|counter[0]~51_combout\);

-- Location: FF_X1_Y11_N11
\U1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(0));

-- Location: LCCOMB_X1_Y11_N16
\U1|counter[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[1]~17_combout\ = (\U1|counter\(0) & (\U1|counter\(1) $ (VCC))) # (!\U1|counter\(0) & (\U1|counter\(1) & VCC))
-- \U1|counter[1]~18\ = CARRY((\U1|counter\(0) & \U1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(0),
	datab => \U1|counter\(1),
	datad => VCC,
	combout => \U1|counter[1]~17_combout\,
	cout => \U1|counter[1]~18\);

-- Location: FF_X1_Y11_N17
\U1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(1));

-- Location: LCCOMB_X1_Y11_N18
\U1|counter[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[2]~19_combout\ = (\U1|counter\(2) & (!\U1|counter[1]~18\)) # (!\U1|counter\(2) & ((\U1|counter[1]~18\) # (GND)))
-- \U1|counter[2]~20\ = CARRY((!\U1|counter[1]~18\) # (!\U1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(2),
	datad => VCC,
	cin => \U1|counter[1]~18\,
	combout => \U1|counter[2]~19_combout\,
	cout => \U1|counter[2]~20\);

-- Location: FF_X1_Y11_N19
\U1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(2));

-- Location: LCCOMB_X1_Y11_N20
\U1|counter[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[3]~21_combout\ = (\U1|counter\(3) & (\U1|counter[2]~20\ $ (GND))) # (!\U1|counter\(3) & (!\U1|counter[2]~20\ & VCC))
-- \U1|counter[3]~22\ = CARRY((\U1|counter\(3) & !\U1|counter[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(3),
	datad => VCC,
	cin => \U1|counter[2]~20\,
	combout => \U1|counter[3]~21_combout\,
	cout => \U1|counter[3]~22\);

-- Location: FF_X1_Y11_N21
\U1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(3));

-- Location: LCCOMB_X1_Y11_N22
\U1|counter[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[4]~23_combout\ = (\U1|counter\(4) & (!\U1|counter[3]~22\)) # (!\U1|counter\(4) & ((\U1|counter[3]~22\) # (GND)))
-- \U1|counter[4]~24\ = CARRY((!\U1|counter[3]~22\) # (!\U1|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(4),
	datad => VCC,
	cin => \U1|counter[3]~22\,
	combout => \U1|counter[4]~23_combout\,
	cout => \U1|counter[4]~24\);

-- Location: FF_X1_Y11_N23
\U1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(4));

-- Location: LCCOMB_X1_Y11_N24
\U1|counter[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[5]~25_combout\ = (\U1|counter\(5) & (\U1|counter[4]~24\ $ (GND))) # (!\U1|counter\(5) & (!\U1|counter[4]~24\ & VCC))
-- \U1|counter[5]~26\ = CARRY((\U1|counter\(5) & !\U1|counter[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(5),
	datad => VCC,
	cin => \U1|counter[4]~24\,
	combout => \U1|counter[5]~25_combout\,
	cout => \U1|counter[5]~26\);

-- Location: FF_X1_Y11_N25
\U1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(5));

-- Location: LCCOMB_X1_Y11_N26
\U1|counter[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[6]~27_combout\ = (\U1|counter\(6) & (!\U1|counter[5]~26\)) # (!\U1|counter\(6) & ((\U1|counter[5]~26\) # (GND)))
-- \U1|counter[6]~28\ = CARRY((!\U1|counter[5]~26\) # (!\U1|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(6),
	datad => VCC,
	cin => \U1|counter[5]~26\,
	combout => \U1|counter[6]~27_combout\,
	cout => \U1|counter[6]~28\);

-- Location: FF_X1_Y11_N27
\U1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(6));

-- Location: LCCOMB_X1_Y11_N28
\U1|counter[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[7]~29_combout\ = (\U1|counter\(7) & (\U1|counter[6]~28\ $ (GND))) # (!\U1|counter\(7) & (!\U1|counter[6]~28\ & VCC))
-- \U1|counter[7]~30\ = CARRY((\U1|counter\(7) & !\U1|counter[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(7),
	datad => VCC,
	cin => \U1|counter[6]~28\,
	combout => \U1|counter[7]~29_combout\,
	cout => \U1|counter[7]~30\);

-- Location: FF_X1_Y11_N29
\U1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(7));

-- Location: LCCOMB_X1_Y11_N30
\U1|counter[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[8]~31_combout\ = (\U1|counter\(8) & (!\U1|counter[7]~30\)) # (!\U1|counter\(8) & ((\U1|counter[7]~30\) # (GND)))
-- \U1|counter[8]~32\ = CARRY((!\U1|counter[7]~30\) # (!\U1|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(8),
	datad => VCC,
	cin => \U1|counter[7]~30\,
	combout => \U1|counter[8]~31_combout\,
	cout => \U1|counter[8]~32\);

-- Location: FF_X1_Y11_N31
\U1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(8));

-- Location: LCCOMB_X1_Y10_N0
\U1|counter[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[9]~33_combout\ = (\U1|counter\(9) & (\U1|counter[8]~32\ $ (GND))) # (!\U1|counter\(9) & (!\U1|counter[8]~32\ & VCC))
-- \U1|counter[9]~34\ = CARRY((\U1|counter\(9) & !\U1|counter[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(9),
	datad => VCC,
	cin => \U1|counter[8]~32\,
	combout => \U1|counter[9]~33_combout\,
	cout => \U1|counter[9]~34\);

-- Location: FF_X1_Y10_N1
\U1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(9));

-- Location: LCCOMB_X1_Y10_N2
\U1|counter[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[10]~35_combout\ = (\U1|counter\(10) & (!\U1|counter[9]~34\)) # (!\U1|counter\(10) & ((\U1|counter[9]~34\) # (GND)))
-- \U1|counter[10]~36\ = CARRY((!\U1|counter[9]~34\) # (!\U1|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(10),
	datad => VCC,
	cin => \U1|counter[9]~34\,
	combout => \U1|counter[10]~35_combout\,
	cout => \U1|counter[10]~36\);

-- Location: FF_X1_Y10_N3
\U1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(10));

-- Location: LCCOMB_X1_Y10_N4
\U1|counter[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[11]~37_combout\ = (\U1|counter\(11) & (\U1|counter[10]~36\ $ (GND))) # (!\U1|counter\(11) & (!\U1|counter[10]~36\ & VCC))
-- \U1|counter[11]~38\ = CARRY((\U1|counter\(11) & !\U1|counter[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(11),
	datad => VCC,
	cin => \U1|counter[10]~36\,
	combout => \U1|counter[11]~37_combout\,
	cout => \U1|counter[11]~38\);

-- Location: FF_X1_Y10_N5
\U1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[11]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(11));

-- Location: LCCOMB_X1_Y10_N6
\U1|counter[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[12]~39_combout\ = (\U1|counter\(12) & (!\U1|counter[11]~38\)) # (!\U1|counter\(12) & ((\U1|counter[11]~38\) # (GND)))
-- \U1|counter[12]~40\ = CARRY((!\U1|counter[11]~38\) # (!\U1|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(12),
	datad => VCC,
	cin => \U1|counter[11]~38\,
	combout => \U1|counter[12]~39_combout\,
	cout => \U1|counter[12]~40\);

-- Location: FF_X1_Y10_N7
\U1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(12));

-- Location: LCCOMB_X1_Y10_N8
\U1|counter[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[13]~41_combout\ = (\U1|counter\(13) & (\U1|counter[12]~40\ $ (GND))) # (!\U1|counter\(13) & (!\U1|counter[12]~40\ & VCC))
-- \U1|counter[13]~42\ = CARRY((\U1|counter\(13) & !\U1|counter[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(13),
	datad => VCC,
	cin => \U1|counter[12]~40\,
	combout => \U1|counter[13]~41_combout\,
	cout => \U1|counter[13]~42\);

-- Location: FF_X1_Y10_N9
\U1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[13]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(13));

-- Location: LCCOMB_X1_Y10_N10
\U1|counter[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[14]~43_combout\ = (\U1|counter\(14) & (!\U1|counter[13]~42\)) # (!\U1|counter\(14) & ((\U1|counter[13]~42\) # (GND)))
-- \U1|counter[14]~44\ = CARRY((!\U1|counter[13]~42\) # (!\U1|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(14),
	datad => VCC,
	cin => \U1|counter[13]~42\,
	combout => \U1|counter[14]~43_combout\,
	cout => \U1|counter[14]~44\);

-- Location: FF_X1_Y10_N11
\U1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(14));

-- Location: LCCOMB_X1_Y10_N12
\U1|counter[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[15]~45_combout\ = (\U1|counter\(15) & (\U1|counter[14]~44\ $ (GND))) # (!\U1|counter\(15) & (!\U1|counter[14]~44\ & VCC))
-- \U1|counter[15]~46\ = CARRY((\U1|counter\(15) & !\U1|counter[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|counter\(15),
	datad => VCC,
	cin => \U1|counter[14]~44\,
	combout => \U1|counter[15]~45_combout\,
	cout => \U1|counter[15]~46\);

-- Location: FF_X1_Y10_N13
\U1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(15));

-- Location: LCCOMB_X1_Y10_N14
\U1|counter[16]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[16]~47_combout\ = (\U1|counter\(16) & (!\U1|counter[15]~46\)) # (!\U1|counter\(16) & ((\U1|counter[15]~46\) # (GND)))
-- \U1|counter[16]~48\ = CARRY((!\U1|counter[15]~46\) # (!\U1|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|counter\(16),
	datad => VCC,
	cin => \U1|counter[15]~46\,
	combout => \U1|counter[16]~47_combout\,
	cout => \U1|counter[16]~48\);

-- Location: FF_X1_Y10_N15
\U1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[16]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(16));

-- Location: LCCOMB_X1_Y10_N16
\U1|counter[17]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|counter[17]~49_combout\ = \U1|counter[16]~48\ $ (!\U1|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|counter\(17),
	cin => \U1|counter[16]~48\,
	combout => \U1|counter[17]~49_combout\);

-- Location: FF_X1_Y10_N17
\U1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|counter[17]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|counter\(17));

-- Location: LCCOMB_X1_Y11_N14
\U1|clk_led~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_led~feeder_combout\ = \U1|counter\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|counter\(17),
	combout => \U1|clk_led~feeder_combout\);

-- Location: FF_X1_Y11_N15
\U1|clk_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|clk_led~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clk_led~q\);

-- Location: CLKCTRL_G4
\U1|clk_led~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|clk_led~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|clk_led~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y9_N2
\U13|current_led_sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|current_led_sel[0]~0_combout\ = !\U13|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U13|Mux9~0_combout\,
	combout => \U13|current_led_sel[0]~0_combout\);

-- Location: FF_X29_Y9_N3
\U13|current_led_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|current_led_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|current_led_sel\(0));

-- Location: LCCOMB_X28_Y9_N28
\U13|current_led_sel[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|current_led_sel[1]~feeder_combout\ = \U13|current_led_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U13|current_led_sel\(0),
	combout => \U13|current_led_sel[1]~feeder_combout\);

-- Location: FF_X28_Y9_N29
\U13|current_led_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|current_led_sel[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|current_led_sel\(1));

-- Location: LCCOMB_X29_Y9_N24
\U13|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux9~0_combout\ = (\U13|current_led_sel\(0)) # (\U13|current_led_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(0),
	datad => \U13|current_led_sel\(1),
	combout => \U13|Mux9~0_combout\);

-- Location: FF_X29_Y9_N25
\U13|led_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_sel\(0));

-- Location: LCCOMB_X28_Y9_N20
\U13|led_sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|led_sel[1]~0_combout\ = !\U13|current_led_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U13|current_led_sel\(0),
	combout => \U13|led_sel[1]~0_combout\);

-- Location: FF_X28_Y9_N21
\U13|led_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|led_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_sel\(1));

-- Location: LCCOMB_X29_Y9_N30
\U13|led_sel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|led_sel[2]~1_combout\ = !\U13|current_led_sel\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U13|current_led_sel\(1),
	combout => \U13|led_sel[2]~1_combout\);

-- Location: FF_X29_Y9_N31
\U13|led_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|led_sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_sel\(2));

-- Location: LCCOMB_X1_Y11_N6
\U1|clk_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_out~feeder_combout\ = \U1|counter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|counter\(5),
	combout => \U1|clk_out~feeder_combout\);

-- Location: FF_X1_Y11_N7
\U1|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U1|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clk_out~q\);

-- Location: CLKCTRL_G1
\U1|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y2_N0
\uart_inst|inst|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[0]~32_combout\ = \uart_inst|inst|cnt\(0) $ (VCC)
-- \uart_inst|inst|cnt[0]~33\ = CARRY(\uart_inst|inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(0),
	datad => VCC,
	combout => \uart_inst|inst|cnt[0]~32_combout\,
	cout => \uart_inst|inst|cnt[0]~33\);

-- Location: FF_X4_Y2_N1
\uart_inst|inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[0]~32_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(0));

-- Location: LCCOMB_X4_Y2_N2
\uart_inst|inst|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[1]~34_combout\ = (\uart_inst|inst|cnt\(1) & (!\uart_inst|inst|cnt[0]~33\)) # (!\uart_inst|inst|cnt\(1) & ((\uart_inst|inst|cnt[0]~33\) # (GND)))
-- \uart_inst|inst|cnt[1]~35\ = CARRY((!\uart_inst|inst|cnt[0]~33\) # (!\uart_inst|inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(1),
	datad => VCC,
	cin => \uart_inst|inst|cnt[0]~33\,
	combout => \uart_inst|inst|cnt[1]~34_combout\,
	cout => \uart_inst|inst|cnt[1]~35\);

-- Location: FF_X4_Y2_N3
\uart_inst|inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[1]~34_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(1));

-- Location: LCCOMB_X4_Y2_N4
\uart_inst|inst|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[2]~36_combout\ = (\uart_inst|inst|cnt\(2) & (\uart_inst|inst|cnt[1]~35\ $ (GND))) # (!\uart_inst|inst|cnt\(2) & (!\uart_inst|inst|cnt[1]~35\ & VCC))
-- \uart_inst|inst|cnt[2]~37\ = CARRY((\uart_inst|inst|cnt\(2) & !\uart_inst|inst|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(2),
	datad => VCC,
	cin => \uart_inst|inst|cnt[1]~35\,
	combout => \uart_inst|inst|cnt[2]~36_combout\,
	cout => \uart_inst|inst|cnt[2]~37\);

-- Location: FF_X4_Y2_N5
\uart_inst|inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[2]~36_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(2));

-- Location: LCCOMB_X4_Y2_N6
\uart_inst|inst|cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[3]~38_combout\ = (\uart_inst|inst|cnt\(3) & (!\uart_inst|inst|cnt[2]~37\)) # (!\uart_inst|inst|cnt\(3) & ((\uart_inst|inst|cnt[2]~37\) # (GND)))
-- \uart_inst|inst|cnt[3]~39\ = CARRY((!\uart_inst|inst|cnt[2]~37\) # (!\uart_inst|inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(3),
	datad => VCC,
	cin => \uart_inst|inst|cnt[2]~37\,
	combout => \uart_inst|inst|cnt[3]~38_combout\,
	cout => \uart_inst|inst|cnt[3]~39\);

-- Location: FF_X4_Y2_N7
\uart_inst|inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[3]~38_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(3));

-- Location: LCCOMB_X4_Y2_N8
\uart_inst|inst|cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[4]~40_combout\ = (\uart_inst|inst|cnt\(4) & (\uart_inst|inst|cnt[3]~39\ $ (GND))) # (!\uart_inst|inst|cnt\(4) & (!\uart_inst|inst|cnt[3]~39\ & VCC))
-- \uart_inst|inst|cnt[4]~41\ = CARRY((\uart_inst|inst|cnt\(4) & !\uart_inst|inst|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(4),
	datad => VCC,
	cin => \uart_inst|inst|cnt[3]~39\,
	combout => \uart_inst|inst|cnt[4]~40_combout\,
	cout => \uart_inst|inst|cnt[4]~41\);

-- Location: FF_X4_Y2_N9
\uart_inst|inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[4]~40_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(4));

-- Location: LCCOMB_X4_Y2_N10
\uart_inst|inst|cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[5]~42_combout\ = (\uart_inst|inst|cnt\(5) & (!\uart_inst|inst|cnt[4]~41\)) # (!\uart_inst|inst|cnt\(5) & ((\uart_inst|inst|cnt[4]~41\) # (GND)))
-- \uart_inst|inst|cnt[5]~43\ = CARRY((!\uart_inst|inst|cnt[4]~41\) # (!\uart_inst|inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(5),
	datad => VCC,
	cin => \uart_inst|inst|cnt[4]~41\,
	combout => \uart_inst|inst|cnt[5]~42_combout\,
	cout => \uart_inst|inst|cnt[5]~43\);

-- Location: FF_X4_Y2_N11
\uart_inst|inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[5]~42_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(5));

-- Location: LCCOMB_X4_Y2_N12
\uart_inst|inst|cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[6]~44_combout\ = (\uart_inst|inst|cnt\(6) & (\uart_inst|inst|cnt[5]~43\ $ (GND))) # (!\uart_inst|inst|cnt\(6) & (!\uart_inst|inst|cnt[5]~43\ & VCC))
-- \uart_inst|inst|cnt[6]~45\ = CARRY((\uart_inst|inst|cnt\(6) & !\uart_inst|inst|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(6),
	datad => VCC,
	cin => \uart_inst|inst|cnt[5]~43\,
	combout => \uart_inst|inst|cnt[6]~44_combout\,
	cout => \uart_inst|inst|cnt[6]~45\);

-- Location: FF_X4_Y2_N13
\uart_inst|inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[6]~44_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(6));

-- Location: LCCOMB_X4_Y2_N14
\uart_inst|inst|cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[7]~46_combout\ = (\uart_inst|inst|cnt\(7) & (!\uart_inst|inst|cnt[6]~45\)) # (!\uart_inst|inst|cnt\(7) & ((\uart_inst|inst|cnt[6]~45\) # (GND)))
-- \uart_inst|inst|cnt[7]~47\ = CARRY((!\uart_inst|inst|cnt[6]~45\) # (!\uart_inst|inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(7),
	datad => VCC,
	cin => \uart_inst|inst|cnt[6]~45\,
	combout => \uart_inst|inst|cnt[7]~46_combout\,
	cout => \uart_inst|inst|cnt[7]~47\);

-- Location: FF_X4_Y2_N15
\uart_inst|inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[7]~46_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(7));

-- Location: LCCOMB_X4_Y2_N16
\uart_inst|inst|cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[8]~48_combout\ = (\uart_inst|inst|cnt\(8) & (\uart_inst|inst|cnt[7]~47\ $ (GND))) # (!\uart_inst|inst|cnt\(8) & (!\uart_inst|inst|cnt[7]~47\ & VCC))
-- \uart_inst|inst|cnt[8]~49\ = CARRY((\uart_inst|inst|cnt\(8) & !\uart_inst|inst|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(8),
	datad => VCC,
	cin => \uart_inst|inst|cnt[7]~47\,
	combout => \uart_inst|inst|cnt[8]~48_combout\,
	cout => \uart_inst|inst|cnt[8]~49\);

-- Location: FF_X4_Y2_N17
\uart_inst|inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[8]~48_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(8));

-- Location: LCCOMB_X4_Y2_N18
\uart_inst|inst|cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[9]~50_combout\ = (\uart_inst|inst|cnt\(9) & (!\uart_inst|inst|cnt[8]~49\)) # (!\uart_inst|inst|cnt\(9) & ((\uart_inst|inst|cnt[8]~49\) # (GND)))
-- \uart_inst|inst|cnt[9]~51\ = CARRY((!\uart_inst|inst|cnt[8]~49\) # (!\uart_inst|inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(9),
	datad => VCC,
	cin => \uart_inst|inst|cnt[8]~49\,
	combout => \uart_inst|inst|cnt[9]~50_combout\,
	cout => \uart_inst|inst|cnt[9]~51\);

-- Location: FF_X4_Y2_N19
\uart_inst|inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[9]~50_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(9));

-- Location: LCCOMB_X4_Y2_N20
\uart_inst|inst|cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[10]~52_combout\ = (\uart_inst|inst|cnt\(10) & (\uart_inst|inst|cnt[9]~51\ $ (GND))) # (!\uart_inst|inst|cnt\(10) & (!\uart_inst|inst|cnt[9]~51\ & VCC))
-- \uart_inst|inst|cnt[10]~53\ = CARRY((\uart_inst|inst|cnt\(10) & !\uart_inst|inst|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(10),
	datad => VCC,
	cin => \uart_inst|inst|cnt[9]~51\,
	combout => \uart_inst|inst|cnt[10]~52_combout\,
	cout => \uart_inst|inst|cnt[10]~53\);

-- Location: FF_X4_Y2_N21
\uart_inst|inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[10]~52_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(10));

-- Location: LCCOMB_X4_Y2_N22
\uart_inst|inst|cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[11]~54_combout\ = (\uart_inst|inst|cnt\(11) & (!\uart_inst|inst|cnt[10]~53\)) # (!\uart_inst|inst|cnt\(11) & ((\uart_inst|inst|cnt[10]~53\) # (GND)))
-- \uart_inst|inst|cnt[11]~55\ = CARRY((!\uart_inst|inst|cnt[10]~53\) # (!\uart_inst|inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(11),
	datad => VCC,
	cin => \uart_inst|inst|cnt[10]~53\,
	combout => \uart_inst|inst|cnt[11]~54_combout\,
	cout => \uart_inst|inst|cnt[11]~55\);

-- Location: FF_X4_Y2_N23
\uart_inst|inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[11]~54_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(11));

-- Location: LCCOMB_X4_Y2_N24
\uart_inst|inst|cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[12]~56_combout\ = (\uart_inst|inst|cnt\(12) & (\uart_inst|inst|cnt[11]~55\ $ (GND))) # (!\uart_inst|inst|cnt\(12) & (!\uart_inst|inst|cnt[11]~55\ & VCC))
-- \uart_inst|inst|cnt[12]~57\ = CARRY((\uart_inst|inst|cnt\(12) & !\uart_inst|inst|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(12),
	datad => VCC,
	cin => \uart_inst|inst|cnt[11]~55\,
	combout => \uart_inst|inst|cnt[12]~56_combout\,
	cout => \uart_inst|inst|cnt[12]~57\);

-- Location: FF_X4_Y2_N25
\uart_inst|inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[12]~56_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(12));

-- Location: LCCOMB_X4_Y2_N26
\uart_inst|inst|cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[13]~58_combout\ = (\uart_inst|inst|cnt\(13) & (!\uart_inst|inst|cnt[12]~57\)) # (!\uart_inst|inst|cnt\(13) & ((\uart_inst|inst|cnt[12]~57\) # (GND)))
-- \uart_inst|inst|cnt[13]~59\ = CARRY((!\uart_inst|inst|cnt[12]~57\) # (!\uart_inst|inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(13),
	datad => VCC,
	cin => \uart_inst|inst|cnt[12]~57\,
	combout => \uart_inst|inst|cnt[13]~58_combout\,
	cout => \uart_inst|inst|cnt[13]~59\);

-- Location: FF_X4_Y2_N27
\uart_inst|inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[13]~58_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(13));

-- Location: LCCOMB_X4_Y2_N28
\uart_inst|inst|cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[14]~60_combout\ = (\uart_inst|inst|cnt\(14) & (\uart_inst|inst|cnt[13]~59\ $ (GND))) # (!\uart_inst|inst|cnt\(14) & (!\uart_inst|inst|cnt[13]~59\ & VCC))
-- \uart_inst|inst|cnt[14]~61\ = CARRY((\uart_inst|inst|cnt\(14) & !\uart_inst|inst|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(14),
	datad => VCC,
	cin => \uart_inst|inst|cnt[13]~59\,
	combout => \uart_inst|inst|cnt[14]~60_combout\,
	cout => \uart_inst|inst|cnt[14]~61\);

-- Location: FF_X4_Y2_N29
\uart_inst|inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[14]~60_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(14));

-- Location: LCCOMB_X4_Y2_N30
\uart_inst|inst|cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[15]~62_combout\ = (\uart_inst|inst|cnt\(15) & (!\uart_inst|inst|cnt[14]~61\)) # (!\uart_inst|inst|cnt\(15) & ((\uart_inst|inst|cnt[14]~61\) # (GND)))
-- \uart_inst|inst|cnt[15]~63\ = CARRY((!\uart_inst|inst|cnt[14]~61\) # (!\uart_inst|inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(15),
	datad => VCC,
	cin => \uart_inst|inst|cnt[14]~61\,
	combout => \uart_inst|inst|cnt[15]~62_combout\,
	cout => \uart_inst|inst|cnt[15]~63\);

-- Location: FF_X4_Y2_N31
\uart_inst|inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[15]~62_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(15));

-- Location: LCCOMB_X4_Y1_N0
\uart_inst|inst|cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[16]~64_combout\ = (\uart_inst|inst|cnt\(16) & (\uart_inst|inst|cnt[15]~63\ $ (GND))) # (!\uart_inst|inst|cnt\(16) & (!\uart_inst|inst|cnt[15]~63\ & VCC))
-- \uart_inst|inst|cnt[16]~65\ = CARRY((\uart_inst|inst|cnt\(16) & !\uart_inst|inst|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(16),
	datad => VCC,
	cin => \uart_inst|inst|cnt[15]~63\,
	combout => \uart_inst|inst|cnt[16]~64_combout\,
	cout => \uart_inst|inst|cnt[16]~65\);

-- Location: FF_X4_Y1_N1
\uart_inst|inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[16]~64_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(16));

-- Location: LCCOMB_X4_Y1_N2
\uart_inst|inst|cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[17]~66_combout\ = (\uart_inst|inst|cnt\(17) & (!\uart_inst|inst|cnt[16]~65\)) # (!\uart_inst|inst|cnt\(17) & ((\uart_inst|inst|cnt[16]~65\) # (GND)))
-- \uart_inst|inst|cnt[17]~67\ = CARRY((!\uart_inst|inst|cnt[16]~65\) # (!\uart_inst|inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(17),
	datad => VCC,
	cin => \uart_inst|inst|cnt[16]~65\,
	combout => \uart_inst|inst|cnt[17]~66_combout\,
	cout => \uart_inst|inst|cnt[17]~67\);

-- Location: FF_X3_Y2_N19
\uart_inst|inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	asdata => \uart_inst|inst|cnt[17]~66_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(17));

-- Location: LCCOMB_X4_Y1_N4
\uart_inst|inst|cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[18]~68_combout\ = (\uart_inst|inst|cnt\(18) & (\uart_inst|inst|cnt[17]~67\ $ (GND))) # (!\uart_inst|inst|cnt\(18) & (!\uart_inst|inst|cnt[17]~67\ & VCC))
-- \uart_inst|inst|cnt[18]~69\ = CARRY((\uart_inst|inst|cnt\(18) & !\uart_inst|inst|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(18),
	datad => VCC,
	cin => \uart_inst|inst|cnt[17]~67\,
	combout => \uart_inst|inst|cnt[18]~68_combout\,
	cout => \uart_inst|inst|cnt[18]~69\);

-- Location: FF_X4_Y1_N5
\uart_inst|inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[18]~68_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(18));

-- Location: LCCOMB_X4_Y1_N6
\uart_inst|inst|cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[19]~70_combout\ = (\uart_inst|inst|cnt\(19) & (!\uart_inst|inst|cnt[18]~69\)) # (!\uart_inst|inst|cnt\(19) & ((\uart_inst|inst|cnt[18]~69\) # (GND)))
-- \uart_inst|inst|cnt[19]~71\ = CARRY((!\uart_inst|inst|cnt[18]~69\) # (!\uart_inst|inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(19),
	datad => VCC,
	cin => \uart_inst|inst|cnt[18]~69\,
	combout => \uart_inst|inst|cnt[19]~70_combout\,
	cout => \uart_inst|inst|cnt[19]~71\);

-- Location: FF_X4_Y1_N7
\uart_inst|inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[19]~70_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(19));

-- Location: LCCOMB_X4_Y1_N8
\uart_inst|inst|cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[20]~72_combout\ = (\uart_inst|inst|cnt\(20) & (\uart_inst|inst|cnt[19]~71\ $ (GND))) # (!\uart_inst|inst|cnt\(20) & (!\uart_inst|inst|cnt[19]~71\ & VCC))
-- \uart_inst|inst|cnt[20]~73\ = CARRY((\uart_inst|inst|cnt\(20) & !\uart_inst|inst|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(20),
	datad => VCC,
	cin => \uart_inst|inst|cnt[19]~71\,
	combout => \uart_inst|inst|cnt[20]~72_combout\,
	cout => \uart_inst|inst|cnt[20]~73\);

-- Location: FF_X4_Y1_N9
\uart_inst|inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[20]~72_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(20));

-- Location: LCCOMB_X4_Y1_N10
\uart_inst|inst|cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[21]~74_combout\ = (\uart_inst|inst|cnt\(21) & (!\uart_inst|inst|cnt[20]~73\)) # (!\uart_inst|inst|cnt\(21) & ((\uart_inst|inst|cnt[20]~73\) # (GND)))
-- \uart_inst|inst|cnt[21]~75\ = CARRY((!\uart_inst|inst|cnt[20]~73\) # (!\uart_inst|inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(21),
	datad => VCC,
	cin => \uart_inst|inst|cnt[20]~73\,
	combout => \uart_inst|inst|cnt[21]~74_combout\,
	cout => \uart_inst|inst|cnt[21]~75\);

-- Location: FF_X4_Y1_N11
\uart_inst|inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[21]~74_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(21));

-- Location: LCCOMB_X4_Y1_N12
\uart_inst|inst|cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[22]~76_combout\ = (\uart_inst|inst|cnt\(22) & (\uart_inst|inst|cnt[21]~75\ $ (GND))) # (!\uart_inst|inst|cnt\(22) & (!\uart_inst|inst|cnt[21]~75\ & VCC))
-- \uart_inst|inst|cnt[22]~77\ = CARRY((\uart_inst|inst|cnt\(22) & !\uart_inst|inst|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(22),
	datad => VCC,
	cin => \uart_inst|inst|cnt[21]~75\,
	combout => \uart_inst|inst|cnt[22]~76_combout\,
	cout => \uart_inst|inst|cnt[22]~77\);

-- Location: FF_X4_Y1_N13
\uart_inst|inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[22]~76_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(22));

-- Location: LCCOMB_X4_Y1_N14
\uart_inst|inst|cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[23]~78_combout\ = (\uart_inst|inst|cnt\(23) & (!\uart_inst|inst|cnt[22]~77\)) # (!\uart_inst|inst|cnt\(23) & ((\uart_inst|inst|cnt[22]~77\) # (GND)))
-- \uart_inst|inst|cnt[23]~79\ = CARRY((!\uart_inst|inst|cnt[22]~77\) # (!\uart_inst|inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(23),
	datad => VCC,
	cin => \uart_inst|inst|cnt[22]~77\,
	combout => \uart_inst|inst|cnt[23]~78_combout\,
	cout => \uart_inst|inst|cnt[23]~79\);

-- Location: FF_X4_Y1_N15
\uart_inst|inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[23]~78_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(23));

-- Location: LCCOMB_X4_Y1_N16
\uart_inst|inst|cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[24]~80_combout\ = (\uart_inst|inst|cnt\(24) & (\uart_inst|inst|cnt[23]~79\ $ (GND))) # (!\uart_inst|inst|cnt\(24) & (!\uart_inst|inst|cnt[23]~79\ & VCC))
-- \uart_inst|inst|cnt[24]~81\ = CARRY((\uart_inst|inst|cnt\(24) & !\uart_inst|inst|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(24),
	datad => VCC,
	cin => \uart_inst|inst|cnt[23]~79\,
	combout => \uart_inst|inst|cnt[24]~80_combout\,
	cout => \uart_inst|inst|cnt[24]~81\);

-- Location: FF_X4_Y1_N17
\uart_inst|inst|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[24]~80_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(24));

-- Location: LCCOMB_X4_Y1_N18
\uart_inst|inst|cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[25]~82_combout\ = (\uart_inst|inst|cnt\(25) & (!\uart_inst|inst|cnt[24]~81\)) # (!\uart_inst|inst|cnt\(25) & ((\uart_inst|inst|cnt[24]~81\) # (GND)))
-- \uart_inst|inst|cnt[25]~83\ = CARRY((!\uart_inst|inst|cnt[24]~81\) # (!\uart_inst|inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(25),
	datad => VCC,
	cin => \uart_inst|inst|cnt[24]~81\,
	combout => \uart_inst|inst|cnt[25]~82_combout\,
	cout => \uart_inst|inst|cnt[25]~83\);

-- Location: FF_X4_Y1_N19
\uart_inst|inst|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[25]~82_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(25));

-- Location: LCCOMB_X4_Y1_N20
\uart_inst|inst|cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[26]~84_combout\ = (\uart_inst|inst|cnt\(26) & (\uart_inst|inst|cnt[25]~83\ $ (GND))) # (!\uart_inst|inst|cnt\(26) & (!\uart_inst|inst|cnt[25]~83\ & VCC))
-- \uart_inst|inst|cnt[26]~85\ = CARRY((\uart_inst|inst|cnt\(26) & !\uart_inst|inst|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(26),
	datad => VCC,
	cin => \uart_inst|inst|cnt[25]~83\,
	combout => \uart_inst|inst|cnt[26]~84_combout\,
	cout => \uart_inst|inst|cnt[26]~85\);

-- Location: FF_X4_Y1_N21
\uart_inst|inst|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[26]~84_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(26));

-- Location: LCCOMB_X4_Y1_N22
\uart_inst|inst|cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[27]~86_combout\ = (\uart_inst|inst|cnt\(27) & (!\uart_inst|inst|cnt[26]~85\)) # (!\uart_inst|inst|cnt\(27) & ((\uart_inst|inst|cnt[26]~85\) # (GND)))
-- \uart_inst|inst|cnt[27]~87\ = CARRY((!\uart_inst|inst|cnt[26]~85\) # (!\uart_inst|inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(27),
	datad => VCC,
	cin => \uart_inst|inst|cnt[26]~85\,
	combout => \uart_inst|inst|cnt[27]~86_combout\,
	cout => \uart_inst|inst|cnt[27]~87\);

-- Location: FF_X4_Y1_N23
\uart_inst|inst|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[27]~86_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(27));

-- Location: LCCOMB_X4_Y1_N24
\uart_inst|inst|cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[28]~88_combout\ = (\uart_inst|inst|cnt\(28) & (\uart_inst|inst|cnt[27]~87\ $ (GND))) # (!\uart_inst|inst|cnt\(28) & (!\uart_inst|inst|cnt[27]~87\ & VCC))
-- \uart_inst|inst|cnt[28]~89\ = CARRY((\uart_inst|inst|cnt\(28) & !\uart_inst|inst|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(28),
	datad => VCC,
	cin => \uart_inst|inst|cnt[27]~87\,
	combout => \uart_inst|inst|cnt[28]~88_combout\,
	cout => \uart_inst|inst|cnt[28]~89\);

-- Location: FF_X4_Y1_N25
\uart_inst|inst|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[28]~88_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(28));

-- Location: LCCOMB_X4_Y1_N26
\uart_inst|inst|cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[29]~90_combout\ = (\uart_inst|inst|cnt\(29) & (!\uart_inst|inst|cnt[28]~89\)) # (!\uart_inst|inst|cnt\(29) & ((\uart_inst|inst|cnt[28]~89\) # (GND)))
-- \uart_inst|inst|cnt[29]~91\ = CARRY((!\uart_inst|inst|cnt[28]~89\) # (!\uart_inst|inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(29),
	datad => VCC,
	cin => \uart_inst|inst|cnt[28]~89\,
	combout => \uart_inst|inst|cnt[29]~90_combout\,
	cout => \uart_inst|inst|cnt[29]~91\);

-- Location: FF_X4_Y1_N27
\uart_inst|inst|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[29]~90_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(29));

-- Location: LCCOMB_X4_Y1_N28
\uart_inst|inst|cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[30]~92_combout\ = (\uart_inst|inst|cnt\(30) & (\uart_inst|inst|cnt[29]~91\ $ (GND))) # (!\uart_inst|inst|cnt\(30) & (!\uart_inst|inst|cnt[29]~91\ & VCC))
-- \uart_inst|inst|cnt[30]~93\ = CARRY((\uart_inst|inst|cnt\(30) & !\uart_inst|inst|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst|cnt\(30),
	datad => VCC,
	cin => \uart_inst|inst|cnt[29]~91\,
	combout => \uart_inst|inst|cnt[30]~92_combout\,
	cout => \uart_inst|inst|cnt[30]~93\);

-- Location: FF_X4_Y1_N29
\uart_inst|inst|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[30]~92_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(30));

-- Location: LCCOMB_X4_Y1_N30
\uart_inst|inst|cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|cnt[31]~94_combout\ = \uart_inst|inst|cnt\(31) $ (\uart_inst|inst|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(31),
	cin => \uart_inst|inst|cnt[30]~93\,
	combout => \uart_inst|inst|cnt[31]~94_combout\);

-- Location: FF_X4_Y1_N31
\uart_inst|inst|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|cnt[31]~94_combout\,
	sclr => \uart_inst|inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|cnt\(31));

-- Location: LCCOMB_X3_Y2_N24
\uart_inst|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~0_combout\ = (!\uart_inst|inst|cnt\(2) & (!\uart_inst|inst|cnt\(4) & (!\uart_inst|inst|cnt\(5) & !\uart_inst|inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(2),
	datab => \uart_inst|inst|cnt\(4),
	datac => \uart_inst|inst|cnt\(5),
	datad => \uart_inst|inst|cnt\(3),
	combout => \uart_inst|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y2_N30
\uart_inst|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~1_combout\ = ((!\uart_inst|inst|cnt\(7) & ((\uart_inst|inst|LessThan0~0_combout\) # (!\uart_inst|inst|cnt\(6))))) # (!\uart_inst|inst|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(7),
	datab => \uart_inst|inst|cnt\(8),
	datac => \uart_inst|inst|cnt\(6),
	datad => \uart_inst|inst|LessThan0~0_combout\,
	combout => \uart_inst|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X3_Y2_N22
\uart_inst|inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~7_combout\ = (!\uart_inst|inst|cnt\(26) & (!\uart_inst|inst|cnt\(27) & (!\uart_inst|inst|cnt\(25) & !\uart_inst|inst|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(26),
	datab => \uart_inst|inst|cnt\(27),
	datac => \uart_inst|inst|cnt\(25),
	datad => \uart_inst|inst|cnt\(28),
	combout => \uart_inst|inst|LessThan0~7_combout\);

-- Location: LCCOMB_X3_Y2_N12
\uart_inst|inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~2_combout\ = (!\uart_inst|inst|cnt\(10) & (!\uart_inst|inst|cnt\(9) & (!\uart_inst|inst|cnt\(12) & !\uart_inst|inst|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(10),
	datab => \uart_inst|inst|cnt\(9),
	datac => \uart_inst|inst|cnt\(12),
	datad => \uart_inst|inst|cnt\(11),
	combout => \uart_inst|inst|LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y2_N8
\uart_inst|inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~3_combout\ = (!\uart_inst|inst|cnt\(15) & (!\uart_inst|inst|cnt\(14) & (!\uart_inst|inst|cnt\(13) & !\uart_inst|inst|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(15),
	datab => \uart_inst|inst|cnt\(14),
	datac => \uart_inst|inst|cnt\(13),
	datad => \uart_inst|inst|cnt\(16),
	combout => \uart_inst|inst|LessThan0~3_combout\);

-- Location: LCCOMB_X3_Y2_N14
\uart_inst|inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~5_combout\ = (!\uart_inst|inst|cnt\(23) & (!\uart_inst|inst|cnt\(24) & (!\uart_inst|inst|cnt\(22) & !\uart_inst|inst|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(23),
	datab => \uart_inst|inst|cnt\(24),
	datac => \uart_inst|inst|cnt\(22),
	datad => \uart_inst|inst|cnt\(21),
	combout => \uart_inst|inst|LessThan0~5_combout\);

-- Location: LCCOMB_X3_Y2_N2
\uart_inst|inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~4_combout\ = (!\uart_inst|inst|cnt\(20) & (!\uart_inst|inst|cnt\(17) & (!\uart_inst|inst|cnt\(19) & !\uart_inst|inst|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(20),
	datab => \uart_inst|inst|cnt\(17),
	datac => \uart_inst|inst|cnt\(19),
	datad => \uart_inst|inst|cnt\(18),
	combout => \uart_inst|inst|LessThan0~4_combout\);

-- Location: LCCOMB_X3_Y2_N16
\uart_inst|inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~6_combout\ = (\uart_inst|inst|LessThan0~2_combout\ & (\uart_inst|inst|LessThan0~3_combout\ & (\uart_inst|inst|LessThan0~5_combout\ & \uart_inst|inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|LessThan0~2_combout\,
	datab => \uart_inst|inst|LessThan0~3_combout\,
	datac => \uart_inst|inst|LessThan0~5_combout\,
	datad => \uart_inst|inst|LessThan0~4_combout\,
	combout => \uart_inst|inst|LessThan0~6_combout\);

-- Location: LCCOMB_X3_Y2_N28
\uart_inst|inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~8_combout\ = (!\uart_inst|inst|cnt\(30) & (!\uart_inst|inst|cnt\(29) & (\uart_inst|inst|LessThan0~7_combout\ & \uart_inst|inst|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(30),
	datab => \uart_inst|inst|cnt\(29),
	datac => \uart_inst|inst|LessThan0~7_combout\,
	datad => \uart_inst|inst|LessThan0~6_combout\,
	combout => \uart_inst|inst|LessThan0~8_combout\);

-- Location: LCCOMB_X3_Y2_N6
\uart_inst|inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|LessThan0~9_combout\ = (!\uart_inst|inst|cnt\(31) & ((!\uart_inst|inst|LessThan0~8_combout\) # (!\uart_inst|inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst|cnt\(31),
	datac => \uart_inst|inst|LessThan0~1_combout\,
	datad => \uart_inst|inst|LessThan0~8_combout\,
	combout => \uart_inst|inst|LessThan0~9_combout\);

-- Location: LCCOMB_X3_Y2_N0
\uart_inst|inst|bclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst|bclk~feeder_combout\ = \uart_inst|inst|LessThan0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst|LessThan0~9_combout\,
	combout => \uart_inst|inst|bclk~feeder_combout\);

-- Location: FF_X3_Y2_N1
\uart_inst|inst|bclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst|bclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst|bclk~q\);

-- Location: CLKCTRL_G3
\uart_inst|inst|bclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart_inst|inst|bclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart_inst|inst|bclk~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y11_N10
\U14|next_state.t_rst_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t_rst_1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U14|next_state.t_rst_1~feeder_combout\);

-- Location: FF_X24_Y11_N11
\U14|next_state.t_rst_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t_rst_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t_rst_1~q\);

-- Location: FF_X24_Y10_N3
\U14|current_state.t_rst_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t_rst_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t_rst_1~q\);

-- Location: LCCOMB_X24_Y8_N20
\U14|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector4~0_combout\ = (!\U14|current_state.t9~q\ & (!\U14|current_state.t5~q\ & \U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t9~q\,
	datab => \U14|current_state.t5~q\,
	datad => \U14|current_state.t_rst_1~q\,
	combout => \U14|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y8_N30
\U14|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector4~1_combout\ = (\U14|current_state.t4~q\) # ((\U14|current_state.t8~q\) # ((\U14|enirin_latch~q\ & \U14|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t4~q\,
	datab => \U14|enirin_latch~q\,
	datac => \U14|current_state.t8~q\,
	datad => \U14|Selector4~0_combout\,
	combout => \U14|Selector4~1_combout\);

-- Location: LCCOMB_X24_Y8_N0
\U14|enirin_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|enirin_latch~feeder_combout\ = \U14|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector4~1_combout\,
	combout => \U14|enirin_latch~feeder_combout\);

-- Location: FF_X24_Y8_N1
\U14|enirin_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|enirin_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enirin_latch~q\);

-- Location: LCCOMB_X23_Y12_N8
\U14|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~2_combout\ = (\U14|current_state.t13~q\) # ((!\U14|current_state.t14~q\ & \U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datad => \U14|current_state.t13~q\,
	combout => \U14|Selector15~2_combout\);

-- Location: LCCOMB_X23_Y9_N2
\U14|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector12~2_combout\ = (\U14|current_state.t7~q\) # ((\U14|current_state.t3~q\) # ((\U14|enrom_latch~q\ & \U14|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t7~q\,
	datab => \U14|current_state.t3~q\,
	datac => \U14|enrom_latch~q\,
	datad => \U14|Selector4~0_combout\,
	combout => \U14|Selector12~2_combout\);

-- Location: FF_X23_Y9_N3
\U14|enrom_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~q\,
	d => \U14|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enrom_latch~q\);

-- Location: LCCOMB_X22_Y10_N16
\U14|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector25~0_combout\ = (!\U14|current_state.t7~q\ & !\U14|current_state.t3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|current_state.t7~q\,
	datad => \U14|current_state.t3~q\,
	combout => \U14|Selector25~0_combout\);

-- Location: LCCOMB_X22_Y10_N20
\U14|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector25~1_combout\ = (\U14|current_state.t6~q\) # ((\U14|current_state.t2~q\) # ((\U14|romin_latch~q\ & \U14|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t6~q\,
	datab => \U14|romin_latch~q\,
	datac => \U14|current_state.t2~q\,
	datad => \U14|Selector25~0_combout\,
	combout => \U14|Selector25~1_combout\);

-- Location: FF_X22_Y10_N17
\U14|romin_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|Selector25~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|romin_latch~q\);

-- Location: LCCOMB_X11_Y11_N16
\U4|inst3|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|pulse~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U4|inst3|pulse~feeder_combout\);

-- Location: LCCOMB_X11_Y11_N0
\U4|inst3|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[0]~31_combout\ = (!\U4|inst3|Equal0~10_combout\) # (!\U4|inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|inst3|counter\(0),
	datad => \U4|inst3|Equal0~10_combout\,
	combout => \U4|inst3|counter[0]~31_combout\);

-- Location: FF_X12_Y12_N1
\U4|inst3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	asdata => \U4|inst3|counter[0]~31_combout\,
	clrn => \U4|inst3|pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(0));

-- Location: LCCOMB_X12_Y12_N2
\U4|inst3|counter[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[1]~32_combout\ = (\U4|inst3|counter\(0) & (\U4|inst3|counter\(1) $ (VCC))) # (!\U4|inst3|counter\(0) & (\U4|inst3|counter\(1) & VCC))
-- \U4|inst3|counter[1]~33\ = CARRY((\U4|inst3|counter\(0) & \U4|inst3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(0),
	datab => \U4|inst3|counter\(1),
	datad => VCC,
	combout => \U4|inst3|counter[1]~32_combout\,
	cout => \U4|inst3|counter[1]~33\);

-- Location: FF_X12_Y12_N3
\U4|inst3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[1]~32_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(1));

-- Location: LCCOMB_X12_Y12_N4
\U4|inst3|counter[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[2]~34_combout\ = (\U4|inst3|counter\(2) & (!\U4|inst3|counter[1]~33\)) # (!\U4|inst3|counter\(2) & ((\U4|inst3|counter[1]~33\) # (GND)))
-- \U4|inst3|counter[2]~35\ = CARRY((!\U4|inst3|counter[1]~33\) # (!\U4|inst3|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(2),
	datad => VCC,
	cin => \U4|inst3|counter[1]~33\,
	combout => \U4|inst3|counter[2]~34_combout\,
	cout => \U4|inst3|counter[2]~35\);

-- Location: FF_X12_Y12_N5
\U4|inst3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[2]~34_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(2));

-- Location: LCCOMB_X12_Y12_N6
\U4|inst3|counter[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[3]~36_combout\ = (\U4|inst3|counter\(3) & (\U4|inst3|counter[2]~35\ $ (GND))) # (!\U4|inst3|counter\(3) & (!\U4|inst3|counter[2]~35\ & VCC))
-- \U4|inst3|counter[3]~37\ = CARRY((\U4|inst3|counter\(3) & !\U4|inst3|counter[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(3),
	datad => VCC,
	cin => \U4|inst3|counter[2]~35\,
	combout => \U4|inst3|counter[3]~36_combout\,
	cout => \U4|inst3|counter[3]~37\);

-- Location: FF_X12_Y12_N7
\U4|inst3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[3]~36_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(3));

-- Location: LCCOMB_X12_Y12_N8
\U4|inst3|counter[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[4]~38_combout\ = (\U4|inst3|counter\(4) & (!\U4|inst3|counter[3]~37\)) # (!\U4|inst3|counter\(4) & ((\U4|inst3|counter[3]~37\) # (GND)))
-- \U4|inst3|counter[4]~39\ = CARRY((!\U4|inst3|counter[3]~37\) # (!\U4|inst3|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(4),
	datad => VCC,
	cin => \U4|inst3|counter[3]~37\,
	combout => \U4|inst3|counter[4]~38_combout\,
	cout => \U4|inst3|counter[4]~39\);

-- Location: FF_X12_Y12_N9
\U4|inst3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[4]~38_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(4));

-- Location: LCCOMB_X12_Y12_N10
\U4|inst3|counter[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[5]~40_combout\ = (\U4|inst3|counter\(5) & (\U4|inst3|counter[4]~39\ $ (GND))) # (!\U4|inst3|counter\(5) & (!\U4|inst3|counter[4]~39\ & VCC))
-- \U4|inst3|counter[5]~41\ = CARRY((\U4|inst3|counter\(5) & !\U4|inst3|counter[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(5),
	datad => VCC,
	cin => \U4|inst3|counter[4]~39\,
	combout => \U4|inst3|counter[5]~40_combout\,
	cout => \U4|inst3|counter[5]~41\);

-- Location: FF_X12_Y12_N11
\U4|inst3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[5]~40_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(5));

-- Location: LCCOMB_X12_Y12_N12
\U4|inst3|counter[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[6]~42_combout\ = (\U4|inst3|counter\(6) & (!\U4|inst3|counter[5]~41\)) # (!\U4|inst3|counter\(6) & ((\U4|inst3|counter[5]~41\) # (GND)))
-- \U4|inst3|counter[6]~43\ = CARRY((!\U4|inst3|counter[5]~41\) # (!\U4|inst3|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(6),
	datad => VCC,
	cin => \U4|inst3|counter[5]~41\,
	combout => \U4|inst3|counter[6]~42_combout\,
	cout => \U4|inst3|counter[6]~43\);

-- Location: FF_X12_Y12_N13
\U4|inst3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[6]~42_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(6));

-- Location: LCCOMB_X12_Y12_N14
\U4|inst3|counter[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[7]~44_combout\ = (\U4|inst3|counter\(7) & (\U4|inst3|counter[6]~43\ $ (GND))) # (!\U4|inst3|counter\(7) & (!\U4|inst3|counter[6]~43\ & VCC))
-- \U4|inst3|counter[7]~45\ = CARRY((\U4|inst3|counter\(7) & !\U4|inst3|counter[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(7),
	datad => VCC,
	cin => \U4|inst3|counter[6]~43\,
	combout => \U4|inst3|counter[7]~44_combout\,
	cout => \U4|inst3|counter[7]~45\);

-- Location: FF_X12_Y12_N15
\U4|inst3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[7]~44_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(7));

-- Location: LCCOMB_X12_Y12_N16
\U4|inst3|counter[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[8]~46_combout\ = (\U4|inst3|counter\(8) & (!\U4|inst3|counter[7]~45\)) # (!\U4|inst3|counter\(8) & ((\U4|inst3|counter[7]~45\) # (GND)))
-- \U4|inst3|counter[8]~47\ = CARRY((!\U4|inst3|counter[7]~45\) # (!\U4|inst3|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(8),
	datad => VCC,
	cin => \U4|inst3|counter[7]~45\,
	combout => \U4|inst3|counter[8]~46_combout\,
	cout => \U4|inst3|counter[8]~47\);

-- Location: FF_X12_Y12_N17
\U4|inst3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[8]~46_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(8));

-- Location: LCCOMB_X12_Y12_N18
\U4|inst3|counter[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[9]~48_combout\ = (\U4|inst3|counter\(9) & (\U4|inst3|counter[8]~47\ $ (GND))) # (!\U4|inst3|counter\(9) & (!\U4|inst3|counter[8]~47\ & VCC))
-- \U4|inst3|counter[9]~49\ = CARRY((\U4|inst3|counter\(9) & !\U4|inst3|counter[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(9),
	datad => VCC,
	cin => \U4|inst3|counter[8]~47\,
	combout => \U4|inst3|counter[9]~48_combout\,
	cout => \U4|inst3|counter[9]~49\);

-- Location: FF_X12_Y12_N19
\U4|inst3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[9]~48_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(9));

-- Location: LCCOMB_X12_Y12_N20
\U4|inst3|counter[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[10]~50_combout\ = (\U4|inst3|counter\(10) & (!\U4|inst3|counter[9]~49\)) # (!\U4|inst3|counter\(10) & ((\U4|inst3|counter[9]~49\) # (GND)))
-- \U4|inst3|counter[10]~51\ = CARRY((!\U4|inst3|counter[9]~49\) # (!\U4|inst3|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(10),
	datad => VCC,
	cin => \U4|inst3|counter[9]~49\,
	combout => \U4|inst3|counter[10]~50_combout\,
	cout => \U4|inst3|counter[10]~51\);

-- Location: FF_X12_Y12_N21
\U4|inst3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[10]~50_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(10));

-- Location: LCCOMB_X12_Y12_N22
\U4|inst3|counter[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[11]~52_combout\ = (\U4|inst3|counter\(11) & (\U4|inst3|counter[10]~51\ $ (GND))) # (!\U4|inst3|counter\(11) & (!\U4|inst3|counter[10]~51\ & VCC))
-- \U4|inst3|counter[11]~53\ = CARRY((\U4|inst3|counter\(11) & !\U4|inst3|counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(11),
	datad => VCC,
	cin => \U4|inst3|counter[10]~51\,
	combout => \U4|inst3|counter[11]~52_combout\,
	cout => \U4|inst3|counter[11]~53\);

-- Location: FF_X12_Y12_N23
\U4|inst3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[11]~52_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(11));

-- Location: LCCOMB_X12_Y12_N24
\U4|inst3|counter[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[12]~54_combout\ = (\U4|inst3|counter\(12) & (!\U4|inst3|counter[11]~53\)) # (!\U4|inst3|counter\(12) & ((\U4|inst3|counter[11]~53\) # (GND)))
-- \U4|inst3|counter[12]~55\ = CARRY((!\U4|inst3|counter[11]~53\) # (!\U4|inst3|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(12),
	datad => VCC,
	cin => \U4|inst3|counter[11]~53\,
	combout => \U4|inst3|counter[12]~54_combout\,
	cout => \U4|inst3|counter[12]~55\);

-- Location: FF_X12_Y12_N25
\U4|inst3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[12]~54_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(12));

-- Location: LCCOMB_X12_Y12_N26
\U4|inst3|counter[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[13]~56_combout\ = (\U4|inst3|counter\(13) & (\U4|inst3|counter[12]~55\ $ (GND))) # (!\U4|inst3|counter\(13) & (!\U4|inst3|counter[12]~55\ & VCC))
-- \U4|inst3|counter[13]~57\ = CARRY((\U4|inst3|counter\(13) & !\U4|inst3|counter[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(13),
	datad => VCC,
	cin => \U4|inst3|counter[12]~55\,
	combout => \U4|inst3|counter[13]~56_combout\,
	cout => \U4|inst3|counter[13]~57\);

-- Location: FF_X12_Y12_N27
\U4|inst3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[13]~56_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(13));

-- Location: LCCOMB_X12_Y12_N28
\U4|inst3|counter[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[14]~58_combout\ = (\U4|inst3|counter\(14) & (!\U4|inst3|counter[13]~57\)) # (!\U4|inst3|counter\(14) & ((\U4|inst3|counter[13]~57\) # (GND)))
-- \U4|inst3|counter[14]~59\ = CARRY((!\U4|inst3|counter[13]~57\) # (!\U4|inst3|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(14),
	datad => VCC,
	cin => \U4|inst3|counter[13]~57\,
	combout => \U4|inst3|counter[14]~58_combout\,
	cout => \U4|inst3|counter[14]~59\);

-- Location: FF_X12_Y12_N29
\U4|inst3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[14]~58_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(14));

-- Location: LCCOMB_X12_Y12_N30
\U4|inst3|counter[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[15]~60_combout\ = (\U4|inst3|counter\(15) & (\U4|inst3|counter[14]~59\ $ (GND))) # (!\U4|inst3|counter\(15) & (!\U4|inst3|counter[14]~59\ & VCC))
-- \U4|inst3|counter[15]~61\ = CARRY((\U4|inst3|counter\(15) & !\U4|inst3|counter[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(15),
	datad => VCC,
	cin => \U4|inst3|counter[14]~59\,
	combout => \U4|inst3|counter[15]~60_combout\,
	cout => \U4|inst3|counter[15]~61\);

-- Location: LCCOMB_X11_Y12_N12
\U4|inst3|counter[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[15]~feeder_combout\ = \U4|inst3|counter[15]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|inst3|counter[15]~60_combout\,
	combout => \U4|inst3|counter[15]~feeder_combout\);

-- Location: FF_X11_Y12_N13
\U4|inst3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[15]~feeder_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(15));

-- Location: LCCOMB_X12_Y11_N0
\U4|inst3|counter[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[16]~62_combout\ = (\U4|inst3|counter\(16) & (!\U4|inst3|counter[15]~61\)) # (!\U4|inst3|counter\(16) & ((\U4|inst3|counter[15]~61\) # (GND)))
-- \U4|inst3|counter[16]~63\ = CARRY((!\U4|inst3|counter[15]~61\) # (!\U4|inst3|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(16),
	datad => VCC,
	cin => \U4|inst3|counter[15]~61\,
	combout => \U4|inst3|counter[16]~62_combout\,
	cout => \U4|inst3|counter[16]~63\);

-- Location: FF_X12_Y11_N1
\U4|inst3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[16]~62_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(16));

-- Location: LCCOMB_X12_Y11_N2
\U4|inst3|counter[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[17]~64_combout\ = (\U4|inst3|counter\(17) & (\U4|inst3|counter[16]~63\ $ (GND))) # (!\U4|inst3|counter\(17) & (!\U4|inst3|counter[16]~63\ & VCC))
-- \U4|inst3|counter[17]~65\ = CARRY((\U4|inst3|counter\(17) & !\U4|inst3|counter[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(17),
	datad => VCC,
	cin => \U4|inst3|counter[16]~63\,
	combout => \U4|inst3|counter[17]~64_combout\,
	cout => \U4|inst3|counter[17]~65\);

-- Location: FF_X12_Y11_N3
\U4|inst3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[17]~64_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(17));

-- Location: LCCOMB_X12_Y11_N4
\U4|inst3|counter[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[18]~66_combout\ = (\U4|inst3|counter\(18) & (!\U4|inst3|counter[17]~65\)) # (!\U4|inst3|counter\(18) & ((\U4|inst3|counter[17]~65\) # (GND)))
-- \U4|inst3|counter[18]~67\ = CARRY((!\U4|inst3|counter[17]~65\) # (!\U4|inst3|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(18),
	datad => VCC,
	cin => \U4|inst3|counter[17]~65\,
	combout => \U4|inst3|counter[18]~66_combout\,
	cout => \U4|inst3|counter[18]~67\);

-- Location: FF_X12_Y11_N5
\U4|inst3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[18]~66_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(18));

-- Location: LCCOMB_X12_Y11_N6
\U4|inst3|counter[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[19]~68_combout\ = (\U4|inst3|counter\(19) & (\U4|inst3|counter[18]~67\ $ (GND))) # (!\U4|inst3|counter\(19) & (!\U4|inst3|counter[18]~67\ & VCC))
-- \U4|inst3|counter[19]~69\ = CARRY((\U4|inst3|counter\(19) & !\U4|inst3|counter[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(19),
	datad => VCC,
	cin => \U4|inst3|counter[18]~67\,
	combout => \U4|inst3|counter[19]~68_combout\,
	cout => \U4|inst3|counter[19]~69\);

-- Location: FF_X12_Y11_N7
\U4|inst3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[19]~68_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(19));

-- Location: LCCOMB_X11_Y11_N26
\U4|inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~5_combout\ = (!\U4|inst3|counter\(19) & (!\U4|inst3|counter\(16) & (!\U4|inst3|counter\(18) & !\U4|inst3|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(19),
	datab => \U4|inst3|counter\(16),
	datac => \U4|inst3|counter\(18),
	datad => \U4|inst3|counter\(17),
	combout => \U4|inst3|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y11_N8
\U4|inst3|counter[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[20]~70_combout\ = (\U4|inst3|counter\(20) & (!\U4|inst3|counter[19]~69\)) # (!\U4|inst3|counter\(20) & ((\U4|inst3|counter[19]~69\) # (GND)))
-- \U4|inst3|counter[20]~71\ = CARRY((!\U4|inst3|counter[19]~69\) # (!\U4|inst3|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(20),
	datad => VCC,
	cin => \U4|inst3|counter[19]~69\,
	combout => \U4|inst3|counter[20]~70_combout\,
	cout => \U4|inst3|counter[20]~71\);

-- Location: FF_X12_Y11_N9
\U4|inst3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[20]~70_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(20));

-- Location: LCCOMB_X12_Y11_N10
\U4|inst3|counter[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[21]~72_combout\ = (\U4|inst3|counter\(21) & (\U4|inst3|counter[20]~71\ $ (GND))) # (!\U4|inst3|counter\(21) & (!\U4|inst3|counter[20]~71\ & VCC))
-- \U4|inst3|counter[21]~73\ = CARRY((\U4|inst3|counter\(21) & !\U4|inst3|counter[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(21),
	datad => VCC,
	cin => \U4|inst3|counter[20]~71\,
	combout => \U4|inst3|counter[21]~72_combout\,
	cout => \U4|inst3|counter[21]~73\);

-- Location: FF_X12_Y11_N11
\U4|inst3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[21]~72_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(21));

-- Location: LCCOMB_X12_Y11_N12
\U4|inst3|counter[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[22]~74_combout\ = (\U4|inst3|counter\(22) & (!\U4|inst3|counter[21]~73\)) # (!\U4|inst3|counter\(22) & ((\U4|inst3|counter[21]~73\) # (GND)))
-- \U4|inst3|counter[22]~75\ = CARRY((!\U4|inst3|counter[21]~73\) # (!\U4|inst3|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(22),
	datad => VCC,
	cin => \U4|inst3|counter[21]~73\,
	combout => \U4|inst3|counter[22]~74_combout\,
	cout => \U4|inst3|counter[22]~75\);

-- Location: FF_X12_Y11_N13
\U4|inst3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[22]~74_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(22));

-- Location: LCCOMB_X12_Y11_N14
\U4|inst3|counter[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[23]~76_combout\ = (\U4|inst3|counter\(23) & (\U4|inst3|counter[22]~75\ $ (GND))) # (!\U4|inst3|counter\(23) & (!\U4|inst3|counter[22]~75\ & VCC))
-- \U4|inst3|counter[23]~77\ = CARRY((\U4|inst3|counter\(23) & !\U4|inst3|counter[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(23),
	datad => VCC,
	cin => \U4|inst3|counter[22]~75\,
	combout => \U4|inst3|counter[23]~76_combout\,
	cout => \U4|inst3|counter[23]~77\);

-- Location: FF_X12_Y11_N15
\U4|inst3|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[23]~76_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(23));

-- Location: LCCOMB_X12_Y11_N16
\U4|inst3|counter[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[24]~78_combout\ = (\U4|inst3|counter\(24) & (!\U4|inst3|counter[23]~77\)) # (!\U4|inst3|counter\(24) & ((\U4|inst3|counter[23]~77\) # (GND)))
-- \U4|inst3|counter[24]~79\ = CARRY((!\U4|inst3|counter[23]~77\) # (!\U4|inst3|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(24),
	datad => VCC,
	cin => \U4|inst3|counter[23]~77\,
	combout => \U4|inst3|counter[24]~78_combout\,
	cout => \U4|inst3|counter[24]~79\);

-- Location: FF_X12_Y11_N17
\U4|inst3|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[24]~78_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(24));

-- Location: LCCOMB_X12_Y11_N18
\U4|inst3|counter[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[25]~80_combout\ = (\U4|inst3|counter\(25) & (\U4|inst3|counter[24]~79\ $ (GND))) # (!\U4|inst3|counter\(25) & (!\U4|inst3|counter[24]~79\ & VCC))
-- \U4|inst3|counter[25]~81\ = CARRY((\U4|inst3|counter\(25) & !\U4|inst3|counter[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(25),
	datad => VCC,
	cin => \U4|inst3|counter[24]~79\,
	combout => \U4|inst3|counter[25]~80_combout\,
	cout => \U4|inst3|counter[25]~81\);

-- Location: FF_X12_Y11_N19
\U4|inst3|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[25]~80_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(25));

-- Location: LCCOMB_X12_Y11_N20
\U4|inst3|counter[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[26]~82_combout\ = (\U4|inst3|counter\(26) & (!\U4|inst3|counter[25]~81\)) # (!\U4|inst3|counter\(26) & ((\U4|inst3|counter[25]~81\) # (GND)))
-- \U4|inst3|counter[26]~83\ = CARRY((!\U4|inst3|counter[25]~81\) # (!\U4|inst3|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(26),
	datad => VCC,
	cin => \U4|inst3|counter[25]~81\,
	combout => \U4|inst3|counter[26]~82_combout\,
	cout => \U4|inst3|counter[26]~83\);

-- Location: FF_X12_Y11_N21
\U4|inst3|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[26]~82_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(26));

-- Location: LCCOMB_X12_Y11_N22
\U4|inst3|counter[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[27]~84_combout\ = (\U4|inst3|counter\(27) & (\U4|inst3|counter[26]~83\ $ (GND))) # (!\U4|inst3|counter\(27) & (!\U4|inst3|counter[26]~83\ & VCC))
-- \U4|inst3|counter[27]~85\ = CARRY((\U4|inst3|counter\(27) & !\U4|inst3|counter[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(27),
	datad => VCC,
	cin => \U4|inst3|counter[26]~83\,
	combout => \U4|inst3|counter[27]~84_combout\,
	cout => \U4|inst3|counter[27]~85\);

-- Location: FF_X12_Y11_N23
\U4|inst3|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[27]~84_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(27));

-- Location: LCCOMB_X11_Y11_N20
\U4|inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~7_combout\ = (!\U4|inst3|counter\(27) & (!\U4|inst3|counter\(25) & (!\U4|inst3|counter\(26) & !\U4|inst3|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(27),
	datab => \U4|inst3|counter\(25),
	datac => \U4|inst3|counter\(26),
	datad => \U4|inst3|counter\(24),
	combout => \U4|inst3|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y11_N30
\U4|inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~6_combout\ = (!\U4|inst3|counter\(23) & (!\U4|inst3|counter\(22) & (!\U4|inst3|counter\(20) & !\U4|inst3|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(23),
	datab => \U4|inst3|counter\(22),
	datac => \U4|inst3|counter\(20),
	datad => \U4|inst3|counter\(21),
	combout => \U4|inst3|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y11_N24
\U4|inst3|counter[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[28]~86_combout\ = (\U4|inst3|counter\(28) & (!\U4|inst3|counter[27]~85\)) # (!\U4|inst3|counter\(28) & ((\U4|inst3|counter[27]~85\) # (GND)))
-- \U4|inst3|counter[28]~87\ = CARRY((!\U4|inst3|counter[27]~85\) # (!\U4|inst3|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(28),
	datad => VCC,
	cin => \U4|inst3|counter[27]~85\,
	combout => \U4|inst3|counter[28]~86_combout\,
	cout => \U4|inst3|counter[28]~87\);

-- Location: FF_X12_Y11_N25
\U4|inst3|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[28]~86_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(28));

-- Location: LCCOMB_X12_Y11_N26
\U4|inst3|counter[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[29]~88_combout\ = (\U4|inst3|counter\(29) & (\U4|inst3|counter[28]~87\ $ (GND))) # (!\U4|inst3|counter\(29) & (!\U4|inst3|counter[28]~87\ & VCC))
-- \U4|inst3|counter[29]~89\ = CARRY((\U4|inst3|counter\(29) & !\U4|inst3|counter[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(29),
	datad => VCC,
	cin => \U4|inst3|counter[28]~87\,
	combout => \U4|inst3|counter[29]~88_combout\,
	cout => \U4|inst3|counter[29]~89\);

-- Location: FF_X12_Y11_N27
\U4|inst3|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[29]~88_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(29));

-- Location: LCCOMB_X12_Y11_N28
\U4|inst3|counter[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[30]~90_combout\ = (\U4|inst3|counter\(30) & (!\U4|inst3|counter[29]~89\)) # (!\U4|inst3|counter\(30) & ((\U4|inst3|counter[29]~89\) # (GND)))
-- \U4|inst3|counter[30]~91\ = CARRY((!\U4|inst3|counter[29]~89\) # (!\U4|inst3|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|inst3|counter\(30),
	datad => VCC,
	cin => \U4|inst3|counter[29]~89\,
	combout => \U4|inst3|counter[30]~90_combout\,
	cout => \U4|inst3|counter[30]~91\);

-- Location: FF_X12_Y11_N29
\U4|inst3|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[30]~90_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(30));

-- Location: LCCOMB_X12_Y11_N30
\U4|inst3|counter[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[31]~92_combout\ = \U4|inst3|counter\(31) $ (!\U4|inst3|counter[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(31),
	cin => \U4|inst3|counter[30]~91\,
	combout => \U4|inst3|counter[31]~92_combout\);

-- Location: FF_X12_Y11_N31
\U4|inst3|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[31]~92_combout\,
	clrn => \U4|inst3|pulse~q\,
	ena => \U4|inst3|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(31));

-- Location: LCCOMB_X11_Y11_N24
\U4|inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~8_combout\ = (!\U4|inst3|counter\(31) & (!\U4|inst3|counter\(29) & (!\U4|inst3|counter\(30) & !\U4|inst3|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(31),
	datab => \U4|inst3|counter\(29),
	datac => \U4|inst3|counter\(30),
	datad => \U4|inst3|counter\(28),
	combout => \U4|inst3|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y11_N10
\U4|inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~9_combout\ = (\U4|inst3|Equal0~5_combout\ & (\U4|inst3|Equal0~7_combout\ & (\U4|inst3|Equal0~6_combout\ & \U4|inst3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|Equal0~5_combout\,
	datab => \U4|inst3|Equal0~7_combout\,
	datac => \U4|inst3|Equal0~6_combout\,
	datad => \U4|inst3|Equal0~8_combout\,
	combout => \U4|inst3|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y12_N28
\U4|inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~4_combout\ = (!\U4|inst3|counter\(15) & (!\U4|inst3|counter\(14) & (!\U4|inst3|counter\(13) & !\U4|inst3|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(15),
	datab => \U4|inst3|counter\(14),
	datac => \U4|inst3|counter\(13),
	datad => \U4|inst3|counter\(12),
	combout => \U4|inst3|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y12_N18
\U4|inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~3_combout\ = (!\U4|inst3|counter\(10) & (!\U4|inst3|counter\(8) & (!\U4|inst3|counter\(11) & !\U4|inst3|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(10),
	datab => \U4|inst3|counter\(8),
	datac => \U4|inst3|counter\(11),
	datad => \U4|inst3|counter\(9),
	combout => \U4|inst3|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y12_N0
\U4|inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~0_combout\ = (!\U4|inst3|counter\(3) & (!\U4|inst3|counter\(2) & (\U4|inst3|counter\(0) & \U4|inst3|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(3),
	datab => \U4|inst3|counter\(2),
	datac => \U4|inst3|counter\(0),
	datad => \U4|inst3|counter\(1),
	combout => \U4|inst3|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y11_N18
\U4|inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~1_combout\ = (!\U4|inst3|counter\(6) & !\U4|inst3|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|inst3|counter\(6),
	datad => \U4|inst3|counter\(7),
	combout => \U4|inst3|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y11_N28
\U4|inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~2_combout\ = (!\U4|inst3|counter\(5) & (!\U4|inst3|counter\(4) & (\U4|inst3|Equal0~0_combout\ & \U4|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(5),
	datab => \U4|inst3|counter\(4),
	datac => \U4|inst3|Equal0~0_combout\,
	datad => \U4|inst3|Equal0~1_combout\,
	combout => \U4|inst3|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y11_N12
\U4|inst3|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|Equal0~10_combout\ = (((!\U4|inst3|Equal0~2_combout\) # (!\U4|inst3|Equal0~3_combout\)) # (!\U4|inst3|Equal0~4_combout\)) # (!\U4|inst3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|Equal0~9_combout\,
	datab => \U4|inst3|Equal0~4_combout\,
	datac => \U4|inst3|Equal0~3_combout\,
	datad => \U4|inst3|Equal0~2_combout\,
	combout => \U4|inst3|Equal0~10_combout\);

-- Location: LCCOMB_X11_Y11_N2
\U4|inst3|stop_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|stop_counter~0_combout\ = (\U4|inst3|stop_counter~q\) # (!\U4|inst3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|stop_counter~q\,
	datad => \U4|inst3|Equal0~10_combout\,
	combout => \U4|inst3|stop_counter~0_combout\);

-- Location: LCCOMB_X11_Y11_N14
\U4|inst3|stop_counter~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|stop_counter~feeder_combout\ = \U4|inst3|stop_counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|inst3|stop_counter~0_combout\,
	combout => \U4|inst3|stop_counter~feeder_combout\);

-- Location: FF_X11_Y11_N15
\U4|inst3|stop_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|stop_counter~feeder_combout\,
	clrn => \U4|inst3|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|stop_counter~q\);

-- Location: FF_X11_Y11_N17
\U4|inst3|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|romin_latch~q\,
	d => \U4|inst3|pulse~feeder_combout\,
	clrn => \U4|inst3|ALT_INV_stop_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|pulse~q\);

-- Location: LCCOMB_X26_Y10_N0
\U4|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst2~combout\ = LCELL((\U14|enrom_latch~q\) # (\U4|inst3|pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|enrom_latch~q\,
	datad => \U4|inst3|pulse~q\,
	combout => \U4|inst2~combout\);

-- Location: LCCOMB_X22_Y11_N22
\U14|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector13~3_combout\ = (\U14|current_state.t11~q\) # ((\U14|current_state.t12~q\ & (!\U6|Mux10~0_combout\)) # (!\U14|current_state.t12~q\ & ((\U14|current_state.t_rst_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U6|Mux10~0_combout\,
	datac => \U14|current_state.t_rst_1~q\,
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector13~3_combout\);

-- Location: LCCOMB_X22_Y11_N18
\U14|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector13~2_combout\ = (\U14|ramin_latch~q\ & ((\U14|Selector13~3_combout\) # ((\U6|Mux10~0_combout\ & \U14|current_state.t11~q\)))) # (!\U14|ramin_latch~q\ & (\U6|Mux10~0_combout\ & ((\U14|current_state.t11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramin_latch~q\,
	datab => \U6|Mux10~0_combout\,
	datac => \U14|Selector13~3_combout\,
	datad => \U14|current_state.t11~q\,
	combout => \U14|Selector13~2_combout\);

-- Location: LCCOMB_X22_Y11_N0
\U14|ramin_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|ramin_latch~feeder_combout\ = \U14|Selector13~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector13~2_combout\,
	combout => \U14|ramin_latch~feeder_combout\);

-- Location: FF_X22_Y11_N1
\U14|ramin_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|ramin_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ramin_latch~q\);

-- Location: FF_X26_Y13_N29
\U3|inst1|address_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	asdata => \data_out[0]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(0));

-- Location: LCCOMB_X26_Y9_N28
\U3|inst1|address_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|inst1|address_latch[2]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~35_combout\,
	combout => \U3|inst1|address_latch[2]~feeder_combout\);

-- Location: FF_X26_Y9_N29
\U3|inst1|address_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|inst1|address_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(2));

-- Location: LCCOMB_X26_Y12_N10
\U3|inst1|address_latch[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|inst1|address_latch[3]~feeder_combout\ = \data_out[3]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[3]~42_combout\,
	combout => \U3|inst1|address_latch[3]~feeder_combout\);

-- Location: FF_X26_Y12_N11
\U3|inst1|address_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|inst1|address_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(3));

-- Location: LCCOMB_X23_Y11_N10
\U5|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|state~0_combout\ = !\U5|state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|state~q\,
	combout => \U5|state~0_combout\);

-- Location: FF_X23_Y11_N11
\U5|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|state~q\);

-- Location: FF_X22_Y9_N13
\U5|instruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[4]~49_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(12));

-- Location: LCCOMB_X22_Y9_N30
\U6|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux0~6_combout\ = (\U5|instruction\(15) & !\U5|instruction\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(15),
	datad => \U5|instruction\(12),
	combout => \U6|Mux0~6_combout\);

-- Location: LCCOMB_X22_Y9_N14
\U6|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux1~4_combout\ = (\U5|instruction\(13) & !\U5|instruction\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datad => \U5|instruction\(14),
	combout => \U6|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y9_N26
\U6|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux7~0_combout\ = (\U5|instruction\(11) & (((\U5|instruction\(12))))) # (!\U5|instruction\(11) & (!\U5|instruction\(13) & (\U5|instruction\(12) $ (\U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(14),
	combout => \U6|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y10_N6
\U14|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~2_combout\ = (\U14|current_state.t13~q\ & (!\U5|instruction\(15) & (!\U6|Mux7~0_combout\ & \U6|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t13~q\,
	datab => \U5|instruction\(15),
	datac => \U6|Mux7~0_combout\,
	datad => \U6|Mux8~0_combout\,
	combout => \U14|Selector5~2_combout\);

-- Location: LCCOMB_X21_Y9_N12
\U6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux3~0_combout\ = (!\U5|instruction\(13) & !\U5|instruction\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|instruction\(13),
	datad => \U5|instruction\(14),
	combout => \U6|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y9_N30
\U6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux6~0_combout\ = (!\U5|instruction\(15) & (\U5|instruction\(11) & (!\U5|instruction\(12) & \U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(12),
	datad => \U6|Mux3~0_combout\,
	combout => \U6|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y10_N6
\U14|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector17~4_combout\ = (\U14|current_state.t_rst_1~q\ & !\U14|current_state.t12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t_rst_1~q\,
	datab => \U14|current_state.t12~q\,
	combout => \U14|Selector17~4_combout\);

-- Location: LCCOMB_X22_Y9_N6
\U6|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux8~1_combout\ = (\U6|Mux8~0_combout\ & !\U5|instruction\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Mux8~0_combout\,
	datad => \U5|instruction\(15),
	combout => \U6|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y11_N28
\U14|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~0_combout\ = (!\U14|current_state.t13~q\ & !\U14|current_state.t11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|current_state.t13~q\,
	datad => \U14|current_state.t11~q\,
	combout => \U14|Selector5~0_combout\);

-- Location: LCCOMB_X22_Y10_N26
\U14|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~3_combout\ = ((\U14|current_state.t14~q\ & ((!\U6|Mux8~1_combout\))) # (!\U14|current_state.t14~q\ & (\U14|Selector17~4_combout\))) # (!\U14|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|Selector17~4_combout\,
	datac => \U6|Mux8~1_combout\,
	datad => \U14|Selector5~0_combout\,
	combout => \U14|Selector5~3_combout\);

-- Location: LCCOMB_X23_Y12_N24
\U6|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux7~1_combout\ = (\U6|Mux7~0_combout\ & !\U5|instruction\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|Mux7~0_combout\,
	datad => \U5|instruction\(15),
	combout => \U6|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y10_N8
\U14|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~4_combout\ = (\U14|Selector5~3_combout\) # ((\U14|current_state.t12~q\ & ((\U6|Mux6~0_combout\) # (!\U6|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux6~0_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|Selector5~3_combout\,
	datad => \U6|Mux7~1_combout\,
	combout => \U14|Selector5~4_combout\);

-- Location: LCCOMB_X22_Y9_N28
\U6|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux1~5_combout\ = (\U5|instruction\(12) & \U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datad => \U5|instruction\(11),
	combout => \U6|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y9_N18
\U6|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux1~6_combout\ = (\U5|instruction\(13) & (\U6|Mux1~5_combout\ & (\U5|instruction\(15) & !\U5|instruction\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U6|Mux1~5_combout\,
	datac => \U5|instruction\(15),
	datad => \U5|instruction\(14),
	combout => \U6|Mux1~6_combout\);

-- Location: LCCOMB_X22_Y10_N24
\U14|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~1_combout\ = (!\U6|Mux6~0_combout\ & (\U14|current_state.t11~q\ & (!\U6|Mux1~6_combout\ & \U6|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux6~0_combout\,
	datab => \U14|current_state.t11~q\,
	datac => \U6|Mux1~6_combout\,
	datad => \U6|Mux7~1_combout\,
	combout => \U14|Selector5~1_combout\);

-- Location: LCCOMB_X22_Y10_N2
\U14|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~5_combout\ = (\U14|Selector5~2_combout\) # ((\U14|Selector5~1_combout\) # ((\U14|enalu_latch~q\ & \U14|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector5~2_combout\,
	datab => \U14|enalu_latch~q\,
	datac => \U14|Selector5~4_combout\,
	datad => \U14|Selector5~1_combout\,
	combout => \U14|Selector5~5_combout\);

-- Location: LCCOMB_X22_Y10_N0
\U14|enalu_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|enalu_latch~feeder_combout\ = \U14|Selector5~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector5~5_combout\,
	combout => \U14|enalu_latch~feeder_combout\);

-- Location: FF_X22_Y10_N1
\U14|enalu_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|enalu_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enalu_latch~q\);

-- Location: LCCOMB_X22_Y11_N20
\U14|Selector7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector7~12_combout\ = (\U6|Mux8~0_combout\ & (!\U5|instruction\(15) & (!\U6|Mux7~0_combout\ & !\U6|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux8~0_combout\,
	datab => \U5|instruction\(15),
	datac => \U6|Mux7~0_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector7~12_combout\);

-- Location: LCCOMB_X22_Y11_N10
\U14|Selector7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector7~11_combout\ = (\U14|current_state.t11~q\) # ((\U14|current_state.t12~q\ & ((!\U14|Selector7~12_combout\))) # (!\U14|current_state.t12~q\ & (\U14|current_state.t_rst_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|current_state.t_rst_1~q\,
	datad => \U14|Selector7~12_combout\,
	combout => \U14|Selector7~11_combout\);

-- Location: LCCOMB_X22_Y11_N8
\U14|Selector7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector7~10_combout\ = (\U14|current_state.t11~q\ & ((\U14|Selector7~12_combout\) # ((\U14|dbfbin_latch~q\ & \U14|Selector7~11_combout\)))) # (!\U14|current_state.t11~q\ & (((\U14|dbfbin_latch~q\ & \U14|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|Selector7~12_combout\,
	datac => \U14|dbfbin_latch~q\,
	datad => \U14|Selector7~11_combout\,
	combout => \U14|Selector7~10_combout\);

-- Location: FF_X22_Y11_N9
\U14|dbfbin_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|dbfbin_latch~q\);

-- Location: FF_X26_Y11_N3
\U3|inst1|address_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	asdata => \data_out[5]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(5));

-- Location: LCCOMB_X26_Y9_N18
\U3|inst1|address_latch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|inst1|address_latch[6]~feeder_combout\ = \data_out[6]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[6]~63_combout\,
	combout => \U3|inst1|address_latch[6]~feeder_combout\);

-- Location: FF_X26_Y9_N19
\U3|inst1|address_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|inst1|address_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(6));

-- Location: LCCOMB_X26_Y10_N20
\U3|inst1|address_latch[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|inst1|address_latch[7]~feeder_combout\ = \data_out[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~70_combout\,
	combout => \U3|inst1|address_latch[7]~feeder_combout\);

-- Location: FF_X26_Y10_N21
\U3|inst1|address_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|inst1|address_latch[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(7));

-- Location: M9K_X27_Y10_N0
\U3|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_new:U3|ram_new_ram:inst|altsyncram:altsyncram_component|altsyncram_2kn3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portare => VCC,
	clk0 => \U14|ramwt_latch~q\,
	clk1 => \U14|ramrd_latch~q\,
	portadatain => \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U3|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y11_N0
\U4|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800900020000C0000040090003FC00C0000000090",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom_init.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom_new:U4|rom_new_rom:inst|altsyncram:altsyncram_component|altsyncram_kdr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U4|inst2~combout\,
	portaaddr => \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y9_N30
\data_out[7]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~64_combout\ = (\U14|ramrd_latch~q\ & ((\U3|inst|altsyncram_component|auto_generated|q_a\(7)) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(7))))) # (!\U14|ramrd_latch~q\ & (\U14|enrom_latch~q\ & 
-- ((\U4|inst|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \U14|enrom_latch~q\,
	datac => \U3|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \data_out[7]~64_combout\);

-- Location: LCCOMB_X23_Y9_N0
\U5|instruction[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[7]~feeder_combout\ = \data_out[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~70_combout\,
	combout => \U5|instruction[7]~feeder_combout\);

-- Location: FF_X23_Y9_N1
\U5|instruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[7]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(7));

-- Location: LCCOMB_X22_Y10_N12
\U14|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector3~0_combout\ = (\U14|enpcout_latch~q\ & ((\U14|current_state.t11~q\) # ((\U14|current_state.t_rst_1~q\ & \U14|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t_rst_1~q\,
	datab => \U14|enpcout_latch~q\,
	datac => \U14|current_state.t11~q\,
	datad => \U14|Selector25~0_combout\,
	combout => \U14|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y9_N22
\U14|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~0_combout\ = (\U5|instruction\(15)) # ((!\U6|Mux8~0_combout\ & !\U6|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U6|Mux8~0_combout\,
	datad => \U6|Mux7~0_combout\,
	combout => \U14|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\U14|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~1_combout\ = (!\U6|Mux6~0_combout\ & (((!\U6|Mux1~4_combout\) # (!\U6|Mux1~5_combout\)) # (!\U5|instruction\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U6|Mux1~5_combout\,
	datac => \U6|Mux1~4_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector1~1_combout\);

-- Location: LCCOMB_X22_Y9_N4
\U6|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux9~0_combout\ = (!\U5|instruction\(14) & (!\U5|instruction\(15) & (!\U5|instruction\(11) & \U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(13),
	combout => \U6|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y11_N18
\U14|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~3_combout\ = (\U6|Mux0~6_combout\ & (!\U5|instruction\(11) & (\U6|Mux1~4_combout\ & !\U8|zero_flag_latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux0~6_combout\,
	datab => \U5|instruction\(11),
	datac => \U6|Mux1~4_combout\,
	datad => \U8|zero_flag_latch~combout\,
	combout => \U14|process_0~3_combout\);

-- Location: LCCOMB_X23_Y11_N4
\U14|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~4_combout\ = (!\U14|process_0~3_combout\ & ((!\U6|Mux9~0_combout\) # (!\U5|instruction\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datac => \U6|Mux9~0_combout\,
	datad => \U14|process_0~3_combout\,
	combout => \U14|process_0~4_combout\);

-- Location: LCCOMB_X23_Y10_N18
\U14|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~2_combout\ = (\U14|current_state.t11~q\ & (\U14|Selector1~0_combout\ & (\U14|Selector1~1_combout\ & !\U14|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|Selector1~0_combout\,
	datac => \U14|Selector1~1_combout\,
	datad => \U14|process_0~4_combout\,
	combout => \U14|Selector1~2_combout\);

-- Location: LCCOMB_X22_Y10_N14
\U14|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector3~1_combout\ = (\U14|Selector3~0_combout\) # ((\U14|current_state.t1~q\) # ((\U14|current_state.t5~q\) # (\U14|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector3~0_combout\,
	datab => \U14|current_state.t1~q\,
	datac => \U14|current_state.t5~q\,
	datad => \U14|Selector1~2_combout\,
	combout => \U14|Selector3~1_combout\);

-- Location: FF_X22_Y10_N15
\U14|enpcout_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enpcout_latch~q\);

-- Location: LCCOMB_X22_Y9_N0
\U14|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~8_combout\ = ((!\U14|process_0~7_combout\ & \U5|instruction\(10))) # (!\U14|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|process_0~7_combout\,
	datac => \U14|Selector1~0_combout\,
	datad => \U5|instruction\(10),
	combout => \U14|process_0~8_combout\);

-- Location: LCCOMB_X21_Y9_N16
\U6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux5~0_combout\ = (!\U5|instruction\(12) & (!\U5|instruction\(11) & (!\U5|instruction\(15) & \U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(15),
	datad => \U6|Mux3~0_combout\,
	combout => \U6|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
\U14|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector23~3_combout\ = (\U5|instruction\(12) & \U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(11),
	combout => \U14|Selector23~3_combout\);

-- Location: LCCOMB_X21_Y9_N14
\U14|Selector23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector23~12_combout\ = (\U5|instruction\(15) & (\U5|instruction\(13) & (\U14|Selector23~3_combout\ & !\U5|instruction\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(13),
	datac => \U14|Selector23~3_combout\,
	datad => \U5|instruction\(14),
	combout => \U14|Selector23~12_combout\);

-- Location: LCCOMB_X22_Y9_N10
\U6|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux0~4_combout\ = (!\U5|instruction\(11) & \U5|instruction\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datad => \U5|instruction\(14),
	combout => \U6|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y9_N24
\U6|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux0~5_combout\ = (!\U5|instruction\(13) & (\U5|instruction\(15) & (!\U5|instruction\(12) & \U6|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(15),
	datac => \U5|instruction\(12),
	datad => \U6|Mux0~4_combout\,
	combout => \U6|Mux0~5_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

-- Location: LCCOMB_X18_Y10_N18
\uart_inst|inst1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|count~1_combout\ = (\uart_inst|inst1|pro2:count[1]~q\ & ((\uart_inst|inst1|pro2:count[2]~q\ & (!\uart_inst|inst1|pro2:count[3]~q\ & !\uart_inst|inst1|pro2:count[0]~q\)) # (!\uart_inst|inst1|pro2:count[2]~q\ & 
-- ((\uart_inst|inst1|pro2:count[0]~q\))))) # (!\uart_inst|inst1|pro2:count[1]~q\ & (((\uart_inst|inst1|pro2:count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:count[1]~q\,
	datab => \uart_inst|inst1|pro2:count[3]~q\,
	datac => \uart_inst|inst1|pro2:count[2]~q\,
	datad => \uart_inst|inst1|pro2:count[0]~q\,
	combout => \uart_inst|inst1|count~1_combout\);

-- Location: LCCOMB_X24_Y10_N30
\U14|Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector18~4_combout\ = (!\U14|process_0~8_combout\ & ((\U6|Mux0~5_combout\) # (\U6|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~8_combout\,
	datab => \U6|Mux0~5_combout\,
	datad => \U6|Mux1~6_combout\,
	combout => \U14|Selector18~4_combout\);

-- Location: LCCOMB_X23_Y10_N24
\U14|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~9_combout\ = (!\U5|instruction\(10) & ((\U6|Mux10~0_combout\) # (!\U14|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Mux10~0_combout\,
	datac => \U5|instruction\(10),
	datad => \U14|process_0~7_combout\,
	combout => \U14|process_0~9_combout\);

-- Location: LCCOMB_X23_Y9_N28
\U14|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector18~0_combout\ = (\U14|current_state.t12~q\ & (((\U5|instruction\(13)) # (!\U6|Mux0~6_combout\)) # (!\U6|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux0~4_combout\,
	datab => \U6|Mux0~6_combout\,
	datac => \U14|current_state.t12~q\,
	datad => \U5|instruction\(13),
	combout => \U14|Selector18~0_combout\);

-- Location: LCCOMB_X24_Y10_N8
\U14|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector18~1_combout\ = (\U14|current_state.t10~q\) # ((\U14|current_state.t_rst_1~q\ & (!\U14|current_state.t17~q\ & !\U14|current_state.t12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t_rst_1~q\,
	datab => \U14|current_state.t17~q\,
	datac => \U14|current_state.t12~q\,
	datad => \U14|current_state.t10~q\,
	combout => \U14|Selector18~1_combout\);

-- Location: LCCOMB_X24_Y10_N28
\U14|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector18~2_combout\ = (\U14|uart_reset_latch~q\ & ((\U14|Selector18~0_combout\) # ((\U14|Selector18~1_combout\) # (\U14|Selector23~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector18~0_combout\,
	datab => \U14|uart_reset_latch~q\,
	datac => \U14|Selector18~1_combout\,
	datad => \U14|Selector23~9_combout\,
	combout => \U14|Selector18~2_combout\);

-- Location: LCCOMB_X24_Y10_N14
\U14|Selector18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector18~5_combout\ = (\U14|Selector18~2_combout\) # ((\U14|Selector18~4_combout\ & (!\U14|process_0~9_combout\ & \U14|Selector18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector18~4_combout\,
	datab => \U14|process_0~9_combout\,
	datac => \U14|Selector18~3_combout\,
	datad => \U14|Selector18~2_combout\,
	combout => \U14|Selector18~5_combout\);

-- Location: FF_X24_Y10_N15
\U14|uart_reset_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector18~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|uart_reset_latch~q\);

-- Location: FF_X18_Y10_N19
\uart_inst|inst1|pro2:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|count~1_combout\,
	clrn => \U14|uart_reset_latch~q\,
	ena => \uart_inst|inst1|state.r_wait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:count[2]~q\);

-- Location: LCCOMB_X18_Y10_N28
\uart_inst|inst1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|count~0_combout\ = (\uart_inst|inst1|pro2:count[1]~q\ & ((\uart_inst|inst1|pro2:count[2]~q\ & (!\uart_inst|inst1|pro2:count[3]~q\ & \uart_inst|inst1|pro2:count[0]~q\)) # (!\uart_inst|inst1|pro2:count[2]~q\ & 
-- (\uart_inst|inst1|pro2:count[3]~q\)))) # (!\uart_inst|inst1|pro2:count[1]~q\ & (((\uart_inst|inst1|pro2:count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:count[1]~q\,
	datab => \uart_inst|inst1|pro2:count[2]~q\,
	datac => \uart_inst|inst1|pro2:count[3]~q\,
	datad => \uart_inst|inst1|pro2:count[0]~q\,
	combout => \uart_inst|inst1|count~0_combout\);

-- Location: FF_X18_Y10_N29
\uart_inst|inst1|pro2:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|count~0_combout\,
	clrn => \U14|uart_reset_latch~q\,
	ena => \uart_inst|inst1|state.r_wait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:count[3]~q\);

-- Location: LCCOMB_X18_Y10_N10
\uart_inst|inst1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|count~3_combout\ = (!\uart_inst|inst1|pro2:count[0]~q\ & (((!\uart_inst|inst1|pro2:count[2]~q\) # (!\uart_inst|inst1|pro2:count[3]~q\)) # (!\uart_inst|inst1|pro2:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:count[1]~q\,
	datab => \uart_inst|inst1|pro2:count[3]~q\,
	datac => \uart_inst|inst1|pro2:count[0]~q\,
	datad => \uart_inst|inst1|pro2:count[2]~q\,
	combout => \uart_inst|inst1|count~3_combout\);

-- Location: FF_X18_Y10_N11
\uart_inst|inst1|pro2:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|count~3_combout\,
	clrn => \U14|uart_reset_latch~q\,
	ena => \uart_inst|inst1|state.r_wait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:count[0]~q\);

-- Location: LCCOMB_X18_Y10_N12
\uart_inst|inst1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|count~2_combout\ = (\uart_inst|inst1|pro2:count[0]~q\ & (((!\uart_inst|inst1|pro2:count[1]~q\)))) # (!\uart_inst|inst1|pro2:count[0]~q\ & (\uart_inst|inst1|pro2:count[1]~q\ & ((!\uart_inst|inst1|pro2:count[2]~q\) # 
-- (!\uart_inst|inst1|pro2:count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:count[0]~q\,
	datab => \uart_inst|inst1|pro2:count[3]~q\,
	datac => \uart_inst|inst1|pro2:count[1]~q\,
	datad => \uart_inst|inst1|pro2:count[2]~q\,
	combout => \uart_inst|inst1|count~2_combout\);

-- Location: FF_X18_Y10_N13
\uart_inst|inst1|pro2:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|count~2_combout\,
	clrn => \U14|uart_reset_latch~q\,
	ena => \uart_inst|inst1|state.r_wait~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:count[1]~q\);

-- Location: LCCOMB_X18_Y10_N26
\uart_inst|inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|LessThan0~0_combout\ = (\uart_inst|inst1|pro2:count[1]~q\ & (\uart_inst|inst1|pro2:count[3]~q\ & \uart_inst|inst1|pro2:count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:count[1]~q\,
	datab => \uart_inst|inst1|pro2:count[3]~q\,
	datad => \uart_inst|inst1|pro2:count[2]~q\,
	combout => \uart_inst|inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y10_N0
\uart_inst|inst1|pro2:rcnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[0]~1_combout\ = \uart_inst|inst1|pro2:rcnt[0]~q\ $ (VCC)
-- \uart_inst|inst1|pro2:rcnt[0]~2\ = CARRY(\uart_inst|inst1|pro2:rcnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => VCC,
	combout => \uart_inst|inst1|pro2:rcnt[0]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[0]~2\);

-- Location: LCCOMB_X19_Y10_N30
\uart_inst|inst1|pro2:rcnt[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[31]~1_combout\ = (!\uart_inst|inst1|state.r_wait~q\ & (\U14|uart_reset_latch~q\ & \uart_inst|inst1|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|state.r_wait~q\,
	datab => \U14|uart_reset_latch~q\,
	datad => \uart_inst|inst1|Selector0~0_combout\,
	combout => \uart_inst|inst1|pro2:rcnt[31]~1_combout\);

-- Location: FF_X13_Y10_N1
\uart_inst|inst1|pro2:rcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[0]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[0]~q\);

-- Location: LCCOMB_X13_Y10_N2
\uart_inst|inst1|pro2:rcnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[1]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[1]~q\ & (!\uart_inst|inst1|pro2:rcnt[0]~2\)) # (!\uart_inst|inst1|pro2:rcnt[1]~q\ & ((\uart_inst|inst1|pro2:rcnt[0]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[1]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[0]~2\) # (!\uart_inst|inst1|pro2:rcnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[0]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[1]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[1]~2\);

-- Location: FF_X13_Y10_N3
\uart_inst|inst1|pro2:rcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[1]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[1]~q\);

-- Location: LCCOMB_X13_Y10_N4
\uart_inst|inst1|pro2:rcnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[2]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[2]~q\ & (\uart_inst|inst1|pro2:rcnt[1]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[2]~q\ & (!\uart_inst|inst1|pro2:rcnt[1]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[2]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[2]~q\ & !\uart_inst|inst1|pro2:rcnt[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[1]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[2]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[2]~2\);

-- Location: FF_X13_Y10_N5
\uart_inst|inst1|pro2:rcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[2]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[2]~q\);

-- Location: LCCOMB_X13_Y10_N6
\uart_inst|inst1|pro2:rcnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[3]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[3]~q\ & (!\uart_inst|inst1|pro2:rcnt[2]~2\)) # (!\uart_inst|inst1|pro2:rcnt[3]~q\ & ((\uart_inst|inst1|pro2:rcnt[2]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[3]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[2]~2\) # (!\uart_inst|inst1|pro2:rcnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[3]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[2]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[3]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[3]~2\);

-- Location: FF_X13_Y10_N7
\uart_inst|inst1|pro2:rcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[3]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[3]~q\);

-- Location: LCCOMB_X13_Y10_N8
\uart_inst|inst1|pro2:rcnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[4]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[4]~q\ & (\uart_inst|inst1|pro2:rcnt[3]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[4]~q\ & (!\uart_inst|inst1|pro2:rcnt[3]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[4]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[4]~q\ & !\uart_inst|inst1|pro2:rcnt[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[4]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[3]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[4]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[4]~2\);

-- Location: FF_X13_Y10_N9
\uart_inst|inst1|pro2:rcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[4]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[4]~q\);

-- Location: LCCOMB_X13_Y10_N10
\uart_inst|inst1|pro2:rcnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[5]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[5]~q\ & (!\uart_inst|inst1|pro2:rcnt[4]~2\)) # (!\uart_inst|inst1|pro2:rcnt[5]~q\ & ((\uart_inst|inst1|pro2:rcnt[4]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[5]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[4]~2\) # (!\uart_inst|inst1|pro2:rcnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[5]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[4]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[5]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[5]~2\);

-- Location: FF_X13_Y10_N11
\uart_inst|inst1|pro2:rcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[5]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[5]~q\);

-- Location: LCCOMB_X13_Y10_N12
\uart_inst|inst1|pro2:rcnt[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[6]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[6]~q\ & (\uart_inst|inst1|pro2:rcnt[5]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[6]~q\ & (!\uart_inst|inst1|pro2:rcnt[5]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[6]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[6]~q\ & !\uart_inst|inst1|pro2:rcnt[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[6]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[5]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[6]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[6]~2\);

-- Location: FF_X13_Y10_N13
\uart_inst|inst1|pro2:rcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[6]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[6]~q\);

-- Location: LCCOMB_X13_Y10_N14
\uart_inst|inst1|pro2:rcnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[7]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[7]~q\ & (!\uart_inst|inst1|pro2:rcnt[6]~2\)) # (!\uart_inst|inst1|pro2:rcnt[7]~q\ & ((\uart_inst|inst1|pro2:rcnt[6]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[7]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[6]~2\) # (!\uart_inst|inst1|pro2:rcnt[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[7]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[6]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[7]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[7]~2\);

-- Location: FF_X13_Y10_N15
\uart_inst|inst1|pro2:rcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[7]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[7]~q\);

-- Location: LCCOMB_X13_Y10_N16
\uart_inst|inst1|pro2:rcnt[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[8]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[8]~q\ & (\uart_inst|inst1|pro2:rcnt[7]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[8]~q\ & (!\uart_inst|inst1|pro2:rcnt[7]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[8]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[8]~q\ & !\uart_inst|inst1|pro2:rcnt[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[8]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[7]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[8]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[8]~2\);

-- Location: FF_X13_Y10_N17
\uart_inst|inst1|pro2:rcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[8]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[8]~q\);

-- Location: LCCOMB_X13_Y10_N18
\uart_inst|inst1|pro2:rcnt[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[9]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[9]~q\ & (!\uart_inst|inst1|pro2:rcnt[8]~2\)) # (!\uart_inst|inst1|pro2:rcnt[9]~q\ & ((\uart_inst|inst1|pro2:rcnt[8]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[9]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[8]~2\) # (!\uart_inst|inst1|pro2:rcnt[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[9]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[8]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[9]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[9]~2\);

-- Location: FF_X13_Y10_N19
\uart_inst|inst1|pro2:rcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[9]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[9]~q\);

-- Location: LCCOMB_X13_Y10_N20
\uart_inst|inst1|pro2:rcnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[10]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[10]~q\ & (\uart_inst|inst1|pro2:rcnt[9]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[10]~q\ & (!\uart_inst|inst1|pro2:rcnt[9]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[10]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[10]~q\ & !\uart_inst|inst1|pro2:rcnt[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[10]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[9]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[10]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[10]~2\);

-- Location: FF_X13_Y10_N21
\uart_inst|inst1|pro2:rcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[10]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[10]~q\);

-- Location: LCCOMB_X13_Y10_N22
\uart_inst|inst1|pro2:rcnt[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[11]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[11]~q\ & (!\uart_inst|inst1|pro2:rcnt[10]~2\)) # (!\uart_inst|inst1|pro2:rcnt[11]~q\ & ((\uart_inst|inst1|pro2:rcnt[10]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[11]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[10]~2\) # (!\uart_inst|inst1|pro2:rcnt[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[11]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[10]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[11]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[11]~2\);

-- Location: FF_X13_Y10_N23
\uart_inst|inst1|pro2:rcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[11]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[11]~q\);

-- Location: LCCOMB_X13_Y10_N24
\uart_inst|inst1|pro2:rcnt[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[12]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[12]~q\ & (\uart_inst|inst1|pro2:rcnt[11]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[12]~q\ & (!\uart_inst|inst1|pro2:rcnt[11]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[12]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[12]~q\ & !\uart_inst|inst1|pro2:rcnt[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[12]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[11]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[12]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[12]~2\);

-- Location: FF_X13_Y10_N25
\uart_inst|inst1|pro2:rcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[12]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[12]~q\);

-- Location: LCCOMB_X13_Y10_N26
\uart_inst|inst1|pro2:rcnt[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[13]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[13]~q\ & (!\uart_inst|inst1|pro2:rcnt[12]~2\)) # (!\uart_inst|inst1|pro2:rcnt[13]~q\ & ((\uart_inst|inst1|pro2:rcnt[12]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[13]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[12]~2\) # (!\uart_inst|inst1|pro2:rcnt[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[13]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[12]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[13]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[13]~2\);

-- Location: FF_X13_Y10_N27
\uart_inst|inst1|pro2:rcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[13]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[13]~q\);

-- Location: LCCOMB_X13_Y10_N28
\uart_inst|inst1|pro2:rcnt[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[14]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[14]~q\ & (\uart_inst|inst1|pro2:rcnt[13]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[14]~q\ & (!\uart_inst|inst1|pro2:rcnt[13]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[14]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[14]~q\ & !\uart_inst|inst1|pro2:rcnt[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[14]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[13]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[14]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[14]~2\);

-- Location: FF_X13_Y10_N29
\uart_inst|inst1|pro2:rcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[14]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[14]~q\);

-- Location: LCCOMB_X13_Y10_N30
\uart_inst|inst1|pro2:rcnt[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[15]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[15]~q\ & (!\uart_inst|inst1|pro2:rcnt[14]~2\)) # (!\uart_inst|inst1|pro2:rcnt[15]~q\ & ((\uart_inst|inst1|pro2:rcnt[14]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[15]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[14]~2\) # (!\uart_inst|inst1|pro2:rcnt[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[15]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[14]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[15]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[15]~2\);

-- Location: FF_X13_Y10_N31
\uart_inst|inst1|pro2:rcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[15]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[15]~q\);

-- Location: LCCOMB_X13_Y9_N0
\uart_inst|inst1|pro2:rcnt[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[16]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[16]~q\ & (\uart_inst|inst1|pro2:rcnt[15]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[16]~q\ & (!\uart_inst|inst1|pro2:rcnt[15]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[16]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[16]~q\ & !\uart_inst|inst1|pro2:rcnt[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[16]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[15]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[16]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[16]~2\);

-- Location: FF_X13_Y9_N1
\uart_inst|inst1|pro2:rcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[16]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[16]~q\);

-- Location: LCCOMB_X13_Y9_N2
\uart_inst|inst1|pro2:rcnt[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[17]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[17]~q\ & (!\uart_inst|inst1|pro2:rcnt[16]~2\)) # (!\uart_inst|inst1|pro2:rcnt[17]~q\ & ((\uart_inst|inst1|pro2:rcnt[16]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[17]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[16]~2\) # (!\uart_inst|inst1|pro2:rcnt[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[17]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[16]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[17]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[17]~2\);

-- Location: FF_X13_Y9_N3
\uart_inst|inst1|pro2:rcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[17]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[17]~q\);

-- Location: LCCOMB_X13_Y9_N4
\uart_inst|inst1|pro2:rcnt[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[18]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[18]~q\ & (\uart_inst|inst1|pro2:rcnt[17]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[18]~q\ & (!\uart_inst|inst1|pro2:rcnt[17]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[18]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[18]~q\ & !\uart_inst|inst1|pro2:rcnt[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[18]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[17]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[18]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[18]~2\);

-- Location: FF_X13_Y9_N5
\uart_inst|inst1|pro2:rcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[18]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[18]~q\);

-- Location: LCCOMB_X13_Y9_N6
\uart_inst|inst1|pro2:rcnt[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[19]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[19]~q\ & (!\uart_inst|inst1|pro2:rcnt[18]~2\)) # (!\uart_inst|inst1|pro2:rcnt[19]~q\ & ((\uart_inst|inst1|pro2:rcnt[18]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[19]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[18]~2\) # (!\uart_inst|inst1|pro2:rcnt[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[19]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[18]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[19]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[19]~2\);

-- Location: FF_X13_Y9_N7
\uart_inst|inst1|pro2:rcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[19]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[19]~q\);

-- Location: LCCOMB_X13_Y9_N8
\uart_inst|inst1|pro2:rcnt[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[20]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[20]~q\ & (\uart_inst|inst1|pro2:rcnt[19]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[20]~q\ & (!\uart_inst|inst1|pro2:rcnt[19]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[20]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[20]~q\ & !\uart_inst|inst1|pro2:rcnt[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[20]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[19]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[20]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[20]~2\);

-- Location: FF_X13_Y9_N9
\uart_inst|inst1|pro2:rcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[20]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[20]~q\);

-- Location: LCCOMB_X13_Y9_N10
\uart_inst|inst1|pro2:rcnt[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[21]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[21]~q\ & (!\uart_inst|inst1|pro2:rcnt[20]~2\)) # (!\uart_inst|inst1|pro2:rcnt[21]~q\ & ((\uart_inst|inst1|pro2:rcnt[20]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[21]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[20]~2\) # (!\uart_inst|inst1|pro2:rcnt[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[21]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[20]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[21]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[21]~2\);

-- Location: FF_X13_Y9_N11
\uart_inst|inst1|pro2:rcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[21]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[21]~q\);

-- Location: LCCOMB_X13_Y9_N12
\uart_inst|inst1|pro2:rcnt[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[22]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[22]~q\ & (\uart_inst|inst1|pro2:rcnt[21]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[22]~q\ & (!\uart_inst|inst1|pro2:rcnt[21]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[22]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[22]~q\ & !\uart_inst|inst1|pro2:rcnt[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[22]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[21]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[22]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[22]~2\);

-- Location: FF_X13_Y9_N13
\uart_inst|inst1|pro2:rcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[22]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[22]~q\);

-- Location: LCCOMB_X13_Y9_N14
\uart_inst|inst1|pro2:rcnt[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[23]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[23]~q\ & (!\uart_inst|inst1|pro2:rcnt[22]~2\)) # (!\uart_inst|inst1|pro2:rcnt[23]~q\ & ((\uart_inst|inst1|pro2:rcnt[22]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[23]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[22]~2\) # (!\uart_inst|inst1|pro2:rcnt[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[23]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[22]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[23]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[23]~2\);

-- Location: FF_X13_Y9_N15
\uart_inst|inst1|pro2:rcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[23]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[23]~q\);

-- Location: LCCOMB_X14_Y9_N22
\uart_inst|inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~6_combout\ = (!\uart_inst|inst1|pro2:rcnt[23]~q\ & (!\uart_inst|inst1|pro2:rcnt[22]~q\ & (!\uart_inst|inst1|pro2:rcnt[21]~q\ & !\uart_inst|inst1|pro2:rcnt[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[23]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[22]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[21]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[20]~q\,
	combout => \uart_inst|inst1|Equal0~6_combout\);

-- Location: LCCOMB_X14_Y9_N12
\uart_inst|inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~5_combout\ = (!\uart_inst|inst1|pro2:rcnt[16]~q\ & (!\uart_inst|inst1|pro2:rcnt[18]~q\ & (!\uart_inst|inst1|pro2:rcnt[19]~q\ & !\uart_inst|inst1|pro2:rcnt[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[16]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[18]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[19]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[17]~q\,
	combout => \uart_inst|inst1|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y10_N30
\uart_inst|inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~3_combout\ = (!\uart_inst|inst1|pro2:rcnt[13]~q\ & (!\uart_inst|inst1|pro2:rcnt[14]~q\ & (!\uart_inst|inst1|pro2:rcnt[12]~q\ & !\uart_inst|inst1|pro2:rcnt[15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[13]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[14]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[12]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[15]~q\,
	combout => \uart_inst|inst1|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y10_N18
\uart_inst|inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~1_combout\ = (!\uart_inst|inst1|pro2:rcnt[5]~q\ & (!\uart_inst|inst1|pro2:rcnt[6]~q\ & (!\uart_inst|inst1|pro2:rcnt[4]~q\ & !\uart_inst|inst1|pro2:rcnt[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[5]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[6]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[4]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[7]~q\,
	combout => \uart_inst|inst1|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y10_N8
\uart_inst|inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~0_combout\ = (!\uart_inst|inst1|pro2:rcnt[0]~q\ & (!\uart_inst|inst1|pro2:rcnt[2]~q\ & (\uart_inst|inst1|pro2:rcnt[3]~q\ & !\uart_inst|inst1|pro2:rcnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[3]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[1]~q\,
	combout => \uart_inst|inst1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\uart_inst|inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~2_combout\ = (!\uart_inst|inst1|pro2:rcnt[8]~q\ & (!\uart_inst|inst1|pro2:rcnt[10]~q\ & (!\uart_inst|inst1|pro2:rcnt[9]~q\ & !\uart_inst|inst1|pro2:rcnt[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[8]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[10]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[9]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[11]~q\,
	combout => \uart_inst|inst1|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\uart_inst|inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~4_combout\ = (\uart_inst|inst1|Equal0~3_combout\ & (\uart_inst|inst1|Equal0~1_combout\ & (\uart_inst|inst1|Equal0~0_combout\ & \uart_inst|inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|Equal0~3_combout\,
	datab => \uart_inst|inst1|Equal0~1_combout\,
	datac => \uart_inst|inst1|Equal0~0_combout\,
	datad => \uart_inst|inst1|Equal0~2_combout\,
	combout => \uart_inst|inst1|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y9_N16
\uart_inst|inst1|pro2:rcnt[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[24]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[24]~q\ & (\uart_inst|inst1|pro2:rcnt[23]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[24]~q\ & (!\uart_inst|inst1|pro2:rcnt[23]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[24]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[24]~q\ & !\uart_inst|inst1|pro2:rcnt[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[24]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[23]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[24]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[24]~2\);

-- Location: FF_X13_Y9_N17
\uart_inst|inst1|pro2:rcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[24]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[24]~q\);

-- Location: LCCOMB_X13_Y9_N18
\uart_inst|inst1|pro2:rcnt[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[25]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[25]~q\ & (!\uart_inst|inst1|pro2:rcnt[24]~2\)) # (!\uart_inst|inst1|pro2:rcnt[25]~q\ & ((\uart_inst|inst1|pro2:rcnt[24]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[25]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[24]~2\) # (!\uart_inst|inst1|pro2:rcnt[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[25]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[24]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[25]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[25]~2\);

-- Location: FF_X13_Y9_N19
\uart_inst|inst1|pro2:rcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[25]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[25]~q\);

-- Location: LCCOMB_X13_Y9_N20
\uart_inst|inst1|pro2:rcnt[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[26]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[26]~q\ & (\uart_inst|inst1|pro2:rcnt[25]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[26]~q\ & (!\uart_inst|inst1|pro2:rcnt[25]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[26]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[26]~q\ & !\uart_inst|inst1|pro2:rcnt[25]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[26]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[25]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[26]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[26]~2\);

-- Location: FF_X13_Y9_N21
\uart_inst|inst1|pro2:rcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[26]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[26]~q\);

-- Location: LCCOMB_X13_Y9_N22
\uart_inst|inst1|pro2:rcnt[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[27]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[27]~q\ & (!\uart_inst|inst1|pro2:rcnt[26]~2\)) # (!\uart_inst|inst1|pro2:rcnt[27]~q\ & ((\uart_inst|inst1|pro2:rcnt[26]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[27]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[26]~2\) # (!\uart_inst|inst1|pro2:rcnt[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[27]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[26]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[27]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[27]~2\);

-- Location: FF_X13_Y9_N23
\uart_inst|inst1|pro2:rcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[27]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[27]~q\);

-- Location: LCCOMB_X14_Y9_N0
\uart_inst|inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~7_combout\ = (!\uart_inst|inst1|pro2:rcnt[27]~q\ & !\uart_inst|inst1|pro2:rcnt[26]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[27]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[26]~q\,
	combout => \uart_inst|inst1|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y9_N24
\uart_inst|inst1|pro2:rcnt[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[28]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[28]~q\ & (\uart_inst|inst1|pro2:rcnt[27]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[28]~q\ & (!\uart_inst|inst1|pro2:rcnt[27]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[28]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[28]~q\ & !\uart_inst|inst1|pro2:rcnt[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[28]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[27]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[28]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[28]~2\);

-- Location: FF_X13_Y9_N25
\uart_inst|inst1|pro2:rcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[28]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[28]~q\);

-- Location: LCCOMB_X13_Y9_N26
\uart_inst|inst1|pro2:rcnt[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[29]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[29]~q\ & (!\uart_inst|inst1|pro2:rcnt[28]~2\)) # (!\uart_inst|inst1|pro2:rcnt[29]~q\ & ((\uart_inst|inst1|pro2:rcnt[28]~2\) # (GND)))
-- \uart_inst|inst1|pro2:rcnt[29]~2\ = CARRY((!\uart_inst|inst1|pro2:rcnt[28]~2\) # (!\uart_inst|inst1|pro2:rcnt[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[29]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[28]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[29]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[29]~2\);

-- Location: FF_X13_Y9_N27
\uart_inst|inst1|pro2:rcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[29]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[29]~q\);

-- Location: LCCOMB_X13_Y9_N28
\uart_inst|inst1|pro2:rcnt[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[30]~1_combout\ = (\uart_inst|inst1|pro2:rcnt[30]~q\ & (\uart_inst|inst1|pro2:rcnt[29]~2\ $ (GND))) # (!\uart_inst|inst1|pro2:rcnt[30]~q\ & (!\uart_inst|inst1|pro2:rcnt[29]~2\ & VCC))
-- \uart_inst|inst1|pro2:rcnt[30]~2\ = CARRY((\uart_inst|inst1|pro2:rcnt[30]~q\ & !\uart_inst|inst1|pro2:rcnt[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|pro2:rcnt[30]~q\,
	datad => VCC,
	cin => \uart_inst|inst1|pro2:rcnt[29]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[30]~1_combout\,
	cout => \uart_inst|inst1|pro2:rcnt[30]~2\);

-- Location: FF_X13_Y9_N29
\uart_inst|inst1|pro2:rcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[30]~1_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[30]~q\);

-- Location: LCCOMB_X13_Y9_N30
\uart_inst|inst1|pro2:rcnt[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rcnt[31]~2_combout\ = \uart_inst|inst1|pro2:rcnt[31]~q\ $ (\uart_inst|inst1|pro2:rcnt[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[31]~q\,
	cin => \uart_inst|inst1|pro2:rcnt[30]~2\,
	combout => \uart_inst|inst1|pro2:rcnt[31]~2_combout\);

-- Location: FF_X13_Y9_N31
\uart_inst|inst1|pro2:rcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rcnt[31]~2_combout\,
	sclr => \uart_inst|inst1|ALT_INV_state.r_sample~q\,
	ena => \uart_inst|inst1|pro2:rcnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rcnt[31]~q\);

-- Location: LCCOMB_X14_Y9_N2
\uart_inst|inst1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~8_combout\ = (!\uart_inst|inst1|pro2:rcnt[29]~q\ & (!\uart_inst|inst1|pro2:rcnt[28]~q\ & (!\uart_inst|inst1|pro2:rcnt[30]~q\ & !\uart_inst|inst1|pro2:rcnt[31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[29]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[28]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[30]~q\,
	datad => \uart_inst|inst1|pro2:rcnt[31]~q\,
	combout => \uart_inst|inst1|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y10_N10
\uart_inst|inst1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~9_combout\ = (!\uart_inst|inst1|pro2:rcnt[24]~q\ & (!\uart_inst|inst1|pro2:rcnt[25]~q\ & (\uart_inst|inst1|Equal0~7_combout\ & \uart_inst|inst1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[24]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[25]~q\,
	datac => \uart_inst|inst1|Equal0~7_combout\,
	datad => \uart_inst|inst1|Equal0~8_combout\,
	combout => \uart_inst|inst1|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y10_N24
\uart_inst|inst1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Equal0~10_combout\ = (\uart_inst|inst1|Equal0~6_combout\ & (\uart_inst|inst1|Equal0~5_combout\ & (\uart_inst|inst1|Equal0~4_combout\ & \uart_inst|inst1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|Equal0~6_combout\,
	datab => \uart_inst|inst1|Equal0~5_combout\,
	datac => \uart_inst|inst1|Equal0~4_combout\,
	datad => \uart_inst|inst1|Equal0~9_combout\,
	combout => \uart_inst|inst1|Equal0~10_combout\);

-- Location: LCCOMB_X19_Y10_N28
\uart_inst|inst1|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|state~8_combout\ = (\uart_inst|inst1|state.r_wait~q\ & (\uart_inst|inst1|LessThan0~0_combout\ & \uart_inst|inst1|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|state.r_wait~q\,
	datac => \uart_inst|inst1|LessThan0~0_combout\,
	datad => \uart_inst|inst1|Equal0~10_combout\,
	combout => \uart_inst|inst1|state~8_combout\);

-- Location: FF_X19_Y10_N29
\uart_inst|inst1|state.r_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|state~8_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|state.r_stop~q\);

-- Location: LCCOMB_X19_Y10_N18
\uart_inst|inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Selector0~0_combout\ = (!\uart_inst|inst1|state.r_stop~q\ & ((\uart_inst|inst1|state.r_start~q\) # (!\rxd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst1|state.r_start~q\,
	datac => \rxd~input_o\,
	datad => \uart_inst|inst1|state.r_stop~q\,
	combout => \uart_inst|inst1|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
\uart_inst|inst1|state.r_start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|state.r_start~feeder_combout\ = \uart_inst|inst1|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|Selector0~0_combout\,
	combout => \uart_inst|inst1|state.r_start~feeder_combout\);

-- Location: FF_X19_Y10_N21
\uart_inst|inst1|state.r_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|state.r_start~feeder_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|state.r_start~q\);

-- Location: LCCOMB_X18_Y10_N24
\uart_inst|inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Selector1~0_combout\ = (\uart_inst|inst1|state.r_wait~q\ & (((!\uart_inst|inst1|pro2:count[2]~q\) # (!\uart_inst|inst1|pro2:count[3]~q\)) # (!\uart_inst|inst1|pro2:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:count[1]~q\,
	datab => \uart_inst|inst1|pro2:count[3]~q\,
	datac => \uart_inst|inst1|state.r_wait~q\,
	datad => \uart_inst|inst1|pro2:count[2]~q\,
	combout => \uart_inst|inst1|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y10_N10
\uart_inst|inst1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Selector1~1_combout\ = (\uart_inst|inst1|state.r_sample~q\) # ((\uart_inst|inst1|Selector1~0_combout\) # ((!\uart_inst|inst1|state.r_start~q\ & !\rxd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|state.r_sample~q\,
	datab => \uart_inst|inst1|state.r_start~q\,
	datac => \rxd~input_o\,
	datad => \uart_inst|inst1|Selector1~0_combout\,
	combout => \uart_inst|inst1|Selector1~1_combout\);

-- Location: FF_X19_Y10_N11
\uart_inst|inst1|state.r_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|Selector1~1_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|state.r_wait~q\);

-- Location: LCCOMB_X19_Y10_N6
\uart_inst|inst1|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|state~9_combout\ = (\uart_inst|inst1|state.r_wait~q\ & (\uart_inst|inst1|LessThan0~0_combout\ & !\uart_inst|inst1|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|state.r_wait~q\,
	datac => \uart_inst|inst1|LessThan0~0_combout\,
	datad => \uart_inst|inst1|Equal0~10_combout\,
	combout => \uart_inst|inst1|state~9_combout\);

-- Location: FF_X19_Y10_N7
\uart_inst|inst1|state.r_sample\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|state~9_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|state.r_sample~q\);

-- Location: LCCOMB_X19_Y10_N22
\uart_inst|inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Selector2~0_combout\ = (\uart_inst|inst1|state.r_stop~q\) # ((\uart_inst|inst1|r_ready~q\ & ((\uart_inst|inst1|state.r_sample~q\) # (\uart_inst|inst1|state.r_wait~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|state.r_sample~q\,
	datab => \uart_inst|inst1|state.r_stop~q\,
	datac => \uart_inst|inst1|state.r_wait~q\,
	datad => \uart_inst|inst1|r_ready~q\,
	combout => \uart_inst|inst1|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\uart_inst|inst1|r_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|r_ready~feeder_combout\ = \uart_inst|inst1|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|Selector2~0_combout\,
	combout => \uart_inst|inst1|r_ready~feeder_combout\);

-- Location: FF_X19_Y10_N13
\uart_inst|inst1|r_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|r_ready~feeder_combout\,
	ena => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|r_ready~q\);

-- Location: CLKCTRL_G7
\uart_inst|inst1|r_ready~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart_inst|inst1|r_ready~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart_inst|inst1|r_ready~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y5_N0
\uart_inst|inst8|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|pulse~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_inst|inst8|pulse~feeder_combout\);

-- Location: LCCOMB_X23_Y5_N14
\uart_inst|inst8|counter[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[0]~37_combout\ = (!\uart_inst|inst8|counter\(0) & \uart_inst|inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(0),
	datac => \uart_inst|inst8|Equal0~10_combout\,
	combout => \uart_inst|inst8|counter[0]~37_combout\);

-- Location: FF_X22_Y5_N1
\uart_inst|inst8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	asdata => \uart_inst|inst8|counter[0]~37_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(0));

-- Location: LCCOMB_X22_Y5_N2
\uart_inst|inst8|counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[1]~31_combout\ = (\uart_inst|inst8|counter\(0) & (\uart_inst|inst8|counter\(1) $ (VCC))) # (!\uart_inst|inst8|counter\(0) & (\uart_inst|inst8|counter\(1) & VCC))
-- \uart_inst|inst8|counter[1]~32\ = CARRY((\uart_inst|inst8|counter\(0) & \uart_inst|inst8|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(0),
	datab => \uart_inst|inst8|counter\(1),
	datad => VCC,
	combout => \uart_inst|inst8|counter[1]~31_combout\,
	cout => \uart_inst|inst8|counter[1]~32\);

-- Location: FF_X22_Y5_N3
\uart_inst|inst8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[1]~31_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(1));

-- Location: LCCOMB_X22_Y5_N4
\uart_inst|inst8|counter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[2]~33_combout\ = (\uart_inst|inst8|counter\(2) & (!\uart_inst|inst8|counter[1]~32\)) # (!\uart_inst|inst8|counter\(2) & ((\uart_inst|inst8|counter[1]~32\) # (GND)))
-- \uart_inst|inst8|counter[2]~34\ = CARRY((!\uart_inst|inst8|counter[1]~32\) # (!\uart_inst|inst8|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(2),
	datad => VCC,
	cin => \uart_inst|inst8|counter[1]~32\,
	combout => \uart_inst|inst8|counter[2]~33_combout\,
	cout => \uart_inst|inst8|counter[2]~34\);

-- Location: FF_X22_Y5_N5
\uart_inst|inst8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[2]~33_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(2));

-- Location: LCCOMB_X22_Y5_N6
\uart_inst|inst8|counter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[3]~35_combout\ = (\uart_inst|inst8|counter\(3) & (\uart_inst|inst8|counter[2]~34\ $ (GND))) # (!\uart_inst|inst8|counter\(3) & (!\uart_inst|inst8|counter[2]~34\ & VCC))
-- \uart_inst|inst8|counter[3]~36\ = CARRY((\uart_inst|inst8|counter\(3) & !\uart_inst|inst8|counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(3),
	datad => VCC,
	cin => \uart_inst|inst8|counter[2]~34\,
	combout => \uart_inst|inst8|counter[3]~35_combout\,
	cout => \uart_inst|inst8|counter[3]~36\);

-- Location: FF_X22_Y5_N7
\uart_inst|inst8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[3]~35_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(3));

-- Location: LCCOMB_X22_Y5_N8
\uart_inst|inst8|counter[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[4]~38_combout\ = (\uart_inst|inst8|counter\(4) & (!\uart_inst|inst8|counter[3]~36\)) # (!\uart_inst|inst8|counter\(4) & ((\uart_inst|inst8|counter[3]~36\) # (GND)))
-- \uart_inst|inst8|counter[4]~39\ = CARRY((!\uart_inst|inst8|counter[3]~36\) # (!\uart_inst|inst8|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(4),
	datad => VCC,
	cin => \uart_inst|inst8|counter[3]~36\,
	combout => \uart_inst|inst8|counter[4]~38_combout\,
	cout => \uart_inst|inst8|counter[4]~39\);

-- Location: FF_X22_Y5_N9
\uart_inst|inst8|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[4]~38_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(4));

-- Location: LCCOMB_X22_Y5_N10
\uart_inst|inst8|counter[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[5]~40_combout\ = (\uart_inst|inst8|counter\(5) & (\uart_inst|inst8|counter[4]~39\ $ (GND))) # (!\uart_inst|inst8|counter\(5) & (!\uart_inst|inst8|counter[4]~39\ & VCC))
-- \uart_inst|inst8|counter[5]~41\ = CARRY((\uart_inst|inst8|counter\(5) & !\uart_inst|inst8|counter[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(5),
	datad => VCC,
	cin => \uart_inst|inst8|counter[4]~39\,
	combout => \uart_inst|inst8|counter[5]~40_combout\,
	cout => \uart_inst|inst8|counter[5]~41\);

-- Location: FF_X22_Y5_N11
\uart_inst|inst8|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[5]~40_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(5));

-- Location: LCCOMB_X22_Y5_N12
\uart_inst|inst8|counter[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[6]~42_combout\ = (\uart_inst|inst8|counter\(6) & (!\uart_inst|inst8|counter[5]~41\)) # (!\uart_inst|inst8|counter\(6) & ((\uart_inst|inst8|counter[5]~41\) # (GND)))
-- \uart_inst|inst8|counter[6]~43\ = CARRY((!\uart_inst|inst8|counter[5]~41\) # (!\uart_inst|inst8|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(6),
	datad => VCC,
	cin => \uart_inst|inst8|counter[5]~41\,
	combout => \uart_inst|inst8|counter[6]~42_combout\,
	cout => \uart_inst|inst8|counter[6]~43\);

-- Location: FF_X22_Y5_N13
\uart_inst|inst8|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[6]~42_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(6));

-- Location: LCCOMB_X22_Y5_N14
\uart_inst|inst8|counter[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[7]~44_combout\ = (\uart_inst|inst8|counter\(7) & (\uart_inst|inst8|counter[6]~43\ $ (GND))) # (!\uart_inst|inst8|counter\(7) & (!\uart_inst|inst8|counter[6]~43\ & VCC))
-- \uart_inst|inst8|counter[7]~45\ = CARRY((\uart_inst|inst8|counter\(7) & !\uart_inst|inst8|counter[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(7),
	datad => VCC,
	cin => \uart_inst|inst8|counter[6]~43\,
	combout => \uart_inst|inst8|counter[7]~44_combout\,
	cout => \uart_inst|inst8|counter[7]~45\);

-- Location: FF_X22_Y5_N15
\uart_inst|inst8|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[7]~44_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(7));

-- Location: LCCOMB_X22_Y5_N16
\uart_inst|inst8|counter[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[8]~46_combout\ = (\uart_inst|inst8|counter\(8) & (!\uart_inst|inst8|counter[7]~45\)) # (!\uart_inst|inst8|counter\(8) & ((\uart_inst|inst8|counter[7]~45\) # (GND)))
-- \uart_inst|inst8|counter[8]~47\ = CARRY((!\uart_inst|inst8|counter[7]~45\) # (!\uart_inst|inst8|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(8),
	datad => VCC,
	cin => \uart_inst|inst8|counter[7]~45\,
	combout => \uart_inst|inst8|counter[8]~46_combout\,
	cout => \uart_inst|inst8|counter[8]~47\);

-- Location: FF_X22_Y5_N17
\uart_inst|inst8|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[8]~46_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(8));

-- Location: LCCOMB_X22_Y5_N18
\uart_inst|inst8|counter[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[9]~48_combout\ = (\uart_inst|inst8|counter\(9) & (\uart_inst|inst8|counter[8]~47\ $ (GND))) # (!\uart_inst|inst8|counter\(9) & (!\uart_inst|inst8|counter[8]~47\ & VCC))
-- \uart_inst|inst8|counter[9]~49\ = CARRY((\uart_inst|inst8|counter\(9) & !\uart_inst|inst8|counter[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(9),
	datad => VCC,
	cin => \uart_inst|inst8|counter[8]~47\,
	combout => \uart_inst|inst8|counter[9]~48_combout\,
	cout => \uart_inst|inst8|counter[9]~49\);

-- Location: FF_X22_Y5_N19
\uart_inst|inst8|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[9]~48_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(9));

-- Location: LCCOMB_X22_Y5_N20
\uart_inst|inst8|counter[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[10]~50_combout\ = (\uart_inst|inst8|counter\(10) & (!\uart_inst|inst8|counter[9]~49\)) # (!\uart_inst|inst8|counter\(10) & ((\uart_inst|inst8|counter[9]~49\) # (GND)))
-- \uart_inst|inst8|counter[10]~51\ = CARRY((!\uart_inst|inst8|counter[9]~49\) # (!\uart_inst|inst8|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(10),
	datad => VCC,
	cin => \uart_inst|inst8|counter[9]~49\,
	combout => \uart_inst|inst8|counter[10]~50_combout\,
	cout => \uart_inst|inst8|counter[10]~51\);

-- Location: FF_X22_Y5_N21
\uart_inst|inst8|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[10]~50_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(10));

-- Location: LCCOMB_X22_Y5_N22
\uart_inst|inst8|counter[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[11]~52_combout\ = (\uart_inst|inst8|counter\(11) & (\uart_inst|inst8|counter[10]~51\ $ (GND))) # (!\uart_inst|inst8|counter\(11) & (!\uart_inst|inst8|counter[10]~51\ & VCC))
-- \uart_inst|inst8|counter[11]~53\ = CARRY((\uart_inst|inst8|counter\(11) & !\uart_inst|inst8|counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(11),
	datad => VCC,
	cin => \uart_inst|inst8|counter[10]~51\,
	combout => \uart_inst|inst8|counter[11]~52_combout\,
	cout => \uart_inst|inst8|counter[11]~53\);

-- Location: FF_X22_Y5_N23
\uart_inst|inst8|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[11]~52_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(11));

-- Location: LCCOMB_X22_Y5_N24
\uart_inst|inst8|counter[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[12]~54_combout\ = (\uart_inst|inst8|counter\(12) & (!\uart_inst|inst8|counter[11]~53\)) # (!\uart_inst|inst8|counter\(12) & ((\uart_inst|inst8|counter[11]~53\) # (GND)))
-- \uart_inst|inst8|counter[12]~55\ = CARRY((!\uart_inst|inst8|counter[11]~53\) # (!\uart_inst|inst8|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(12),
	datad => VCC,
	cin => \uart_inst|inst8|counter[11]~53\,
	combout => \uart_inst|inst8|counter[12]~54_combout\,
	cout => \uart_inst|inst8|counter[12]~55\);

-- Location: FF_X22_Y5_N25
\uart_inst|inst8|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[12]~54_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(12));

-- Location: LCCOMB_X22_Y5_N26
\uart_inst|inst8|counter[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[13]~56_combout\ = (\uart_inst|inst8|counter\(13) & (\uart_inst|inst8|counter[12]~55\ $ (GND))) # (!\uart_inst|inst8|counter\(13) & (!\uart_inst|inst8|counter[12]~55\ & VCC))
-- \uart_inst|inst8|counter[13]~57\ = CARRY((\uart_inst|inst8|counter\(13) & !\uart_inst|inst8|counter[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(13),
	datad => VCC,
	cin => \uart_inst|inst8|counter[12]~55\,
	combout => \uart_inst|inst8|counter[13]~56_combout\,
	cout => \uart_inst|inst8|counter[13]~57\);

-- Location: FF_X22_Y5_N27
\uart_inst|inst8|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[13]~56_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(13));

-- Location: LCCOMB_X22_Y5_N28
\uart_inst|inst8|counter[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[14]~58_combout\ = (\uart_inst|inst8|counter\(14) & (!\uart_inst|inst8|counter[13]~57\)) # (!\uart_inst|inst8|counter\(14) & ((\uart_inst|inst8|counter[13]~57\) # (GND)))
-- \uart_inst|inst8|counter[14]~59\ = CARRY((!\uart_inst|inst8|counter[13]~57\) # (!\uart_inst|inst8|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(14),
	datad => VCC,
	cin => \uart_inst|inst8|counter[13]~57\,
	combout => \uart_inst|inst8|counter[14]~58_combout\,
	cout => \uart_inst|inst8|counter[14]~59\);

-- Location: FF_X22_Y5_N29
\uart_inst|inst8|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[14]~58_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(14));

-- Location: LCCOMB_X22_Y5_N30
\uart_inst|inst8|counter[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[15]~60_combout\ = (\uart_inst|inst8|counter\(15) & (\uart_inst|inst8|counter[14]~59\ $ (GND))) # (!\uart_inst|inst8|counter\(15) & (!\uart_inst|inst8|counter[14]~59\ & VCC))
-- \uart_inst|inst8|counter[15]~61\ = CARRY((\uart_inst|inst8|counter\(15) & !\uart_inst|inst8|counter[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(15),
	datad => VCC,
	cin => \uart_inst|inst8|counter[14]~59\,
	combout => \uart_inst|inst8|counter[15]~60_combout\,
	cout => \uart_inst|inst8|counter[15]~61\);

-- Location: FF_X22_Y5_N31
\uart_inst|inst8|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[15]~60_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(15));

-- Location: LCCOMB_X22_Y4_N0
\uart_inst|inst8|counter[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[16]~62_combout\ = (\uart_inst|inst8|counter\(16) & (!\uart_inst|inst8|counter[15]~61\)) # (!\uart_inst|inst8|counter\(16) & ((\uart_inst|inst8|counter[15]~61\) # (GND)))
-- \uart_inst|inst8|counter[16]~63\ = CARRY((!\uart_inst|inst8|counter[15]~61\) # (!\uart_inst|inst8|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(16),
	datad => VCC,
	cin => \uart_inst|inst8|counter[15]~61\,
	combout => \uart_inst|inst8|counter[16]~62_combout\,
	cout => \uart_inst|inst8|counter[16]~63\);

-- Location: FF_X22_Y4_N1
\uart_inst|inst8|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[16]~62_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(16));

-- Location: LCCOMB_X22_Y4_N2
\uart_inst|inst8|counter[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[17]~64_combout\ = (\uart_inst|inst8|counter\(17) & (\uart_inst|inst8|counter[16]~63\ $ (GND))) # (!\uart_inst|inst8|counter\(17) & (!\uart_inst|inst8|counter[16]~63\ & VCC))
-- \uart_inst|inst8|counter[17]~65\ = CARRY((\uart_inst|inst8|counter\(17) & !\uart_inst|inst8|counter[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(17),
	datad => VCC,
	cin => \uart_inst|inst8|counter[16]~63\,
	combout => \uart_inst|inst8|counter[17]~64_combout\,
	cout => \uart_inst|inst8|counter[17]~65\);

-- Location: FF_X22_Y4_N3
\uart_inst|inst8|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[17]~64_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(17));

-- Location: LCCOMB_X22_Y4_N4
\uart_inst|inst8|counter[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[18]~66_combout\ = (\uart_inst|inst8|counter\(18) & (!\uart_inst|inst8|counter[17]~65\)) # (!\uart_inst|inst8|counter\(18) & ((\uart_inst|inst8|counter[17]~65\) # (GND)))
-- \uart_inst|inst8|counter[18]~67\ = CARRY((!\uart_inst|inst8|counter[17]~65\) # (!\uart_inst|inst8|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(18),
	datad => VCC,
	cin => \uart_inst|inst8|counter[17]~65\,
	combout => \uart_inst|inst8|counter[18]~66_combout\,
	cout => \uart_inst|inst8|counter[18]~67\);

-- Location: FF_X22_Y4_N5
\uart_inst|inst8|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[18]~66_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(18));

-- Location: LCCOMB_X22_Y4_N6
\uart_inst|inst8|counter[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[19]~68_combout\ = (\uart_inst|inst8|counter\(19) & (\uart_inst|inst8|counter[18]~67\ $ (GND))) # (!\uart_inst|inst8|counter\(19) & (!\uart_inst|inst8|counter[18]~67\ & VCC))
-- \uart_inst|inst8|counter[19]~69\ = CARRY((\uart_inst|inst8|counter\(19) & !\uart_inst|inst8|counter[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(19),
	datad => VCC,
	cin => \uart_inst|inst8|counter[18]~67\,
	combout => \uart_inst|inst8|counter[19]~68_combout\,
	cout => \uart_inst|inst8|counter[19]~69\);

-- Location: FF_X22_Y4_N7
\uart_inst|inst8|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[19]~68_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(19));

-- Location: LCCOMB_X22_Y4_N8
\uart_inst|inst8|counter[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[20]~70_combout\ = (\uart_inst|inst8|counter\(20) & (!\uart_inst|inst8|counter[19]~69\)) # (!\uart_inst|inst8|counter\(20) & ((\uart_inst|inst8|counter[19]~69\) # (GND)))
-- \uart_inst|inst8|counter[20]~71\ = CARRY((!\uart_inst|inst8|counter[19]~69\) # (!\uart_inst|inst8|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(20),
	datad => VCC,
	cin => \uart_inst|inst8|counter[19]~69\,
	combout => \uart_inst|inst8|counter[20]~70_combout\,
	cout => \uart_inst|inst8|counter[20]~71\);

-- Location: FF_X22_Y4_N9
\uart_inst|inst8|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[20]~70_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(20));

-- Location: LCCOMB_X22_Y4_N10
\uart_inst|inst8|counter[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[21]~72_combout\ = (\uart_inst|inst8|counter\(21) & (\uart_inst|inst8|counter[20]~71\ $ (GND))) # (!\uart_inst|inst8|counter\(21) & (!\uart_inst|inst8|counter[20]~71\ & VCC))
-- \uart_inst|inst8|counter[21]~73\ = CARRY((\uart_inst|inst8|counter\(21) & !\uart_inst|inst8|counter[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(21),
	datad => VCC,
	cin => \uart_inst|inst8|counter[20]~71\,
	combout => \uart_inst|inst8|counter[21]~72_combout\,
	cout => \uart_inst|inst8|counter[21]~73\);

-- Location: FF_X22_Y4_N11
\uart_inst|inst8|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[21]~72_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(21));

-- Location: LCCOMB_X22_Y4_N12
\uart_inst|inst8|counter[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[22]~74_combout\ = (\uart_inst|inst8|counter\(22) & (!\uart_inst|inst8|counter[21]~73\)) # (!\uart_inst|inst8|counter\(22) & ((\uart_inst|inst8|counter[21]~73\) # (GND)))
-- \uart_inst|inst8|counter[22]~75\ = CARRY((!\uart_inst|inst8|counter[21]~73\) # (!\uart_inst|inst8|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(22),
	datad => VCC,
	cin => \uart_inst|inst8|counter[21]~73\,
	combout => \uart_inst|inst8|counter[22]~74_combout\,
	cout => \uart_inst|inst8|counter[22]~75\);

-- Location: FF_X22_Y4_N13
\uart_inst|inst8|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[22]~74_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(22));

-- Location: LCCOMB_X22_Y4_N14
\uart_inst|inst8|counter[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[23]~76_combout\ = (\uart_inst|inst8|counter\(23) & (\uart_inst|inst8|counter[22]~75\ $ (GND))) # (!\uart_inst|inst8|counter\(23) & (!\uart_inst|inst8|counter[22]~75\ & VCC))
-- \uart_inst|inst8|counter[23]~77\ = CARRY((\uart_inst|inst8|counter\(23) & !\uart_inst|inst8|counter[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(23),
	datad => VCC,
	cin => \uart_inst|inst8|counter[22]~75\,
	combout => \uart_inst|inst8|counter[23]~76_combout\,
	cout => \uart_inst|inst8|counter[23]~77\);

-- Location: FF_X22_Y4_N15
\uart_inst|inst8|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[23]~76_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(23));

-- Location: LCCOMB_X22_Y4_N16
\uart_inst|inst8|counter[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[24]~78_combout\ = (\uart_inst|inst8|counter\(24) & (!\uart_inst|inst8|counter[23]~77\)) # (!\uart_inst|inst8|counter\(24) & ((\uart_inst|inst8|counter[23]~77\) # (GND)))
-- \uart_inst|inst8|counter[24]~79\ = CARRY((!\uart_inst|inst8|counter[23]~77\) # (!\uart_inst|inst8|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(24),
	datad => VCC,
	cin => \uart_inst|inst8|counter[23]~77\,
	combout => \uart_inst|inst8|counter[24]~78_combout\,
	cout => \uart_inst|inst8|counter[24]~79\);

-- Location: FF_X22_Y4_N17
\uart_inst|inst8|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[24]~78_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(24));

-- Location: LCCOMB_X22_Y4_N18
\uart_inst|inst8|counter[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[25]~80_combout\ = (\uart_inst|inst8|counter\(25) & (\uart_inst|inst8|counter[24]~79\ $ (GND))) # (!\uart_inst|inst8|counter\(25) & (!\uart_inst|inst8|counter[24]~79\ & VCC))
-- \uart_inst|inst8|counter[25]~81\ = CARRY((\uart_inst|inst8|counter\(25) & !\uart_inst|inst8|counter[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(25),
	datad => VCC,
	cin => \uart_inst|inst8|counter[24]~79\,
	combout => \uart_inst|inst8|counter[25]~80_combout\,
	cout => \uart_inst|inst8|counter[25]~81\);

-- Location: FF_X22_Y4_N19
\uart_inst|inst8|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[25]~80_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(25));

-- Location: LCCOMB_X22_Y4_N20
\uart_inst|inst8|counter[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[26]~82_combout\ = (\uart_inst|inst8|counter\(26) & (!\uart_inst|inst8|counter[25]~81\)) # (!\uart_inst|inst8|counter\(26) & ((\uart_inst|inst8|counter[25]~81\) # (GND)))
-- \uart_inst|inst8|counter[26]~83\ = CARRY((!\uart_inst|inst8|counter[25]~81\) # (!\uart_inst|inst8|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(26),
	datad => VCC,
	cin => \uart_inst|inst8|counter[25]~81\,
	combout => \uart_inst|inst8|counter[26]~82_combout\,
	cout => \uart_inst|inst8|counter[26]~83\);

-- Location: FF_X22_Y4_N21
\uart_inst|inst8|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[26]~82_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(26));

-- Location: LCCOMB_X22_Y4_N22
\uart_inst|inst8|counter[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[27]~84_combout\ = (\uart_inst|inst8|counter\(27) & (\uart_inst|inst8|counter[26]~83\ $ (GND))) # (!\uart_inst|inst8|counter\(27) & (!\uart_inst|inst8|counter[26]~83\ & VCC))
-- \uart_inst|inst8|counter[27]~85\ = CARRY((\uart_inst|inst8|counter\(27) & !\uart_inst|inst8|counter[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(27),
	datad => VCC,
	cin => \uart_inst|inst8|counter[26]~83\,
	combout => \uart_inst|inst8|counter[27]~84_combout\,
	cout => \uart_inst|inst8|counter[27]~85\);

-- Location: FF_X22_Y4_N23
\uart_inst|inst8|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[27]~84_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(27));

-- Location: LCCOMB_X23_Y5_N10
\uart_inst|inst8|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~8_combout\ = (!\uart_inst|inst8|counter\(25) & (!\uart_inst|inst8|counter\(26) & (!\uart_inst|inst8|counter\(24) & !\uart_inst|inst8|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(25),
	datab => \uart_inst|inst8|counter\(26),
	datac => \uart_inst|inst8|counter\(24),
	datad => \uart_inst|inst8|counter\(27),
	combout => \uart_inst|inst8|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y5_N26
\uart_inst|inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~2_combout\ = (!\uart_inst|inst8|counter\(8) & (!\uart_inst|inst8|counter\(11) & (!\uart_inst|inst8|counter\(10) & !\uart_inst|inst8|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(8),
	datab => \uart_inst|inst8|counter\(11),
	datac => \uart_inst|inst8|counter\(10),
	datad => \uart_inst|inst8|counter\(9),
	combout => \uart_inst|inst8|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y5_N28
\uart_inst|inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~1_combout\ = (!\uart_inst|inst8|counter\(7) & (!\uart_inst|inst8|counter\(4) & (!\uart_inst|inst8|counter\(6) & !\uart_inst|inst8|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(7),
	datab => \uart_inst|inst8|counter\(4),
	datac => \uart_inst|inst8|counter\(6),
	datad => \uart_inst|inst8|counter\(5),
	combout => \uart_inst|inst8|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y5_N0
\uart_inst|inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~0_combout\ = (\uart_inst|inst8|counter\(3) & (!\uart_inst|inst8|counter\(2) & (!\uart_inst|inst8|counter\(0) & \uart_inst|inst8|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(3),
	datab => \uart_inst|inst8|counter\(2),
	datac => \uart_inst|inst8|counter\(0),
	datad => \uart_inst|inst8|counter\(1),
	combout => \uart_inst|inst8|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y5_N12
\uart_inst|inst8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~3_combout\ = (!\uart_inst|inst8|counter\(12) & (!\uart_inst|inst8|counter\(15) & (!\uart_inst|inst8|counter\(13) & !\uart_inst|inst8|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(12),
	datab => \uart_inst|inst8|counter\(15),
	datac => \uart_inst|inst8|counter\(13),
	datad => \uart_inst|inst8|counter\(14),
	combout => \uart_inst|inst8|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y5_N18
\uart_inst|inst8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~4_combout\ = (\uart_inst|inst8|Equal0~2_combout\ & (\uart_inst|inst8|Equal0~1_combout\ & (\uart_inst|inst8|Equal0~0_combout\ & \uart_inst|inst8|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|Equal0~2_combout\,
	datab => \uart_inst|inst8|Equal0~1_combout\,
	datac => \uart_inst|inst8|Equal0~0_combout\,
	datad => \uart_inst|inst8|Equal0~3_combout\,
	combout => \uart_inst|inst8|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y4_N24
\uart_inst|inst8|counter[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[28]~86_combout\ = (\uart_inst|inst8|counter\(28) & (!\uart_inst|inst8|counter[27]~85\)) # (!\uart_inst|inst8|counter\(28) & ((\uart_inst|inst8|counter[27]~85\) # (GND)))
-- \uart_inst|inst8|counter[28]~87\ = CARRY((!\uart_inst|inst8|counter[27]~85\) # (!\uart_inst|inst8|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(28),
	datad => VCC,
	cin => \uart_inst|inst8|counter[27]~85\,
	combout => \uart_inst|inst8|counter[28]~86_combout\,
	cout => \uart_inst|inst8|counter[28]~87\);

-- Location: FF_X22_Y4_N25
\uart_inst|inst8|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[28]~86_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(28));

-- Location: LCCOMB_X22_Y4_N26
\uart_inst|inst8|counter[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[29]~88_combout\ = (\uart_inst|inst8|counter\(29) & (\uart_inst|inst8|counter[28]~87\ $ (GND))) # (!\uart_inst|inst8|counter\(29) & (!\uart_inst|inst8|counter[28]~87\ & VCC))
-- \uart_inst|inst8|counter[29]~89\ = CARRY((\uart_inst|inst8|counter\(29) & !\uart_inst|inst8|counter[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(29),
	datad => VCC,
	cin => \uart_inst|inst8|counter[28]~87\,
	combout => \uart_inst|inst8|counter[29]~88_combout\,
	cout => \uart_inst|inst8|counter[29]~89\);

-- Location: FF_X22_Y4_N27
\uart_inst|inst8|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[29]~88_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(29));

-- Location: LCCOMB_X22_Y4_N28
\uart_inst|inst8|counter[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[30]~90_combout\ = (\uart_inst|inst8|counter\(30) & (!\uart_inst|inst8|counter[29]~89\)) # (!\uart_inst|inst8|counter\(30) & ((\uart_inst|inst8|counter[29]~89\) # (GND)))
-- \uart_inst|inst8|counter[30]~91\ = CARRY((!\uart_inst|inst8|counter[29]~89\) # (!\uart_inst|inst8|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst8|counter\(30),
	datad => VCC,
	cin => \uart_inst|inst8|counter[29]~89\,
	combout => \uart_inst|inst8|counter[30]~90_combout\,
	cout => \uart_inst|inst8|counter[30]~91\);

-- Location: FF_X22_Y4_N29
\uart_inst|inst8|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[30]~90_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(30));

-- Location: LCCOMB_X22_Y4_N30
\uart_inst|inst8|counter[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|counter[31]~92_combout\ = \uart_inst|inst8|counter\(31) $ (!\uart_inst|inst8|counter[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(31),
	cin => \uart_inst|inst8|counter[30]~91\,
	combout => \uart_inst|inst8|counter[31]~92_combout\);

-- Location: FF_X22_Y4_N31
\uart_inst|inst8|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|counter[31]~92_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	ena => \uart_inst|inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|counter\(31));

-- Location: LCCOMB_X23_Y5_N4
\uart_inst|inst8|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~9_combout\ = (!\uart_inst|inst8|counter\(28) & (!\uart_inst|inst8|counter\(29) & (!\uart_inst|inst8|counter\(30) & !\uart_inst|inst8|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(28),
	datab => \uart_inst|inst8|counter\(29),
	datac => \uart_inst|inst8|counter\(30),
	datad => \uart_inst|inst8|counter\(31),
	combout => \uart_inst|inst8|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y5_N22
\uart_inst|inst8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~6_combout\ = (!\uart_inst|inst8|counter\(23) & !\uart_inst|inst8|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(23),
	datad => \uart_inst|inst8|counter\(22),
	combout => \uart_inst|inst8|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y5_N20
\uart_inst|inst8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~5_combout\ = (!\uart_inst|inst8|counter\(18) & (!\uart_inst|inst8|counter\(16) & (!\uart_inst|inst8|counter\(19) & !\uart_inst|inst8|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(18),
	datab => \uart_inst|inst8|counter\(16),
	datac => \uart_inst|inst8|counter\(19),
	datad => \uart_inst|inst8|counter\(17),
	combout => \uart_inst|inst8|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y5_N24
\uart_inst|inst8|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~7_combout\ = (!\uart_inst|inst8|counter\(20) & (!\uart_inst|inst8|counter\(21) & (\uart_inst|inst8|Equal0~6_combout\ & \uart_inst|inst8|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|counter\(20),
	datab => \uart_inst|inst8|counter\(21),
	datac => \uart_inst|inst8|Equal0~6_combout\,
	datad => \uart_inst|inst8|Equal0~5_combout\,
	combout => \uart_inst|inst8|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y5_N30
\uart_inst|inst8|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|Equal0~10_combout\ = (((!\uart_inst|inst8|Equal0~7_combout\) # (!\uart_inst|inst8|Equal0~9_combout\)) # (!\uart_inst|inst8|Equal0~4_combout\)) # (!\uart_inst|inst8|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|Equal0~8_combout\,
	datab => \uart_inst|inst8|Equal0~4_combout\,
	datac => \uart_inst|inst8|Equal0~9_combout\,
	datad => \uart_inst|inst8|Equal0~7_combout\,
	combout => \uart_inst|inst8|Equal0~10_combout\);

-- Location: LCCOMB_X23_Y5_N16
\uart_inst|inst8|stop_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|stop_counter~0_combout\ = (\uart_inst|inst8|stop_counter~q\) # (!\uart_inst|inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst8|Equal0~10_combout\,
	datac => \uart_inst|inst8|stop_counter~q\,
	combout => \uart_inst|inst8|stop_counter~0_combout\);

-- Location: LCCOMB_X23_Y5_N2
\uart_inst|inst8|stop_counter~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst8|stop_counter~feeder_combout\ = \uart_inst|inst8|stop_counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst8|stop_counter~0_combout\,
	combout => \uart_inst|inst8|stop_counter~feeder_combout\);

-- Location: FF_X23_Y5_N3
\uart_inst|inst8|stop_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst8|stop_counter~feeder_combout\,
	clrn => \uart_inst|inst8|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|stop_counter~q\);

-- Location: FF_X23_Y5_N1
\uart_inst|inst8|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst8|pulse~feeder_combout\,
	clrn => \uart_inst|inst8|ALT_INV_stop_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst8|pulse~q\);

-- Location: LCCOMB_X24_Y10_N0
\U14|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~2_combout\ = (\U5|instruction\(15) & (\U6|Mux1~4_combout\ & (\U6|Mux1~5_combout\ & \uart_inst|inst8|pulse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U6|Mux1~4_combout\,
	datac => \U6|Mux1~5_combout\,
	datad => \uart_inst|inst8|pulse~q\,
	combout => \U14|process_0~2_combout\);

-- Location: LCCOMB_X24_Y10_N2
\U14|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector23~9_combout\ = (\U14|current_state.t17~q\ & !\U14|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t17~q\,
	datad => \U14|process_0~2_combout\,
	combout => \U14|Selector23~9_combout\);

-- Location: LCCOMB_X24_Y10_N10
\U14|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector23~10_combout\ = (\U6|Mux0~5_combout\ & ((\U14|current_state.t11~q\) # ((!\uart_inst|inst7|pulse~q\ & \U14|Selector23~9_combout\)))) # (!\U6|Mux0~5_combout\ & (((\U14|Selector23~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U6|Mux0~5_combout\,
	datac => \uart_inst|inst7|pulse~q\,
	datad => \U14|Selector23~9_combout\,
	combout => \U14|Selector23~10_combout\);

-- Location: LCCOMB_X24_Y10_N26
\U14|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector23~11_combout\ = (\U14|Selector23~10_combout\) # ((\U14|current_state.t10~q\ & ((\U6|Mux5~0_combout\) # (\U14|Selector23~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t10~q\,
	datab => \U6|Mux5~0_combout\,
	datac => \U14|Selector23~12_combout\,
	datad => \U14|Selector23~10_combout\,
	combout => \U14|Selector23~11_combout\);

-- Location: FF_X24_Y10_N27
\U14|next_state.t17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector23~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t17~q\);

-- Location: FF_X23_Y10_N27
\U14|current_state.t17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t17~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t17~q\);

-- Location: LCCOMB_X24_Y11_N4
\U14|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~0_combout\ = (\U6|Mux0~4_combout\ & (!\U5|instruction\(13) & (\U6|Mux0~6_combout\ & !\uart_inst|inst7|pulse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux0~4_combout\,
	datab => \U5|instruction\(13),
	datac => \U6|Mux0~6_combout\,
	datad => \uart_inst|inst7|pulse~q\,
	combout => \U14|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y11_N30
\U14|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~4_combout\ = (\U14|current_state.t17~q\ & ((\U5|instruction\(10)) # (!\U14|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t17~q\,
	datab => \U5|instruction\(10),
	datac => \U14|Selector16~0_combout\,
	combout => \U14|Selector6~4_combout\);

-- Location: LCCOMB_X23_Y11_N16
\U14|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~6_combout\ = (\U14|current_state.t14~q\ & ((\U5|instruction\(10)) # ((\U5|instruction\(15)) # (!\U6|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(10),
	datab => \U5|instruction\(15),
	datac => \U14|current_state.t14~q\,
	datad => \U6|Mux8~0_combout\,
	combout => \U14|Selector6~6_combout\);

-- Location: LCCOMB_X24_Y11_N2
\U14|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~7_combout\ = (!\U14|current_state.t10~q\ & ((\U14|current_state.t14~q\) # ((\U14|current_state.t17~q\) # (!\U14|Selector17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|current_state.t17~q\,
	datac => \U14|current_state.t10~q\,
	datad => \U14|Selector17~4_combout\,
	combout => \U14|Selector6~7_combout\);

-- Location: LCCOMB_X25_Y11_N2
\U14|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~5_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(11)) # (!\U5|instruction\(15))))) # (!\U5|instruction\(12) & ((\U5|instruction\(15) & (\U5|instruction\(10))) # (!\U5|instruction\(15) & ((!\U5|instruction\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(15),
	datad => \U5|instruction\(11),
	combout => \U14|Selector6~5_combout\);

-- Location: LCCOMB_X24_Y11_N14
\U14|Selector6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~12_combout\ = (\U14|current_state.t12~q\ & ((\U14|Selector6~5_combout\) # ((\U5|instruction\(13)) # (\U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector6~5_combout\,
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(14),
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector6~12_combout\);

-- Location: LCCOMB_X24_Y11_N20
\U14|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~8_combout\ = (\U14|Selector6~6_combout\) # ((\U14|Selector6~12_combout\) # (!\U14|Selector6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector6~6_combout\,
	datab => \U14|Selector6~7_combout\,
	datad => \U14|Selector6~12_combout\,
	combout => \U14|Selector6~8_combout\);

-- Location: LCCOMB_X23_Y9_N26
\U14|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~2_combout\ = (\U5|instruction\(12) & (!\U5|instruction\(11) & (\U5|instruction\(14)))) # (!\U5|instruction\(12) & ((\U5|instruction\(13)) # ((\U5|instruction\(11) & \U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(13),
	combout => \U14|Selector6~2_combout\);

-- Location: LCCOMB_X23_Y9_N6
\U14|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~3_combout\ = (!\U5|instruction\(15) & (\U14|current_state.t12~q\ & (\U14|Selector6~2_combout\ & !\U5|instruction\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U14|current_state.t12~q\,
	datac => \U14|Selector6~2_combout\,
	datad => \U5|instruction\(10),
	combout => \U14|Selector6~3_combout\);

-- Location: LCCOMB_X24_Y11_N26
\U14|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~9_combout\ = (\U14|Selector6~3_combout\) # ((\U14|dbfaout_latch~q\ & ((\U14|Selector6~4_combout\) # (\U14|Selector6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector6~4_combout\,
	datab => \U14|Selector6~8_combout\,
	datac => \U14|Selector6~3_combout\,
	datad => \U14|dbfaout_latch~q\,
	combout => \U14|Selector6~9_combout\);

-- Location: LCCOMB_X24_Y11_N28
\U14|Selector6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~10_combout\ = (!\U6|Mux1~6_combout\ & ((\U6|Mux0~5_combout\ & (!\U5|instruction\(10))) # (!\U6|Mux0~5_combout\ & ((\U14|process_0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(10),
	datab => \U6|Mux1~6_combout\,
	datac => \U6|Mux0~5_combout\,
	datad => \U14|process_0~9_combout\,
	combout => \U14|Selector6~10_combout\);

-- Location: LCCOMB_X24_Y11_N6
\U14|Selector6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~11_combout\ = (\U14|Selector6~9_combout\) # ((\U14|Selector18~3_combout\ & (!\U14|process_0~8_combout\ & \U14|Selector6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector18~3_combout\,
	datab => \U14|process_0~8_combout\,
	datac => \U14|Selector6~9_combout\,
	datad => \U14|Selector6~10_combout\,
	combout => \U14|Selector6~11_combout\);

-- Location: FF_X24_Y11_N7
\U14|dbfaout_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|dbfaout_latch~q\);

-- Location: LCCOMB_X23_Y10_N8
\U14|nextn_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|nextn_latch~0_combout\ = (\U14|Selector1~0_combout\ & (\U14|process_0~5_combout\ & ((\U14|process_0~7_combout\) # (!\U5|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(10),
	datab => \U14|Selector1~0_combout\,
	datac => \U14|process_0~5_combout\,
	datad => \U14|process_0~7_combout\,
	combout => \U14|nextn_latch~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\U14|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~3_combout\ = (\U14|current_state.t10~q\ & ((\U14|process_0~9_combout\) # ((!\U14|process_0~4_combout\) # (!\U14|nextn_latch~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t10~q\,
	datab => \U14|process_0~9_combout\,
	datac => \U14|nextn_latch~0_combout\,
	datad => \U14|process_0~4_combout\,
	combout => \U14|Selector1~3_combout\);

-- Location: LCCOMB_X22_Y10_N28
\U14|next_state.t_rst_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t_rst_2~0_combout\ = !\U14|current_state.t_rst_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|current_state.t_rst_1~q\,
	combout => \U14|next_state.t_rst_2~0_combout\);

-- Location: LCCOMB_X21_Y10_N30
\U14|next_state.t_rst_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t_rst_2~feeder_combout\ = \U14|next_state.t_rst_2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|next_state.t_rst_2~0_combout\,
	combout => \U14|next_state.t_rst_2~feeder_combout\);

-- Location: FF_X21_Y10_N31
\U14|next_state.t_rst_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t_rst_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t_rst_2~q\);

-- Location: FF_X21_Y10_N27
\U14|current_state.t_rst_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t_rst_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t_rst_2~q\);

-- Location: LCCOMB_X24_Y8_N10
\U14|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~5_combout\ = (\U14|current_state.t8~q\) # ((\U14|current_state.t4~q\) # (\U14|current_state.t_rst_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t8~q\,
	datac => \U14|current_state.t4~q\,
	datad => \U14|current_state.t_rst_2~q\,
	combout => \U14|Selector1~5_combout\);

-- Location: LCCOMB_X22_Y9_N12
\U14|ldpc_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|ldpc_latch~0_combout\ = (\U5|instruction\(11)) # ((\U5|instruction\(12) $ (!\U5|instruction\(15))) # (!\U6|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U6|Mux1~4_combout\,
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(15),
	combout => \U14|ldpc_latch~0_combout\);

-- Location: LCCOMB_X22_Y10_N22
\U14|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~4_combout\ = (\U14|current_state.t12~q\ & (((\U14|ldpc_latch~0_combout\) # (\U6|Mux6~0_combout\)) # (!\U14|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector1~0_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|ldpc_latch~0_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector1~4_combout\);

-- Location: LCCOMB_X21_Y10_N20
\U14|next_state.t15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t15~feeder_combout\ = \U14|next_state~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state~22_combout\,
	combout => \U14|next_state.t15~feeder_combout\);

-- Location: FF_X21_Y10_N21
\U14|next_state.t15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t15~q\);

-- Location: LCCOMB_X21_Y10_N12
\U14|current_state.t15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t15~feeder_combout\ = \U14|next_state.t15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t15~q\,
	combout => \U14|current_state.t15~feeder_combout\);

-- Location: FF_X21_Y10_N13
\U14|current_state.t15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t15~q\);

-- Location: FF_X23_Y12_N9
\U14|next_state.t16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t15~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t16~q\);

-- Location: FF_X23_Y12_N7
\U14|current_state.t16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t16~q\);

-- Location: LCCOMB_X21_Y8_N12
\U14|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~0_combout\ = \U14|counter\(0) $ (VCC)
-- \U14|Add0~1\ = CARRY(\U14|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(0),
	datad => VCC,
	combout => \U14|Add0~0_combout\,
	cout => \U14|Add0~1\);

-- Location: LCCOMB_X21_Y8_N14
\U14|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~2_combout\ = (\U14|counter\(1) & (!\U14|Add0~1\)) # (!\U14|counter\(1) & ((\U14|Add0~1\) # (GND)))
-- \U14|Add0~3\ = CARRY((!\U14|Add0~1\) # (!\U14|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(1),
	datad => VCC,
	cin => \U14|Add0~1\,
	combout => \U14|Add0~2_combout\,
	cout => \U14|Add0~3\);

-- Location: LCCOMB_X21_Y8_N16
\U14|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~4_combout\ = (\U14|counter\(2) & (\U14|Add0~3\ $ (GND))) # (!\U14|counter\(2) & (!\U14|Add0~3\ & VCC))
-- \U14|Add0~5\ = CARRY((\U14|counter\(2) & !\U14|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(2),
	datad => VCC,
	cin => \U14|Add0~3\,
	combout => \U14|Add0~4_combout\,
	cout => \U14|Add0~5\);

-- Location: LCCOMB_X21_Y8_N4
\U14|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~9_combout\ = (\U14|Add0~4_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~0_combout\,
	datab => \U14|Add0~4_combout\,
	datad => \U14|Equal0~5_combout\,
	combout => \U14|counter~9_combout\);

-- Location: FF_X21_Y8_N5
\U14|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~9_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(2));

-- Location: LCCOMB_X21_Y8_N18
\U14|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~6_combout\ = (\U14|counter\(3) & (!\U14|Add0~5\)) # (!\U14|counter\(3) & ((\U14|Add0~5\) # (GND)))
-- \U14|Add0~7\ = CARRY((!\U14|Add0~5\) # (!\U14|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(3),
	datad => VCC,
	cin => \U14|Add0~5\,
	combout => \U14|Add0~6_combout\,
	cout => \U14|Add0~7\);

-- Location: LCCOMB_X21_Y8_N10
\U14|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~8_combout\ = (\U14|Add0~6_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~0_combout\,
	datab => \U14|Add0~6_combout\,
	datad => \U14|Equal0~5_combout\,
	combout => \U14|counter~8_combout\);

-- Location: FF_X21_Y8_N11
\U14|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~8_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(3));

-- Location: LCCOMB_X21_Y8_N20
\U14|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~8_combout\ = (\U14|counter\(4) & (\U14|Add0~7\ $ (GND))) # (!\U14|counter\(4) & (!\U14|Add0~7\ & VCC))
-- \U14|Add0~9\ = CARRY((\U14|counter\(4) & !\U14|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(4),
	datad => VCC,
	cin => \U14|Add0~7\,
	combout => \U14|Add0~8_combout\,
	cout => \U14|Add0~9\);

-- Location: LCCOMB_X21_Y8_N0
\U14|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~7_combout\ = (\U14|Add0~8_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~0_combout\,
	datab => \U14|Add0~8_combout\,
	datad => \U14|Equal0~5_combout\,
	combout => \U14|counter~7_combout\);

-- Location: FF_X21_Y8_N1
\U14|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~7_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(4));

-- Location: LCCOMB_X21_Y8_N22
\U14|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~10_combout\ = (\U14|counter\(5) & (!\U14|Add0~9\)) # (!\U14|counter\(5) & ((\U14|Add0~9\) # (GND)))
-- \U14|Add0~11\ = CARRY((!\U14|Add0~9\) # (!\U14|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(5),
	datad => VCC,
	cin => \U14|Add0~9\,
	combout => \U14|Add0~10_combout\,
	cout => \U14|Add0~11\);

-- Location: FF_X21_Y8_N23
\U14|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~10_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(5));

-- Location: LCCOMB_X21_Y8_N24
\U14|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~12_combout\ = (\U14|counter\(6) & (\U14|Add0~11\ $ (GND))) # (!\U14|counter\(6) & (!\U14|Add0~11\ & VCC))
-- \U14|Add0~13\ = CARRY((\U14|counter\(6) & !\U14|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(6),
	datad => VCC,
	cin => \U14|Add0~11\,
	combout => \U14|Add0~12_combout\,
	cout => \U14|Add0~13\);

-- Location: LCCOMB_X21_Y10_N10
\U14|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~6_combout\ = (\U14|Add0~12_combout\ & ((!\U14|Equal0~0_combout\) # (!\U14|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~5_combout\,
	datac => \U14|Equal0~0_combout\,
	datad => \U14|Add0~12_combout\,
	combout => \U14|counter~6_combout\);

-- Location: FF_X21_Y10_N11
\U14|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~6_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(6));

-- Location: LCCOMB_X21_Y8_N26
\U14|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~14_combout\ = (\U14|counter\(7) & (!\U14|Add0~13\)) # (!\U14|counter\(7) & ((\U14|Add0~13\) # (GND)))
-- \U14|Add0~15\ = CARRY((!\U14|Add0~13\) # (!\U14|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(7),
	datad => VCC,
	cin => \U14|Add0~13\,
	combout => \U14|Add0~14_combout\,
	cout => \U14|Add0~15\);

-- Location: LCCOMB_X21_Y8_N2
\U14|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~5_combout\ = (\U14|Add0~14_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Add0~14_combout\,
	datac => \U14|Equal0~0_combout\,
	datad => \U14|Equal0~5_combout\,
	combout => \U14|counter~5_combout\);

-- Location: FF_X21_Y8_N3
\U14|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~5_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(7));

-- Location: LCCOMB_X21_Y8_N28
\U14|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~16_combout\ = (\U14|counter\(8) & (\U14|Add0~15\ $ (GND))) # (!\U14|counter\(8) & (!\U14|Add0~15\ & VCC))
-- \U14|Add0~17\ = CARRY((\U14|counter\(8) & !\U14|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(8),
	datad => VCC,
	cin => \U14|Add0~15\,
	combout => \U14|Add0~16_combout\,
	cout => \U14|Add0~17\);

-- Location: LCCOMB_X21_Y8_N8
\U14|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~4_combout\ = (\U14|Add0~16_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~0_combout\,
	datab => \U14|Add0~16_combout\,
	datad => \U14|Equal0~5_combout\,
	combout => \U14|counter~4_combout\);

-- Location: FF_X21_Y8_N9
\U14|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~4_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(8));

-- Location: LCCOMB_X21_Y8_N30
\U14|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~18_combout\ = (\U14|counter\(9) & (!\U14|Add0~17\)) # (!\U14|counter\(9) & ((\U14|Add0~17\) # (GND)))
-- \U14|Add0~19\ = CARRY((!\U14|Add0~17\) # (!\U14|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(9),
	datad => VCC,
	cin => \U14|Add0~17\,
	combout => \U14|Add0~18_combout\,
	cout => \U14|Add0~19\);

-- Location: FF_X21_Y8_N31
\U14|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~18_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(9));

-- Location: LCCOMB_X21_Y7_N0
\U14|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~20_combout\ = (\U14|counter\(10) & (\U14|Add0~19\ $ (GND))) # (!\U14|counter\(10) & (!\U14|Add0~19\ & VCC))
-- \U14|Add0~21\ = CARRY((\U14|counter\(10) & !\U14|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(10),
	datad => VCC,
	cin => \U14|Add0~19\,
	combout => \U14|Add0~20_combout\,
	cout => \U14|Add0~21\);

-- Location: FF_X21_Y7_N1
\U14|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~20_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(10));

-- Location: LCCOMB_X21_Y7_N2
\U14|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~22_combout\ = (\U14|counter\(11) & (!\U14|Add0~21\)) # (!\U14|counter\(11) & ((\U14|Add0~21\) # (GND)))
-- \U14|Add0~23\ = CARRY((!\U14|Add0~21\) # (!\U14|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(11),
	datad => VCC,
	cin => \U14|Add0~21\,
	combout => \U14|Add0~22_combout\,
	cout => \U14|Add0~23\);

-- Location: FF_X21_Y7_N3
\U14|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~22_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(11));

-- Location: LCCOMB_X21_Y7_N4
\U14|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~24_combout\ = (\U14|counter\(12) & (\U14|Add0~23\ $ (GND))) # (!\U14|counter\(12) & (!\U14|Add0~23\ & VCC))
-- \U14|Add0~25\ = CARRY((\U14|counter\(12) & !\U14|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(12),
	datad => VCC,
	cin => \U14|Add0~23\,
	combout => \U14|Add0~24_combout\,
	cout => \U14|Add0~25\);

-- Location: FF_X21_Y7_N5
\U14|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~24_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(12));

-- Location: LCCOMB_X21_Y7_N6
\U14|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~26_combout\ = (\U14|counter\(13) & (!\U14|Add0~25\)) # (!\U14|counter\(13) & ((\U14|Add0~25\) # (GND)))
-- \U14|Add0~27\ = CARRY((!\U14|Add0~25\) # (!\U14|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(13),
	datad => VCC,
	cin => \U14|Add0~25\,
	combout => \U14|Add0~26_combout\,
	cout => \U14|Add0~27\);

-- Location: FF_X21_Y7_N7
\U14|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~26_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(13));

-- Location: LCCOMB_X21_Y7_N8
\U14|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~28_combout\ = (\U14|counter\(14) & (\U14|Add0~27\ $ (GND))) # (!\U14|counter\(14) & (!\U14|Add0~27\ & VCC))
-- \U14|Add0~29\ = CARRY((\U14|counter\(14) & !\U14|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(14),
	datad => VCC,
	cin => \U14|Add0~27\,
	combout => \U14|Add0~28_combout\,
	cout => \U14|Add0~29\);

-- Location: LCCOMB_X21_Y7_N22
\U14|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~11_combout\ = (\U14|Add0~28_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~0_combout\,
	datac => \U14|Equal0~5_combout\,
	datad => \U14|Add0~28_combout\,
	combout => \U14|counter~11_combout\);

-- Location: FF_X21_Y7_N23
\U14|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~11_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(14));

-- Location: LCCOMB_X21_Y7_N10
\U14|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~30_combout\ = (\U14|counter\(15) & (!\U14|Add0~29\)) # (!\U14|counter\(15) & ((\U14|Add0~29\) # (GND)))
-- \U14|Add0~31\ = CARRY((!\U14|Add0~29\) # (!\U14|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(15),
	datad => VCC,
	cin => \U14|Add0~29\,
	combout => \U14|Add0~30_combout\,
	cout => \U14|Add0~31\);

-- Location: FF_X21_Y7_N11
\U14|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~30_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(15));

-- Location: LCCOMB_X21_Y7_N12
\U14|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~32_combout\ = (\U14|counter\(16) & (\U14|Add0~31\ $ (GND))) # (!\U14|counter\(16) & (!\U14|Add0~31\ & VCC))
-- \U14|Add0~33\ = CARRY((\U14|counter\(16) & !\U14|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(16),
	datad => VCC,
	cin => \U14|Add0~31\,
	combout => \U14|Add0~32_combout\,
	cout => \U14|Add0~33\);

-- Location: LCCOMB_X21_Y7_N28
\U14|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~0_combout\ = (\U14|Add0~32_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~0_combout\,
	datac => \U14|Equal0~5_combout\,
	datad => \U14|Add0~32_combout\,
	combout => \U14|counter~0_combout\);

-- Location: FF_X21_Y7_N29
\U14|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~0_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(16));

-- Location: LCCOMB_X21_Y7_N14
\U14|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~34_combout\ = (\U14|counter\(17) & (!\U14|Add0~33\)) # (!\U14|counter\(17) & ((\U14|Add0~33\) # (GND)))
-- \U14|Add0~35\ = CARRY((!\U14|Add0~33\) # (!\U14|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(17),
	datad => VCC,
	cin => \U14|Add0~33\,
	combout => \U14|Add0~34_combout\,
	cout => \U14|Add0~35\);

-- Location: LCCOMB_X21_Y7_N30
\U14|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~1_combout\ = (\U14|Add0~34_combout\ & ((!\U14|Equal0~0_combout\) # (!\U14|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~5_combout\,
	datac => \U14|Add0~34_combout\,
	datad => \U14|Equal0~0_combout\,
	combout => \U14|counter~1_combout\);

-- Location: FF_X21_Y7_N31
\U14|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~1_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(17));

-- Location: LCCOMB_X21_Y7_N16
\U14|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~36_combout\ = (\U14|counter\(18) & (\U14|Add0~35\ $ (GND))) # (!\U14|counter\(18) & (!\U14|Add0~35\ & VCC))
-- \U14|Add0~37\ = CARRY((\U14|counter\(18) & !\U14|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(18),
	datad => VCC,
	cin => \U14|Add0~35\,
	combout => \U14|Add0~36_combout\,
	cout => \U14|Add0~37\);

-- Location: LCCOMB_X21_Y7_N24
\U14|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~2_combout\ = (\U14|Add0~36_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~0_combout\,
	datac => \U14|Equal0~5_combout\,
	datad => \U14|Add0~36_combout\,
	combout => \U14|counter~2_combout\);

-- Location: FF_X21_Y7_N25
\U14|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~2_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(18));

-- Location: LCCOMB_X21_Y7_N18
\U14|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Add0~38_combout\ = \U14|counter\(19) $ (\U14|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(19),
	cin => \U14|Add0~37\,
	combout => \U14|Add0~38_combout\);

-- Location: LCCOMB_X21_Y7_N26
\U14|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~3_combout\ = (\U14|Add0~38_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Equal0~0_combout\,
	datac => \U14|Equal0~5_combout\,
	datad => \U14|Add0~38_combout\,
	combout => \U14|counter~3_combout\);

-- Location: FF_X21_Y7_N27
\U14|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~3_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(19));

-- Location: LCCOMB_X21_Y7_N20
\U14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Equal0~0_combout\ = (\U14|counter\(19) & (\U14|counter\(18) & (\U14|counter\(17) & \U14|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(19),
	datab => \U14|counter\(18),
	datac => \U14|counter\(17),
	datad => \U14|counter\(16),
	combout => \U14|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y8_N6
\U14|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter~10_combout\ = (\U14|Add0~0_combout\ & ((!\U14|Equal0~5_combout\) # (!\U14|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Add0~0_combout\,
	datac => \U14|Equal0~0_combout\,
	datad => \U14|Equal0~5_combout\,
	combout => \U14|counter~10_combout\);

-- Location: FF_X21_Y8_N7
\U14|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter~10_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(0));

-- Location: FF_X21_Y8_N15
\U14|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Add0~2_combout\,
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(1));

-- Location: LCCOMB_X21_Y10_N22
\U14|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Equal0~3_combout\ = (!\U14|counter\(1) & (!\U14|counter\(0) & (!\U14|counter\(11) & \U14|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(1),
	datab => \U14|counter\(0),
	datac => \U14|counter\(11),
	datad => \U14|counter\(2),
	combout => \U14|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y10_N18
\U14|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Equal0~1_combout\ = (!\U14|counter\(10) & (!\U14|counter\(9) & (\U14|counter\(8) & \U14|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(10),
	datab => \U14|counter\(9),
	datac => \U14|counter\(8),
	datad => \U14|counter\(7),
	combout => \U14|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y10_N14
\U14|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Equal0~4_combout\ = (!\U14|counter\(15) & (\U14|counter\(14) & (!\U14|counter\(12) & !\U14|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(15),
	datab => \U14|counter\(14),
	datac => \U14|counter\(12),
	datad => \U14|counter\(13),
	combout => \U14|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y10_N28
\U14|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Equal0~2_combout\ = (\U14|counter\(6) & (\U14|counter\(4) & (!\U14|counter\(5) & \U14|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(6),
	datab => \U14|counter\(4),
	datac => \U14|counter\(5),
	datad => \U14|counter\(3),
	combout => \U14|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y10_N8
\U14|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Equal0~5_combout\ = (\U14|Equal0~3_combout\ & (\U14|Equal0~1_combout\ & (\U14|Equal0~4_combout\ & \U14|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Equal0~3_combout\,
	datab => \U14|Equal0~1_combout\,
	datac => \U14|Equal0~4_combout\,
	datad => \U14|Equal0~2_combout\,
	combout => \U14|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y10_N2
\U14|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector24~0_combout\ = (\U14|current_state.t18~q\ & ((!\U14|Equal0~0_combout\) # (!\U14|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t18~q\,
	datab => \U14|Equal0~5_combout\,
	datac => \U14|Equal0~0_combout\,
	combout => \U14|Selector24~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\U14|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~12_combout\ = (\U6|Mux10~0_combout\) # ((!\U5|instruction\(15) & ((\U6|Mux7~0_combout\) # (\U6|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U6|Mux7~0_combout\,
	datac => \U6|Mux10~0_combout\,
	datad => \U6|Mux8~0_combout\,
	combout => \U14|process_0~12_combout\);

-- Location: LCCOMB_X22_Y11_N30
\U14|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~10_combout\ = (\U6|Mux0~5_combout\) # ((\U14|process_0~12_combout\) # ((!\U14|process_0~4_combout\) # (!\U14|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux0~5_combout\,
	datab => \U14|process_0~12_combout\,
	datac => \U14|process_0~7_combout\,
	datad => \U14|process_0~4_combout\,
	combout => \U14|process_0~10_combout\);

-- Location: LCCOMB_X21_Y9_N8
\U6|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux3~1_combout\ = (\U5|instruction\(12) & (\U5|instruction\(11) & (\U5|instruction\(15) & \U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(15),
	datad => \U6|Mux3~0_combout\,
	combout => \U6|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y10_N16
\U14|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector24~1_combout\ = (\U14|Selector24~0_combout\) # ((\U14|current_state.t10~q\ & (!\U14|process_0~10_combout\ & \U6|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t10~q\,
	datab => \U14|Selector24~0_combout\,
	datac => \U14|process_0~10_combout\,
	datad => \U6|Mux3~1_combout\,
	combout => \U14|Selector24~1_combout\);

-- Location: FF_X21_Y10_N17
\U14|next_state.t18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t18~q\);

-- Location: FF_X22_Y10_N11
\U14|current_state.t18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t18~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t18~q\);

-- Location: LCCOMB_X22_Y10_N4
\U14|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~6_combout\ = (\U14|current_state.t2~q\) # ((\U14|current_state.t1~q\) # ((\U14|current_state.t6~q\) # (\U14|current_state.t7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t2~q\,
	datab => \U14|current_state.t1~q\,
	datac => \U14|current_state.t6~q\,
	datad => \U14|current_state.t7~q\,
	combout => \U14|Selector1~6_combout\);

-- Location: LCCOMB_X22_Y10_N10
\U14|Selector1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~7_combout\ = (\U14|current_state.t15~q\) # ((\U14|current_state.t17~q\) # ((\U14|current_state.t18~q\) # (\U14|Selector1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t15~q\,
	datab => \U14|current_state.t17~q\,
	datac => \U14|current_state.t18~q\,
	datad => \U14|Selector1~6_combout\,
	combout => \U14|Selector1~7_combout\);

-- Location: LCCOMB_X23_Y10_N12
\U14|Selector1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~8_combout\ = (\U14|current_state.t16~q\) # ((\U14|current_state.t14~q\) # ((\U14|Selector1~7_combout\) # (!\U14|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t16~q\,
	datab => \U14|current_state.t14~q\,
	datac => \U14|Selector5~0_combout\,
	datad => \U14|Selector1~7_combout\,
	combout => \U14|Selector1~8_combout\);

-- Location: LCCOMB_X23_Y10_N26
\U14|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~6_combout\ = (\U6|Mux10~0_combout\ & \U5|instruction\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Mux10~0_combout\,
	datad => \U5|instruction\(10),
	combout => \U14|process_0~6_combout\);

-- Location: LCCOMB_X23_Y10_N2
\U14|Selector1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~9_combout\ = (\U14|Selector1~8_combout\) # ((\U14|Selector1~5_combout\) # ((\U14|current_state.t10~q\ & \U14|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector1~8_combout\,
	datab => \U14|current_state.t10~q\,
	datac => \U14|process_0~6_combout\,
	datad => \U14|Selector1~5_combout\,
	combout => \U14|Selector1~9_combout\);

-- Location: LCCOMB_X23_Y10_N14
\U14|Selector1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~10_combout\ = (\U14|nextn_latch~q\ & (((\U14|Selector1~4_combout\) # (\U14|Selector1~9_combout\)))) # (!\U14|nextn_latch~q\ & (\U14|Selector1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector1~5_combout\,
	datab => \U14|Selector1~4_combout\,
	datac => \U14|nextn_latch~q\,
	datad => \U14|Selector1~9_combout\,
	combout => \U14|Selector1~10_combout\);

-- Location: LCCOMB_X23_Y10_N4
\U14|Selector1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~11_combout\ = (\U14|Selector1~10_combout\) # ((\U14|Selector1~2_combout\) # ((\U14|Selector1~3_combout\ & \U14|nextn_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector1~3_combout\,
	datab => \U14|nextn_latch~q\,
	datac => \U14|Selector1~10_combout\,
	datad => \U14|Selector1~2_combout\,
	combout => \U14|Selector1~11_combout\);

-- Location: FF_X23_Y10_N17
\U14|nextn_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|Selector1~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|nextn_latch~q\);

-- Location: LCCOMB_X25_Y10_N4
\U7|addr_latch[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[0]~8_combout\ = \U7|addr_latch\(0) $ (VCC)
-- \U7|addr_latch[0]~9\ = CARRY(\U7|addr_latch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U7|addr_latch\(0),
	datad => VCC,
	combout => \U7|addr_latch[0]~8_combout\,
	cout => \U7|addr_latch[0]~9\);

-- Location: LCCOMB_X25_Y11_N18
\U5|instruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[0]~feeder_combout\ = \data_out[0]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[0]~21_combout\,
	combout => \U5|instruction[0]~feeder_combout\);

-- Location: FF_X25_Y11_N19
\U5|instruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[0]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(0));

-- Location: LCCOMB_X22_Y10_N18
\U14|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector0~0_combout\ = ((!\U14|current_state.t3~q\ & \U14|rstpc_latch~q\)) # (!\U14|current_state.t_rst_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t_rst_1~q\,
	datab => \U14|current_state.t3~q\,
	datad => \U14|rstpc_latch~q\,
	combout => \U14|Selector0~0_combout\);

-- Location: FF_X24_Y10_N17
\U14|rstpc_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|rstpc_latch~q\);

-- Location: LCCOMB_X23_Y10_N30
\U14|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~4_combout\ = (\U14|Selector1~4_combout\) # ((\U14|current_state.t10~q\ & ((!\U14|nextn_latch~0_combout\))) # (!\U14|current_state.t10~q\ & (\U14|Selector17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector17~4_combout\,
	datab => \U14|current_state.t10~q\,
	datac => \U14|nextn_latch~0_combout\,
	datad => \U14|Selector1~4_combout\,
	combout => \U14|Selector2~4_combout\);

-- Location: LCCOMB_X23_Y10_N28
\U14|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~6_combout\ = (!\U14|process_0~8_combout\ & ((\U14|process_0~3_combout\) # ((\U6|Mux9~0_combout\ & \U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux9~0_combout\,
	datab => \U5|instruction\(12),
	datac => \U14|process_0~3_combout\,
	datad => \U14|process_0~8_combout\,
	combout => \U14|Selector2~6_combout\);

-- Location: LCCOMB_X23_Y10_N20
\U14|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~5_combout\ = (\U14|ldpc_latch~q\ & ((\U14|Selector2~4_combout\) # ((\U14|current_state.t10~q\ & \U14|Selector2~6_combout\)))) # (!\U14|ldpc_latch~q\ & (\U14|current_state.t10~q\ & ((\U14|Selector2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ldpc_latch~q\,
	datab => \U14|current_state.t10~q\,
	datac => \U14|Selector2~4_combout\,
	datad => \U14|Selector2~6_combout\,
	combout => \U14|Selector2~5_combout\);

-- Location: LCCOMB_X23_Y10_N6
\U14|ldpc_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|ldpc_latch~feeder_combout\ = \U14|Selector2~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|Selector2~5_combout\,
	combout => \U14|ldpc_latch~feeder_combout\);

-- Location: FF_X23_Y10_N7
\U14|ldpc_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|ldpc_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ldpc_latch~q\);

-- Location: FF_X25_Y10_N5
\U7|addr_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[0]~8_combout\,
	asdata => \U5|instruction\(0),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(0));

-- Location: LCCOMB_X25_Y10_N6
\U7|addr_latch[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[1]~10_combout\ = (\U7|addr_latch\(1) & (!\U7|addr_latch[0]~9\)) # (!\U7|addr_latch\(1) & ((\U7|addr_latch[0]~9\) # (GND)))
-- \U7|addr_latch[1]~11\ = CARRY((!\U7|addr_latch[0]~9\) # (!\U7|addr_latch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(1),
	datad => VCC,
	cin => \U7|addr_latch[0]~9\,
	combout => \U7|addr_latch[1]~10_combout\,
	cout => \U7|addr_latch[1]~11\);

-- Location: LCCOMB_X25_Y11_N20
\U5|instruction[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[1]~feeder_combout\ = \data_out[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[1]~28_combout\,
	combout => \U5|instruction[1]~feeder_combout\);

-- Location: FF_X25_Y11_N21
\U5|instruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[1]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(1));

-- Location: FF_X25_Y10_N7
\U7|addr_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[1]~10_combout\,
	asdata => \U5|instruction\(1),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(1));

-- Location: LCCOMB_X25_Y10_N8
\U7|addr_latch[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[2]~12_combout\ = (\U7|addr_latch\(2) & (\U7|addr_latch[1]~11\ $ (GND))) # (!\U7|addr_latch\(2) & (!\U7|addr_latch[1]~11\ & VCC))
-- \U7|addr_latch[2]~13\ = CARRY((\U7|addr_latch\(2) & !\U7|addr_latch[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|addr_latch\(2),
	datad => VCC,
	cin => \U7|addr_latch[1]~11\,
	combout => \U7|addr_latch[2]~12_combout\,
	cout => \U7|addr_latch[2]~13\);

-- Location: LCCOMB_X25_Y11_N8
\U5|instruction[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[2]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~35_combout\,
	combout => \U5|instruction[2]~feeder_combout\);

-- Location: FF_X25_Y11_N9
\U5|instruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[2]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(2));

-- Location: FF_X25_Y10_N9
\U7|addr_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[2]~12_combout\,
	asdata => \U5|instruction\(2),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(2));

-- Location: LCCOMB_X25_Y10_N10
\U7|addr_latch[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[3]~14_combout\ = (\U7|addr_latch\(3) & (!\U7|addr_latch[2]~13\)) # (!\U7|addr_latch\(3) & ((\U7|addr_latch[2]~13\) # (GND)))
-- \U7|addr_latch[3]~15\ = CARRY((!\U7|addr_latch[2]~13\) # (!\U7|addr_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(3),
	datad => VCC,
	cin => \U7|addr_latch[2]~13\,
	combout => \U7|addr_latch[3]~14_combout\,
	cout => \U7|addr_latch[3]~15\);

-- Location: LCCOMB_X25_Y11_N30
\U5|instruction[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[3]~feeder_combout\ = \data_out[3]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[3]~42_combout\,
	combout => \U5|instruction[3]~feeder_combout\);

-- Location: FF_X25_Y11_N31
\U5|instruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[3]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(3));

-- Location: FF_X25_Y10_N11
\U7|addr_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[3]~14_combout\,
	asdata => \U5|instruction\(3),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(3));

-- Location: LCCOMB_X25_Y10_N12
\U7|addr_latch[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[4]~16_combout\ = (\U7|addr_latch\(4) & (\U7|addr_latch[3]~15\ $ (GND))) # (!\U7|addr_latch\(4) & (!\U7|addr_latch[3]~15\ & VCC))
-- \U7|addr_latch[4]~17\ = CARRY((\U7|addr_latch\(4) & !\U7|addr_latch[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(4),
	datad => VCC,
	cin => \U7|addr_latch[3]~15\,
	combout => \U7|addr_latch[4]~16_combout\,
	cout => \U7|addr_latch[4]~17\);

-- Location: FF_X24_Y10_N7
\U5|instruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[4]~49_combout\,
	sload => VCC,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(4));

-- Location: FF_X25_Y10_N13
\U7|addr_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[4]~16_combout\,
	asdata => \U5|instruction\(4),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(4));

-- Location: LCCOMB_X25_Y10_N14
\U7|addr_latch[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[5]~18_combout\ = (\U7|addr_latch\(5) & (!\U7|addr_latch[4]~17\)) # (!\U7|addr_latch\(5) & ((\U7|addr_latch[4]~17\) # (GND)))
-- \U7|addr_latch[5]~19\ = CARRY((!\U7|addr_latch[4]~17\) # (!\U7|addr_latch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|addr_latch\(5),
	datad => VCC,
	cin => \U7|addr_latch[4]~17\,
	combout => \U7|addr_latch[5]~18_combout\,
	cout => \U7|addr_latch[5]~19\);

-- Location: LCCOMB_X25_Y11_N26
\U5|instruction[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[5]~feeder_combout\ = \data_out[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[5]~56_combout\,
	combout => \U5|instruction[5]~feeder_combout\);

-- Location: FF_X25_Y11_N27
\U5|instruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[5]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(5));

-- Location: FF_X25_Y10_N15
\U7|addr_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[5]~18_combout\,
	asdata => \U5|instruction\(5),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(5));

-- Location: LCCOMB_X25_Y10_N16
\U7|addr_latch[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[6]~20_combout\ = (\U7|addr_latch\(6) & (\U7|addr_latch[5]~19\ $ (GND))) # (!\U7|addr_latch\(6) & (!\U7|addr_latch[5]~19\ & VCC))
-- \U7|addr_latch[6]~21\ = CARRY((\U7|addr_latch\(6) & !\U7|addr_latch[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|addr_latch\(6),
	datad => VCC,
	cin => \U7|addr_latch[5]~19\,
	combout => \U7|addr_latch[6]~20_combout\,
	cout => \U7|addr_latch[6]~21\);

-- Location: LCCOMB_X25_Y11_N0
\U5|instruction[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[6]~feeder_combout\ = \data_out[6]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[6]~63_combout\,
	combout => \U5|instruction[6]~feeder_combout\);

-- Location: FF_X25_Y11_N1
\U5|instruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[6]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(6));

-- Location: FF_X25_Y10_N17
\U7|addr_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[6]~20_combout\,
	asdata => \U5|instruction\(6),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(6));

-- Location: LCCOMB_X25_Y10_N18
\U7|addr_latch[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[7]~22_combout\ = \U7|addr_latch[6]~21\ $ (\U7|addr_latch\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U7|addr_latch\(7),
	cin => \U7|addr_latch[6]~21\,
	combout => \U7|addr_latch[7]~22_combout\);

-- Location: FF_X25_Y10_N19
\U7|addr_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|nextn_latch~q\,
	d => \U7|addr_latch[7]~22_combout\,
	asdata => \U5|instruction\(7),
	sclr => \U14|rstpc_latch~q\,
	sload => \U14|ldpc_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|addr_latch\(7));

-- Location: LCCOMB_X25_Y10_N30
\data_out[7]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~65_combout\ = (\U5|instruction\(7) & ((\U14|dbfaout_latch~q\) # ((\U14|enpcout_latch~q\ & \U7|addr_latch\(7))))) # (!\U5|instruction\(7) & (\U14|enpcout_latch~q\ & ((\U7|addr_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(7),
	datab => \U14|enpcout_latch~q\,
	datac => \U14|dbfaout_latch~q\,
	datad => \U7|addr_latch\(7),
	combout => \data_out[7]~65_combout\);

-- Location: LCCOMB_X24_Y9_N28
\data_out[7]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~66_combout\ = (\data_out[7]~64_combout\) # (\data_out[7]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[7]~64_combout\,
	datac => \data_out[7]~65_combout\,
	combout => \data_out[7]~66_combout\);

-- Location: LCCOMB_X24_Y11_N22
\U5|instruction[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[8]~feeder_combout\ = \data_out[0]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[0]~21_combout\,
	combout => \U5|instruction[8]~feeder_combout\);

-- Location: FF_X24_Y11_N23
\U5|instruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[8]~feeder_combout\,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(8));

-- Location: LCCOMB_X25_Y11_N10
\U5|ir_grcode[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode\(2) = (\U5|instruction\(10) & (\U5|instruction\(2))) # (!\U5|instruction\(10) & ((\U5|instruction\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(2),
	datab => \U5|instruction\(8),
	datad => \U5|instruction\(10),
	combout => \U5|ir_grcode\(2));

-- Location: FF_X25_Y11_N11
\U5|instruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[1]~28_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(9));

-- Location: LCCOMB_X25_Y11_N14
\U5|ir_grcode[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode\(3) = (\U5|instruction\(10) & ((\U5|instruction\(3)))) # (!\U5|instruction\(10) & (\U5|instruction\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(9),
	datac => \U5|instruction\(3),
	datad => \U5|instruction\(10),
	combout => \U5|ir_grcode\(3));

-- Location: LCCOMB_X23_Y12_N30
\U6|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux10~1_combout\ = (\U6|Mux10~0_combout\ & !\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Mux10~0_combout\,
	datad => \U5|instruction\(11),
	combout => \U6|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y12_N20
\U14|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~4_combout\ = (\U14|current_state.t15~q\) # ((\U14|current_state.t13~q\ & ((\U6|Mux10~1_combout\) # (\U6|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux10~1_combout\,
	datab => \U14|current_state.t13~q\,
	datac => \U14|current_state.t15~q\,
	datad => \U6|Mux7~1_combout\,
	combout => \U14|Selector11~4_combout\);

-- Location: LCCOMB_X23_Y12_N6
\U14|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~1_combout\ = (!\U14|current_state.t12~q\ & (\U14|current_state.t_rst_1~q\ & (!\U14|current_state.t16~q\ & !\U14|current_state.t14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U14|current_state.t16~q\,
	datad => \U14|current_state.t14~q\,
	combout => \U14|Selector11~1_combout\);

-- Location: LCCOMB_X23_Y9_N24
\U14|regwt_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|regwt_latch~0_combout\ = (\U5|instruction\(14)) # ((\U5|instruction\(12) & ((!\U5|instruction\(13)) # (!\U5|instruction\(15)))) # (!\U5|instruction\(12) & ((\U5|instruction\(15)) # (\U5|instruction\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(15),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(13),
	combout => \U14|regwt_latch~0_combout\);

-- Location: LCCOMB_X23_Y12_N4
\U14|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~2_combout\ = ((\U14|current_state.t12~q\ & ((\U14|regwt_latch~0_combout\) # (!\U5|instruction\(11))))) # (!\U14|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U14|regwt_latch~0_combout\,
	datac => \U14|Selector5~0_combout\,
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector11~2_combout\);

-- Location: LCCOMB_X23_Y12_N0
\U14|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~0_combout\ = (\U14|current_state.t14~q\ & ((\U6|Mux8~1_combout\) # ((!\U6|Mux10~1_combout\ & !\U6|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux10~1_combout\,
	datab => \U6|Mux7~1_combout\,
	datac => \U6|Mux8~1_combout\,
	datad => \U14|current_state.t14~q\,
	combout => \U14|Selector11~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\U14|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~3_combout\ = (\U14|regwt_latch~q\ & ((\U14|Selector11~1_combout\) # ((\U14|Selector11~2_combout\) # (\U14|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector11~1_combout\,
	datab => \U14|regwt_latch~q\,
	datac => \U14|Selector11~2_combout\,
	datad => \U14|Selector11~0_combout\,
	combout => \U14|Selector11~3_combout\);

-- Location: LCCOMB_X23_Y12_N22
\U14|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~5_combout\ = (\U14|Selector11~4_combout\) # ((\U14|Selector11~3_combout\) # ((\U14|current_state.t11~q\ & !\U14|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|Selector11~4_combout\,
	datac => \U14|Selector1~1_combout\,
	datad => \U14|Selector11~3_combout\,
	combout => \U14|Selector11~5_combout\);

-- Location: FF_X23_Y12_N23
\U14|regwt_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~q\,
	d => \U14|Selector11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|regwt_latch~q\);

-- Location: LCCOMB_X25_Y11_N28
\U11|grc_grwt[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(0) = LCELL((!\U5|ir_grcode\(2) & (!\U5|ir_grcode\(3) & \U14|regwt_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|ir_grcode\(2),
	datac => \U5|ir_grcode\(3),
	datad => \U14|regwt_latch~q\,
	combout => \U11|grc_grwt\(0));

-- Location: CLKCTRL_G9
\U11|grc_grwt[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U11|grc_grwt[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U11|grc_grwt[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N26
\U12|gra_latch[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[7]~feeder_combout\ = \data_out[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~70_combout\,
	combout => \U12|gra_latch[7]~feeder_combout\);

-- Location: FF_X24_Y9_N27
\U12|gra_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(7));

-- Location: LCCOMB_X25_Y11_N6
\U5|ir_grcode[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode[5]~1_combout\ = (\U5|instruction\(10) & (\U5|instruction\(3))) # (!\U5|instruction\(10) & ((\U5|instruction\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(3),
	datad => \U5|instruction\(9),
	combout => \U5|ir_grcode[5]~1_combout\);

-- Location: LCCOMB_X25_Y11_N16
\U5|ir_grcode[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode[1]~0_combout\ = (\U5|instruction\(10) & (\U5|instruction\(1))) # (!\U5|instruction\(10) & ((\U5|instruction\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(1),
	datac => \U5|instruction\(10),
	datad => \U5|instruction\(9),
	combout => \U5|ir_grcode[1]~0_combout\);

-- Location: LCCOMB_X26_Y11_N0
\data_out[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~18_combout\ = (\U14|regrd1_latch~q\ & (((!\U5|ir_grcode[1]~0_combout\)))) # (!\U14|regrd1_latch~q\ & (!\U5|ir_grcode[5]~1_combout\ & ((\U14|regrd2_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datab => \U5|ir_grcode[5]~1_combout\,
	datac => \U5|ir_grcode[1]~0_combout\,
	datad => \U14|regrd2_latch~q\,
	combout => \data_out[4]~18_combout\);

-- Location: LCCOMB_X25_Y11_N4
\U11|grc_grwt[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(1) = LCELL((\U5|ir_grcode\(2) & (!\U5|ir_grcode\(3) & \U14|regwt_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|ir_grcode\(2),
	datac => \U5|ir_grcode\(3),
	datad => \U14|regwt_latch~q\,
	combout => \U11|grc_grwt\(1));

-- Location: CLKCTRL_G6
\U11|grc_grwt[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U11|grc_grwt[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U11|grc_grwt[1]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N4
\U12|grb_latch[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grb_latch[7]~feeder_combout\ = \data_out[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~70_combout\,
	combout => \U12|grb_latch[7]~feeder_combout\);

-- Location: FF_X24_Y9_N5
\U12|grb_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	d => \U12|grb_latch[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(7));

-- Location: LCCOMB_X25_Y9_N20
\U11|grc_grwt[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(3) = LCELL((\U14|regwt_latch~q\ & (\U5|ir_grcode\(3) & \U5|ir_grcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regwt_latch~q\,
	datac => \U5|ir_grcode\(3),
	datad => \U5|ir_grcode\(2),
	combout => \U11|grc_grwt\(3));

-- Location: LCCOMB_X25_Y9_N8
\U12|grd_latch[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[7]~feeder_combout\ = \data_out[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~70_combout\,
	combout => \U12|grd_latch[7]~feeder_combout\);

-- Location: FF_X25_Y9_N9
\U12|grd_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(7));

-- Location: LCCOMB_X25_Y11_N22
\U11|grc_grwt[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(2) = LCELL((!\U5|ir_grcode\(2) & (\U5|ir_grcode\(3) & \U14|regwt_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|ir_grcode\(2),
	datac => \U5|ir_grcode\(3),
	datad => \U14|regwt_latch~q\,
	combout => \U11|grc_grwt\(2));

-- Location: CLKCTRL_G5
\U11|grc_grwt[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U11|grc_grwt[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U11|grc_grwt[2]~clkctrl_outclk\);

-- Location: FF_X25_Y9_N3
\U12|grc_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[7]~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(7));

-- Location: LCCOMB_X25_Y9_N2
\data_out[7]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~68_combout\ = (\data_out[4]~18_combout\ & (((\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & ((\data_out[4]~75_combout\ & ((\U12|grc_latch\(7)))) # (!\data_out[4]~75_combout\ & (\U12|grd_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \U12|grd_latch\(7),
	datac => \U12|grc_latch\(7),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[7]~68_combout\);

-- Location: LCCOMB_X24_Y9_N20
\data_out[7]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~69_combout\ = (\data_out[4]~18_combout\ & ((\data_out[7]~68_combout\ & (\U12|gra_latch\(7))) # (!\data_out[7]~68_combout\ & ((\U12|grb_latch\(7)))))) # (!\data_out[4]~18_combout\ & (((\data_out[7]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gra_latch\(7),
	datab => \data_out[4]~18_combout\,
	datac => \U12|grb_latch\(7),
	datad => \data_out[7]~68_combout\,
	combout => \data_out[7]~69_combout\);

-- Location: LCCOMB_X24_Y9_N18
\data_out[7]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~74_combout\ = (\data_out[7]~67_combout\) # ((\data_out[7]~69_combout\ & ((\U14|regrd2_latch~q\) # (\U14|regrd1_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd2_latch~q\,
	datab => \data_out[7]~69_combout\,
	datac => \U14|regrd1_latch~q\,
	datad => \data_out[7]~67_combout\,
	combout => \data_out[7]~74_combout\);

-- Location: LCCOMB_X24_Y9_N16
\U10|data_latch[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[7]~8_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[7]~66_combout\) # ((\data_out[7]~74_combout\)))) # (!\U14|dbfbin_latch~q\ & (((\U8|alu_result_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbin_latch~q\,
	datab => \data_out[7]~66_combout\,
	datac => \U8|alu_result_latch\(7),
	datad => \data_out[7]~74_combout\,
	combout => \U10|data_latch[7]~8_combout\);

-- Location: LCCOMB_X22_Y11_N2
\U10|data_latch[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[7]~1_combout\ = (\U14|dbfbin_latch~q\) # (\U14|enalu_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|dbfbin_latch~q\,
	datad => \U14|enalu_latch~q\,
	combout => \U10|data_latch[7]~1_combout\);

-- Location: CLKCTRL_G0
\U10|data_latch[7]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U10|data_latch[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U10|data_latch[7]~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N8
\U10|data_latch[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(7) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[7]~8_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(7),
	datac => \U10|data_latch[7]~8_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(7));

-- Location: LCCOMB_X22_Y13_N20
\U8|Add2|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~7_combout\ = \U5|instruction\(11) $ (\U10|data_latch\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|instruction\(11),
	datad => \U10|data_latch\(7),
	combout => \U8|Add2|auto_generated|_~7_combout\);

-- Location: LCCOMB_X23_Y13_N26
\U8|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~6_combout\ = (!\U5|instruction\(11) & (!\U5|instruction\(13) & (!\U5|instruction\(12) & \U10|data_latch\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U10|data_latch\(6),
	combout => \U8|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y13_N12
\U8|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~2_combout\ = (\U10|data_latch\(6) & ((\U5|instruction\(12) $ (!\U5|instruction\(11))) # (!\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(13),
	datad => \U10|data_latch\(6),
	combout => \U8|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y15_N12
\U8|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~0_combout\ = \data_out[0]~21_combout\ $ (VCC)
-- \U8|Add1~1\ = CARRY(\data_out[0]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~21_combout\,
	datad => VCC,
	combout => \U8|Add1~0_combout\,
	cout => \U8|Add1~1\);

-- Location: LCCOMB_X22_Y15_N14
\U8|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~2_combout\ = (\U5|instruction\(11) & ((\data_out[1]~28_combout\ & (\U8|Add1~1\ & VCC)) # (!\data_out[1]~28_combout\ & (!\U8|Add1~1\)))) # (!\U5|instruction\(11) & ((\data_out[1]~28_combout\ & (!\U8|Add1~1\)) # (!\data_out[1]~28_combout\ & 
-- ((\U8|Add1~1\) # (GND)))))
-- \U8|Add1~3\ = CARRY((\U5|instruction\(11) & (!\data_out[1]~28_combout\ & !\U8|Add1~1\)) # (!\U5|instruction\(11) & ((!\U8|Add1~1\) # (!\data_out[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[1]~28_combout\,
	datad => VCC,
	cin => \U8|Add1~1\,
	combout => \U8|Add1~2_combout\,
	cout => \U8|Add1~3\);

-- Location: LCCOMB_X22_Y15_N16
\U8|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~4_combout\ = ((\U5|instruction\(11) $ (\data_out[2]~35_combout\ $ (!\U8|Add1~3\)))) # (GND)
-- \U8|Add1~5\ = CARRY((\U5|instruction\(11) & ((\data_out[2]~35_combout\) # (!\U8|Add1~3\))) # (!\U5|instruction\(11) & (\data_out[2]~35_combout\ & !\U8|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[2]~35_combout\,
	datad => VCC,
	cin => \U8|Add1~3\,
	combout => \U8|Add1~4_combout\,
	cout => \U8|Add1~5\);

-- Location: LCCOMB_X22_Y15_N18
\U8|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~6_combout\ = (\U5|instruction\(11) & ((\data_out[3]~42_combout\ & (\U8|Add1~5\ & VCC)) # (!\data_out[3]~42_combout\ & (!\U8|Add1~5\)))) # (!\U5|instruction\(11) & ((\data_out[3]~42_combout\ & (!\U8|Add1~5\)) # (!\data_out[3]~42_combout\ & 
-- ((\U8|Add1~5\) # (GND)))))
-- \U8|Add1~7\ = CARRY((\U5|instruction\(11) & (!\data_out[3]~42_combout\ & !\U8|Add1~5\)) # (!\U5|instruction\(11) & ((!\U8|Add1~5\) # (!\data_out[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[3]~42_combout\,
	datad => VCC,
	cin => \U8|Add1~5\,
	combout => \U8|Add1~6_combout\,
	cout => \U8|Add1~7\);

-- Location: LCCOMB_X22_Y15_N20
\U8|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~8_combout\ = ((\data_out[4]~49_combout\ $ (\U5|instruction\(11) $ (!\U8|Add1~7\)))) # (GND)
-- \U8|Add1~9\ = CARRY((\data_out[4]~49_combout\ & ((\U5|instruction\(11)) # (!\U8|Add1~7\))) # (!\data_out[4]~49_combout\ & (\U5|instruction\(11) & !\U8|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~49_combout\,
	datab => \U5|instruction\(11),
	datad => VCC,
	cin => \U8|Add1~7\,
	combout => \U8|Add1~8_combout\,
	cout => \U8|Add1~9\);

-- Location: LCCOMB_X22_Y15_N22
\U8|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~10_combout\ = (\U5|instruction\(11) & ((\data_out[5]~56_combout\ & (\U8|Add1~9\ & VCC)) # (!\data_out[5]~56_combout\ & (!\U8|Add1~9\)))) # (!\U5|instruction\(11) & ((\data_out[5]~56_combout\ & (!\U8|Add1~9\)) # (!\data_out[5]~56_combout\ & 
-- ((\U8|Add1~9\) # (GND)))))
-- \U8|Add1~11\ = CARRY((\U5|instruction\(11) & (!\data_out[5]~56_combout\ & !\U8|Add1~9\)) # (!\U5|instruction\(11) & ((!\U8|Add1~9\) # (!\data_out[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[5]~56_combout\,
	datad => VCC,
	cin => \U8|Add1~9\,
	combout => \U8|Add1~10_combout\,
	cout => \U8|Add1~11\);

-- Location: LCCOMB_X22_Y15_N24
\U8|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~12_combout\ = ((\U5|instruction\(11) $ (\data_out[6]~63_combout\ $ (!\U8|Add1~11\)))) # (GND)
-- \U8|Add1~13\ = CARRY((\U5|instruction\(11) & ((\data_out[6]~63_combout\) # (!\U8|Add1~11\))) # (!\U5|instruction\(11) & (\data_out[6]~63_combout\ & !\U8|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[6]~63_combout\,
	datad => VCC,
	cin => \U8|Add1~11\,
	combout => \U8|Add1~12_combout\,
	cout => \U8|Add1~13\);

-- Location: LCCOMB_X23_Y13_N30
\U8|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~3_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & ((\U8|Add1~12_combout\))) # (!\U5|instruction\(12) & (\U10|data_latch\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U10|data_latch\(6),
	datac => \U8|Add1~12_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux1~3_combout\);

-- Location: LCCOMB_X26_Y11_N22
\data_out[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~50_combout\ = (\U14|ramrd_latch~q\ & ((\U3|inst|altsyncram_component|auto_generated|q_a\(5)) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(5))))) # (!\U14|ramrd_latch~q\ & (\U14|enrom_latch~q\ & 
-- ((\U4|inst|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \U14|enrom_latch~q\,
	datac => \U3|inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \data_out[5]~50_combout\);

-- Location: LCCOMB_X25_Y10_N2
\data_out[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~51_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(5)) # ((\U7|addr_latch\(5) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (((\U7|addr_latch\(5) & \U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U5|instruction\(5),
	datac => \U7|addr_latch\(5),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[5]~51_combout\);

-- Location: LCCOMB_X26_Y11_N16
\data_out[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~52_combout\ = (\data_out[5]~50_combout\) # (\data_out[5]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[5]~50_combout\,
	datad => \data_out[5]~51_combout\,
	combout => \data_out[5]~52_combout\);

-- Location: LCCOMB_X25_Y9_N24
\U12|grd_latch[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[5]~feeder_combout\ = \data_out[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[5]~56_combout\,
	combout => \U12|grd_latch[5]~feeder_combout\);

-- Location: FF_X25_Y9_N25
\U12|grd_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(5));

-- Location: FF_X26_Y11_N29
\U12|grc_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[5]~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(5));

-- Location: LCCOMB_X26_Y11_N28
\data_out[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~54_combout\ = (\data_out[4]~18_combout\ & (((\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & ((\data_out[4]~75_combout\ & ((\U12|grc_latch\(5)))) # (!\data_out[4]~75_combout\ & (\U12|grd_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \U12|grd_latch\(5),
	datac => \U12|grc_latch\(5),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[5]~54_combout\);

-- Location: LCCOMB_X28_Y11_N2
\U12|gra_latch[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[5]~feeder_combout\ = \data_out[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[5]~56_combout\,
	combout => \U12|gra_latch[5]~feeder_combout\);

-- Location: FF_X28_Y11_N3
\U12|gra_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(5));

-- Location: LCCOMB_X28_Y11_N16
\U12|grb_latch[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grb_latch[5]~feeder_combout\ = \data_out[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[5]~56_combout\,
	combout => \U12|grb_latch[5]~feeder_combout\);

-- Location: FF_X28_Y11_N17
\U12|grb_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	d => \U12|grb_latch[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(5));

-- Location: LCCOMB_X26_Y11_N18
\data_out[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~55_combout\ = (\data_out[4]~18_combout\ & ((\data_out[5]~54_combout\ & (\U12|gra_latch\(5))) # (!\data_out[5]~54_combout\ & ((\U12|grb_latch\(5)))))) # (!\data_out[4]~18_combout\ & (\data_out[5]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \data_out[5]~54_combout\,
	datac => \U12|gra_latch\(5),
	datad => \U12|grb_latch\(5),
	combout => \data_out[5]~55_combout\);

-- Location: LCCOMB_X24_Y10_N18
\U14|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector17~5_combout\ = (\U14|current_state.t17~q\) # ((\U14|current_state.t12~q\ & ((!\U6|Mux1~6_combout\))) # (!\U14|current_state.t12~q\ & (\U14|current_state.t_rst_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t17~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U6|Mux1~6_combout\,
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector17~5_combout\);

-- Location: LCCOMB_X24_Y10_N20
\U14|Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector17~6_combout\ = (\U14|current_state.t17~q\ & ((\U14|process_0~2_combout\) # ((\U14|enuart_latch~q\ & \U14|Selector17~5_combout\)))) # (!\U14|current_state.t17~q\ & (((\U14|enuart_latch~q\ & \U14|Selector17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t17~q\,
	datab => \U14|process_0~2_combout\,
	datac => \U14|enuart_latch~q\,
	datad => \U14|Selector17~5_combout\,
	combout => \U14|Selector17~6_combout\);

-- Location: FF_X24_Y10_N21
\U14|enuart_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector17~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enuart_latch~q\);

-- Location: LCCOMB_X19_Y10_N14
\uart_inst|inst1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~0_combout\ = (\U14|uart_reset_latch~q\ & \uart_inst|inst1|state.r_sample~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|uart_reset_latch~q\,
	datad => \uart_inst|inst1|state.r_sample~q\,
	combout => \uart_inst|inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X12_Y10_N10
\uart_inst|inst1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~6_combout\ = (!\uart_inst|inst1|pro2:rcnt[1]~q\ & (\uart_inst|inst1|pro2:rcnt[2]~q\ & (\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~6_combout\);

-- Location: LCCOMB_X12_Y10_N30
\uart_inst|inst1|pro2:rbufs[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[5]~0_combout\ = (\uart_inst|inst1|Decoder0~6_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~6_combout\ & ((\uart_inst|inst1|pro2:rbufs[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[5]~q\,
	datad => \uart_inst|inst1|Decoder0~6_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[5]~0_combout\);

-- Location: FF_X12_Y10_N31
\uart_inst|inst1|pro2:rbufs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[5]~q\);

-- Location: LCCOMB_X25_Y12_N26
\uart_inst|inst1|rbuf[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[5]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst1|pro2:rbufs[5]~q\,
	combout => \uart_inst|inst1|rbuf[5]~feeder_combout\);

-- Location: LCCOMB_X25_Y12_N4
\uart_inst|inst1|rbuf[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[0]~0_combout\ = (\U14|uart_reset_latch~q\ & \uart_inst|inst1|state.r_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|uart_reset_latch~q\,
	datab => \uart_inst|inst1|state.r_stop~q\,
	combout => \uart_inst|inst1|rbuf[0]~0_combout\);

-- Location: FF_X25_Y12_N27
\uart_inst|inst1|rbuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[5]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(5));

-- Location: LCCOMB_X25_Y12_N10
\uart_inst|inst3|data_latch[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[5]~feeder_combout\ = \uart_inst|inst1|rbuf\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst1|rbuf\(5),
	combout => \uart_inst|inst3|data_latch[5]~feeder_combout\);

-- Location: FF_X25_Y12_N11
\uart_inst|inst3|data_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(5));

-- Location: LCCOMB_X26_Y11_N6
\data_out[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~53_combout\ = (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(5)) # ((\U14|dbfbout_latch~q\ & \U10|data_latch\(5))))) # (!\U14|enuart_latch~q\ & (\U14|dbfbout_latch~q\ & ((\U10|data_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enuart_latch~q\,
	datab => \U14|dbfbout_latch~q\,
	datac => \uart_inst|inst3|data_latch\(5),
	datad => \U10|data_latch\(5),
	combout => \data_out[5]~53_combout\);

-- Location: LCCOMB_X26_Y11_N30
\data_out[5]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~72_combout\ = (\data_out[5]~53_combout\) # ((\data_out[5]~55_combout\ & ((\U14|regrd1_latch~q\) # (\U14|regrd2_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datab => \U14|regrd2_latch~q\,
	datac => \data_out[5]~55_combout\,
	datad => \data_out[5]~53_combout\,
	combout => \data_out[5]~72_combout\);

-- Location: LCCOMB_X24_Y12_N30
\U8|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~10_combout\ = (\U5|instruction\(11) & ((\data_out[4]~49_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(5),
	datab => \U5|instruction\(11),
	datad => \data_out[4]~49_combout\,
	combout => \U8|Mux0~10_combout\);

-- Location: LCCOMB_X24_Y12_N0
\U8|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~2_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & (\U8|Add1~10_combout\)) # (!\U5|instruction\(12) & ((\U10|data_latch\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add1~10_combout\,
	datab => \U10|data_latch\(5),
	datac => \U5|instruction\(13),
	datad => \U5|instruction\(12),
	combout => \U8|Mux2~2_combout\);

-- Location: LCCOMB_X26_Y10_N8
\data_out[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~43_combout\ = (\U14|ramrd_latch~q\ & ((\U3|inst|altsyncram_component|auto_generated|q_a\(4)) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(4))))) # (!\U14|ramrd_latch~q\ & (\U14|enrom_latch~q\ & 
-- ((\U4|inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \U14|enrom_latch~q\,
	datac => \U3|inst|altsyncram_component|auto_generated|q_a\(4),
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \data_out[4]~43_combout\);

-- Location: LCCOMB_X25_Y10_N24
\data_out[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~44_combout\ = (\U14|enpcout_latch~q\ & ((\U7|addr_latch\(4)) # ((\U5|instruction\(4) & \U14|dbfaout_latch~q\)))) # (!\U14|enpcout_latch~q\ & (\U5|instruction\(4) & (\U14|dbfaout_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enpcout_latch~q\,
	datab => \U5|instruction\(4),
	datac => \U14|dbfaout_latch~q\,
	datad => \U7|addr_latch\(4),
	combout => \data_out[4]~44_combout\);

-- Location: LCCOMB_X26_Y10_N12
\data_out[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~45_combout\ = (\data_out[4]~43_combout\) # (\data_out[4]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[4]~43_combout\,
	datad => \data_out[4]~44_combout\,
	combout => \data_out[4]~45_combout\);

-- Location: LCCOMB_X12_Y10_N20
\uart_inst|inst1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~5_combout\ = (!\uart_inst|inst1|pro2:rcnt[1]~q\ & (\uart_inst|inst1|pro2:rcnt[2]~q\ & (!\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~5_combout\);

-- Location: LCCOMB_X12_Y10_N4
\uart_inst|inst1|pro2:rbufs[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[4]~0_combout\ = (\uart_inst|inst1|Decoder0~5_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~5_combout\ & ((\uart_inst|inst1|pro2:rbufs[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[4]~q\,
	datad => \uart_inst|inst1|Decoder0~5_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[4]~0_combout\);

-- Location: FF_X12_Y10_N5
\uart_inst|inst1|pro2:rbufs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[4]~q\);

-- Location: LCCOMB_X25_Y12_N28
\uart_inst|inst1|rbuf[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[4]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|pro2:rbufs[4]~q\,
	combout => \uart_inst|inst1|rbuf[4]~feeder_combout\);

-- Location: FF_X25_Y12_N29
\uart_inst|inst1|rbuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[4]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(4));

-- Location: LCCOMB_X25_Y12_N12
\uart_inst|inst3|data_latch[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[4]~feeder_combout\ = \uart_inst|inst1|rbuf\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|rbuf\(4),
	combout => \uart_inst|inst3|data_latch[4]~feeder_combout\);

-- Location: FF_X25_Y12_N13
\uart_inst|inst3|data_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(4));

-- Location: LCCOMB_X26_Y10_N6
\data_out[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~46_combout\ = (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(4)) # ((\U14|dbfbout_latch~q\ & \U10|data_latch\(4))))) # (!\U14|enuart_latch~q\ & (\U14|dbfbout_latch~q\ & ((\U10|data_latch\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enuart_latch~q\,
	datab => \U14|dbfbout_latch~q\,
	datac => \uart_inst|inst3|data_latch\(4),
	datad => \U10|data_latch\(4),
	combout => \data_out[4]~46_combout\);

-- Location: LCCOMB_X26_Y10_N4
\data_out[4]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~71_combout\ = (\data_out[4]~46_combout\) # ((\data_out[4]~48_combout\ & ((\U14|regrd1_latch~q\) # (\U14|regrd2_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datab => \U14|regrd2_latch~q\,
	datac => \data_out[4]~48_combout\,
	datad => \data_out[4]~46_combout\,
	combout => \data_out[4]~71_combout\);

-- Location: LCCOMB_X23_Y15_N22
\U8|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~6_combout\ = (\U10|data_latch\(4) & (!\U5|instruction\(13) & (!\U5|instruction\(12) & !\U5|instruction\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(11),
	combout => \U8|Mux3~6_combout\);

-- Location: LCCOMB_X22_Y13_N12
\U8|result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~14_combout\ = (\U5|instruction\(11) & ((\data_out[3]~42_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \data_out[3]~42_combout\,
	datac => \U5|instruction\(11),
	combout => \U8|result~14_combout\);

-- Location: LCCOMB_X22_Y13_N18
\U8|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~3_combout\ = (\U5|instruction\(12) & (((\U8|Add1~8_combout\) # (\U5|instruction\(13))))) # (!\U5|instruction\(12) & (\U10|data_latch\(4) & ((!\U5|instruction\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \U5|instruction\(12),
	datac => \U8|Add1~8_combout\,
	datad => \U5|instruction\(13),
	combout => \U8|Mux3~3_combout\);

-- Location: LCCOMB_X22_Y15_N28
\U8|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~5_combout\ = (\U5|instruction\(11) & ((\data_out[2]~35_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(3),
	datac => \data_out[2]~35_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|Mux0~5_combout\);

-- Location: LCCOMB_X22_Y14_N18
\U8|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~2_combout\ = (\U10|data_latch\(2) & ((\U5|instruction\(12) $ (!\U5|instruction\(11))) # (!\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U5|instruction\(11),
	combout => \U8|Mux5~2_combout\);

-- Location: LCCOMB_X21_Y11_N16
\U8|result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~10_combout\ = (\U5|instruction\(11) & (\data_out[1]~28_combout\)) # (!\U5|instruction\(11) & ((\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~28_combout\,
	datac => \U10|data_latch\(2),
	datad => \U5|instruction\(11),
	combout => \U8|result~10_combout\);

-- Location: LCCOMB_X23_Y15_N26
\U8|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~3_combout\ = (\U10|data_latch\(0) & !\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datac => \U5|instruction\(11),
	combout => \U8|result~3_combout\);

-- Location: LCCOMB_X24_Y15_N0
\U8|Add2|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[0]~1_cout\ = CARRY(\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datad => VCC,
	cout => \U8|Add2|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X24_Y15_N2
\U8|Add2|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[1]~2_combout\ = (\U8|Add2|auto_generated|_~0_combout\ & ((\data_out[0]~21_combout\ & (\U8|Add2|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\data_out[0]~21_combout\ & 
-- (!\U8|Add2|auto_generated|result_int[0]~1_cout\)))) # (!\U8|Add2|auto_generated|_~0_combout\ & ((\data_out[0]~21_combout\ & (!\U8|Add2|auto_generated|result_int[0]~1_cout\)) # (!\data_out[0]~21_combout\ & ((\U8|Add2|auto_generated|result_int[0]~1_cout\) # 
-- (GND)))))
-- \U8|Add2|auto_generated|result_int[1]~3\ = CARRY((\U8|Add2|auto_generated|_~0_combout\ & (!\data_out[0]~21_combout\ & !\U8|Add2|auto_generated|result_int[0]~1_cout\)) # (!\U8|Add2|auto_generated|_~0_combout\ & 
-- ((!\U8|Add2|auto_generated|result_int[0]~1_cout\) # (!\data_out[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~0_combout\,
	datab => \data_out[0]~21_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[0]~1_cout\,
	combout => \U8|Add2|auto_generated|result_int[1]~2_combout\,
	cout => \U8|Add2|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X23_Y15_N28
\U8|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~2_combout\ = (\U5|instruction\(13) & (((\U8|Add2|auto_generated|result_int[1]~2_combout\) # (\U5|instruction\(12))))) # (!\U5|instruction\(13) & (\U10|data_latch\(0) & ((!\U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U5|instruction\(13),
	datac => \U8|Add2|auto_generated|result_int[1]~2_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y15_N12
\U8|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~3_combout\ = (\U8|Mux7~2_combout\ & ((\U8|result~3_combout\) # ((!\U5|instruction\(12))))) # (!\U8|Mux7~2_combout\ & (((\U8|Add1~0_combout\ & \U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~3_combout\,
	datab => \U8|Mux7~2_combout\,
	datac => \U8|Add1~0_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux7~3_combout\);

-- Location: LCCOMB_X22_Y15_N4
\U8|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~1_combout\ = (\U5|instruction\(11) & (\U10|data_latch\(0) & \data_out[0]~21_combout\)) # (!\U5|instruction\(11) & (\U10|data_latch\(0) $ (\data_out[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(0),
	datad => \data_out[0]~21_combout\,
	combout => \U8|result~1_combout\);

-- Location: LCCOMB_X22_Y15_N6
\U8|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~2_combout\ = (\U5|instruction\(11) & (\data_out[0]~21_combout\ & ((\U10|data_latch\(0))))) # (!\U5|instruction\(11) & (((\data_out[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~21_combout\,
	datab => \data_out[1]~28_combout\,
	datac => \U5|instruction\(11),
	datad => \U10|data_latch\(0),
	combout => \U8|result~2_combout\);

-- Location: LCCOMB_X23_Y15_N30
\U8|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~0_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & (\U8|result~1_combout\)) # (!\U5|instruction\(13) & ((\U8|result~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|result~1_combout\,
	datac => \U8|result~2_combout\,
	datad => \U5|instruction\(13),
	combout => \U8|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\U8|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~0_combout\ = (\U5|instruction\(11) & ((!\data_out[0]~21_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(0)) # (\data_out[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datac => \U5|instruction\(11),
	datad => \data_out[0]~21_combout\,
	combout => \U8|result~0_combout\);

-- Location: LCCOMB_X24_Y13_N6
\U8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal0~0_combout\ = (!\U10|data_latch\(0) & (!\U10|data_latch\(1) & (!\U10|data_latch\(3) & !\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(3),
	datad => \U10|data_latch\(2),
	combout => \U8|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\U8|Add18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~7_combout\ = (\U5|instruction\(11) & ((\data_out[0]~21_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datac => \data_out[0]~21_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|Add18~7_combout\);

-- Location: LCCOMB_X24_Y13_N0
\U8|divider~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divider~1_combout\ = (\U10|data_latch\(3) & (((\U10|data_latch\(2))))) # (!\U10|data_latch\(3) & (\U10|data_latch\(1) & ((\U10|data_latch\(0)) # (\U10|data_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(3),
	datad => \U10|data_latch\(2),
	combout => \U8|divider~1_combout\);

-- Location: LCCOMB_X26_Y13_N6
\U8|divider~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divider~2_combout\ = (\U10|data_latch\(3) & (((\U10|data_latch\(1))))) # (!\U10|data_latch\(3) & (\U10|data_latch\(0) & (\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U10|data_latch\(2),
	datac => \U10|data_latch\(3),
	datad => \U10|data_latch\(1),
	combout => \U8|divider~2_combout\);

-- Location: LCCOMB_X26_Y13_N16
\U8|divider~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divider~0_combout\ = (\U10|data_latch\(0) & \U10|data_latch\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(0),
	datac => \U10|data_latch\(3),
	combout => \U8|divider~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\U8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan0~0_combout\ = (\U8|divider~2_combout\ & (((\U8|divider~0_combout\ & !\data_out[0]~21_combout\)) # (!\data_out[1]~28_combout\))) # (!\U8|divider~2_combout\ & (\U8|divider~0_combout\ & (!\data_out[1]~28_combout\ & !\data_out[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~2_combout\,
	datab => \U8|divider~0_combout\,
	datac => \data_out[1]~28_combout\,
	datad => \data_out[0]~21_combout\,
	combout => \U8|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y14_N20
\U8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan0~1_combout\ = (\U8|divider~1_combout\ & ((\U8|LessThan0~0_combout\) # (!\data_out[2]~35_combout\))) # (!\U8|divider~1_combout\ & (\U8|LessThan0~0_combout\ & !\data_out[2]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|divider~1_combout\,
	datac => \U8|LessThan0~0_combout\,
	datad => \data_out[2]~35_combout\,
	combout => \U8|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y14_N30
\U8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan0~2_combout\ = (\U8|Equal0~0_combout\ & (!\data_out[3]~42_combout\ & \U8|LessThan0~1_combout\)) # (!\U8|Equal0~0_combout\ & ((\U8|LessThan0~1_combout\) # (!\data_out[3]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datac => \data_out[3]~42_combout\,
	datad => \U8|LessThan0~1_combout\,
	combout => \U8|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y14_N16
\U8|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~2_combout\ = (\data_out[0]~21_combout\ & ((GND) # (!\U8|divider~0_combout\))) # (!\data_out[0]~21_combout\ & (\U8|divider~0_combout\ $ (GND)))
-- \U8|Add8~3\ = CARRY((\data_out[0]~21_combout\) # (!\U8|divider~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~21_combout\,
	datab => \U8|divider~0_combout\,
	datad => VCC,
	combout => \U8|Add8~2_combout\,
	cout => \U8|Add8~3\);

-- Location: LCCOMB_X25_Y14_N12
\U8|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~4_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[0]~21_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]~21_combout\,
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|Add8~2_combout\,
	combout => \U8|Add8~4_combout\);

-- Location: LCCOMB_X22_Y15_N8
\U8|Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~4_combout\ = (!\U5|instruction\(11) & ((\U10|data_latch\(1)) # ((\U10|data_latch\(3)) # (\U10|data_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(3),
	datad => \U10|data_latch\(2),
	combout => \U8|Add18~4_combout\);

-- Location: LCCOMB_X25_Y14_N2
\U8|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add11~0_combout\ = (\U8|Add8~4_combout\ & ((GND) # (!\U8|divider~2_combout\))) # (!\U8|Add8~4_combout\ & (\U8|divider~2_combout\ $ (GND)))
-- \U8|Add11~1\ = CARRY((\U8|Add8~4_combout\) # (!\U8|divider~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~4_combout\,
	datab => \U8|divider~2_combout\,
	datad => VCC,
	combout => \U8|Add11~0_combout\,
	cout => \U8|Add11~1\);

-- Location: LCCOMB_X26_Y14_N18
\U8|Add8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~5_combout\ = (\U8|divider~2_combout\ & ((\data_out[1]~28_combout\ & (!\U8|Add8~3\)) # (!\data_out[1]~28_combout\ & ((\U8|Add8~3\) # (GND))))) # (!\U8|divider~2_combout\ & ((\data_out[1]~28_combout\ & (\U8|Add8~3\ & VCC)) # 
-- (!\data_out[1]~28_combout\ & (!\U8|Add8~3\))))
-- \U8|Add8~6\ = CARRY((\U8|divider~2_combout\ & ((!\U8|Add8~3\) # (!\data_out[1]~28_combout\))) # (!\U8|divider~2_combout\ & (!\data_out[1]~28_combout\ & !\U8|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~2_combout\,
	datab => \data_out[1]~28_combout\,
	datad => VCC,
	cin => \U8|Add8~3\,
	combout => \U8|Add8~5_combout\,
	cout => \U8|Add8~6\);

-- Location: LCCOMB_X26_Y14_N20
\U8|Add8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~7_combout\ = ((\U8|divider~1_combout\ $ (\data_out[2]~35_combout\ $ (\U8|Add8~6\)))) # (GND)
-- \U8|Add8~8\ = CARRY((\U8|divider~1_combout\ & (\data_out[2]~35_combout\ & !\U8|Add8~6\)) # (!\U8|divider~1_combout\ & ((\data_out[2]~35_combout\) # (!\U8|Add8~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datab => \data_out[2]~35_combout\,
	datad => VCC,
	cin => \U8|Add8~6\,
	combout => \U8|Add8~7_combout\,
	cout => \U8|Add8~8\);

-- Location: LCCOMB_X26_Y14_N22
\U8|Add8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~9_combout\ = \U8|Equal0~0_combout\ $ (\U8|Add8~8\ $ (\data_out[3]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|Equal0~0_combout\,
	datad => \data_out[3]~42_combout\,
	cin => \U8|Add8~8\,
	combout => \U8|Add8~9_combout\);

-- Location: LCCOMB_X25_Y14_N10
\U8|Add8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~13_combout\ = (\U8|Equal0~0_combout\ & (\U8|Add8~9_combout\ & ((\data_out[3]~42_combout\) # (!\U8|LessThan0~1_combout\)))) # (!\U8|Equal0~0_combout\ & (\data_out[3]~42_combout\ & ((\U8|LessThan0~1_combout\) # (\U8|Add8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \data_out[3]~42_combout\,
	datac => \U8|LessThan0~1_combout\,
	datad => \U8|Add8~9_combout\,
	combout => \U8|Add8~13_combout\);

-- Location: LCCOMB_X26_Y14_N12
\U8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~0_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[2]~35_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U8|Add8~7_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y14_N26
\U8|Add8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~11_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[1]~28_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[1]~28_combout\,
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|Add8~5_combout\,
	combout => \U8|Add8~11_combout\);

-- Location: LCCOMB_X26_Y14_N26
\U8|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~1_combout\ = \U8|divider~1_combout\ $ (((\U8|LessThan0~2_combout\ & ((\data_out[1]~28_combout\))) # (!\U8|LessThan0~2_combout\ & (\U8|Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datab => \U8|Add8~5_combout\,
	datac => \data_out[1]~28_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y14_N24
\U8|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~2_combout\ = (!\U8|Add8~4_combout\ & (\U8|divider~2_combout\ & !\U8|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~4_combout\,
	datac => \U8|divider~2_combout\,
	datad => \U8|LessThan1~1_combout\,
	combout => \U8|LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y14_N18
\U8|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~3_combout\ = (\U8|LessThan1~2_combout\) # ((\U8|divider~1_combout\ & !\U8|Add8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|divider~1_combout\,
	datac => \U8|Add8~11_combout\,
	datad => \U8|LessThan1~2_combout\,
	combout => \U8|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y14_N28
\U8|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~4_combout\ = (!\U8|Add8~13_combout\ & ((\U8|Equal0~0_combout\ & (!\U8|LessThan1~0_combout\ & \U8|LessThan1~3_combout\)) # (!\U8|Equal0~0_combout\ & ((\U8|LessThan1~3_combout\) # (!\U8|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~13_combout\,
	datab => \U8|Equal0~0_combout\,
	datac => \U8|LessThan1~0_combout\,
	datad => \U8|LessThan1~3_combout\,
	combout => \U8|LessThan1~4_combout\);

-- Location: LCCOMB_X25_Y14_N14
\U8|divided~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~0_combout\ = (\U8|LessThan1~4_combout\ & (\U8|Add8~4_combout\)) # (!\U8|LessThan1~4_combout\ & ((\U8|Add11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~4_combout\,
	datab => \U8|Add11~0_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|divided~0_combout\);

-- Location: LCCOMB_X26_Y14_N0
\U8|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add14~0_combout\ = (\U8|divided~0_combout\ & ((GND) # (!\U8|divider~1_combout\))) # (!\U8|divided~0_combout\ & (\U8|divider~1_combout\ $ (GND)))
-- \U8|Add14~1\ = CARRY((\U8|divided~0_combout\) # (!\U8|divider~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~0_combout\,
	datab => \U8|divider~1_combout\,
	datad => VCC,
	combout => \U8|Add14~0_combout\,
	cout => \U8|Add14~1\);

-- Location: LCCOMB_X25_Y14_N4
\U8|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add11~2_combout\ = (\U8|Add8~11_combout\ & ((\U8|divider~1_combout\ & (!\U8|Add11~1\)) # (!\U8|divider~1_combout\ & (\U8|Add11~1\ & VCC)))) # (!\U8|Add8~11_combout\ & ((\U8|divider~1_combout\ & ((\U8|Add11~1\) # (GND))) # (!\U8|divider~1_combout\ & 
-- (!\U8|Add11~1\))))
-- \U8|Add11~3\ = CARRY((\U8|Add8~11_combout\ & (\U8|divider~1_combout\ & !\U8|Add11~1\)) # (!\U8|Add8~11_combout\ & ((\U8|divider~1_combout\) # (!\U8|Add11~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~11_combout\,
	datab => \U8|divider~1_combout\,
	datad => VCC,
	cin => \U8|Add11~1\,
	combout => \U8|Add11~2_combout\,
	cout => \U8|Add11~3\);

-- Location: LCCOMB_X25_Y14_N16
\U8|divided~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~1_combout\ = (\U8|LessThan1~4_combout\ & (\U8|Add8~11_combout\)) # (!\U8|LessThan1~4_combout\ & ((\U8|Add11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~11_combout\,
	datac => \U8|Add11~2_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|divided~1_combout\);

-- Location: LCCOMB_X25_Y14_N22
\U8|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan2~0_combout\ = (\U8|Equal0~0_combout\ & (\U8|divider~1_combout\ & (!\U8|divided~0_combout\ & !\U8|divided~1_combout\))) # (!\U8|Equal0~0_combout\ & (((\U8|divider~1_combout\ & !\U8|divided~0_combout\)) # (!\U8|divided~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \U8|divider~1_combout\,
	datac => \U8|divided~0_combout\,
	datad => \U8|divided~1_combout\,
	combout => \U8|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y14_N8
\U8|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~12_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[2]~35_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U8|Add8~7_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add8~12_combout\);

-- Location: LCCOMB_X25_Y14_N6
\U8|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add11~4_combout\ = ((\U8|Equal0~0_combout\ $ (\U8|Add8~12_combout\ $ (!\U8|Add11~3\)))) # (GND)
-- \U8|Add11~5\ = CARRY((\U8|Equal0~0_combout\ & ((\U8|Add8~12_combout\) # (!\U8|Add11~3\))) # (!\U8|Equal0~0_combout\ & (\U8|Add8~12_combout\ & !\U8|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \U8|Add8~12_combout\,
	datad => VCC,
	cin => \U8|Add11~3\,
	combout => \U8|Add11~4_combout\,
	cout => \U8|Add11~5\);

-- Location: LCCOMB_X25_Y14_N8
\U8|Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add11~6_combout\ = \U8|Add11~5\ $ (!\U8|Add8~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U8|Add8~13_combout\,
	cin => \U8|Add11~5\,
	combout => \U8|Add11~6_combout\);

-- Location: LCCOMB_X25_Y14_N0
\U8|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan2~1_combout\ = (\U8|LessThan1~4_combout\ & (((!\U8|Add8~12_combout\)))) # (!\U8|LessThan1~4_combout\ & (!\U8|Add11~4_combout\ & ((!\U8|Add11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add11~4_combout\,
	datab => \U8|Add8~12_combout\,
	datac => \U8|Add11~6_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y14_N12
\U8|div8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~2_combout\ = (\U10|data_latch\(3)) # ((!\U10|data_latch\(2) & ((!\U8|LessThan2~1_combout\) # (!\U8|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(3),
	datac => \U8|LessThan2~0_combout\,
	datad => \U8|LessThan2~1_combout\,
	combout => \U8|div8~2_combout\);

-- Location: LCCOMB_X22_Y14_N14
\U8|Add18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~5_combout\ = (\U8|div8~2_combout\ & ((\U8|Add14~0_combout\))) # (!\U8|div8~2_combout\ & (\U8|Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add11~0_combout\,
	datac => \U8|Add14~0_combout\,
	datad => \U8|div8~2_combout\,
	combout => \U8|Add18~5_combout\);

-- Location: LCCOMB_X22_Y14_N20
\U8|div8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~6_combout\ = (\U8|div8~2_combout\ & ((\U10|data_latch\(2)) # ((\U10|data_latch\(3))))) # (!\U8|div8~2_combout\ & (((\U8|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(3),
	datac => \U8|LessThan1~4_combout\,
	datad => \U8|div8~2_combout\,
	combout => \U8|div8~6_combout\);

-- Location: LCCOMB_X22_Y14_N4
\U8|Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~6_combout\ = (\U8|Add18~4_combout\ & ((\U8|div8~6_combout\ & (\U8|Add8~4_combout\)) # (!\U8|div8~6_combout\ & ((\U8|Add18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~4_combout\,
	datab => \U8|Add18~4_combout\,
	datac => \U8|Add18~5_combout\,
	datad => \U8|div8~6_combout\,
	combout => \U8|Add18~6_combout\);

-- Location: LCCOMB_X22_Y15_N10
\U8|Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~8_combout\ = (!\U5|instruction\(11) & (!\U10|data_latch\(1) & (!\U10|data_latch\(3) & !\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(3),
	datad => \U10|data_latch\(2),
	combout => \U8|Add18~8_combout\);

-- Location: LCCOMB_X26_Y14_N2
\U8|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add14~2_combout\ = (\U8|divided~1_combout\ & ((\U8|Equal0~0_combout\ & (\U8|Add14~1\ & VCC)) # (!\U8|Equal0~0_combout\ & (!\U8|Add14~1\)))) # (!\U8|divided~1_combout\ & ((\U8|Equal0~0_combout\ & (!\U8|Add14~1\)) # (!\U8|Equal0~0_combout\ & 
-- ((\U8|Add14~1\) # (GND)))))
-- \U8|Add14~3\ = CARRY((\U8|divided~1_combout\ & (!\U8|Equal0~0_combout\ & !\U8|Add14~1\)) # (!\U8|divided~1_combout\ & ((!\U8|Add14~1\) # (!\U8|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~1_combout\,
	datab => \U8|Equal0~0_combout\,
	datad => VCC,
	cin => \U8|Add14~1\,
	combout => \U8|Add14~2_combout\,
	cout => \U8|Add14~3\);

-- Location: LCCOMB_X24_Y14_N0
\U8|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan2~2_combout\ = (\U8|LessThan2~1_combout\ & \U8|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|LessThan2~0_combout\,
	combout => \U8|LessThan2~2_combout\);

-- Location: LCCOMB_X26_Y14_N30
\U8|divided~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~3_combout\ = (\U8|LessThan1~4_combout\ & (\U8|Add8~12_combout\)) # (!\U8|LessThan1~4_combout\ & ((\U8|Add11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add8~12_combout\,
	datac => \U8|Add11~4_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|divided~3_combout\);

-- Location: LCCOMB_X26_Y14_N4
\U8|Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add14~4_combout\ = (\U8|divided~3_combout\ & ((GND) # (!\U8|Add14~3\))) # (!\U8|divided~3_combout\ & (\U8|Add14~3\ $ (GND)))
-- \U8|Add14~5\ = CARRY((\U8|divided~3_combout\) # (!\U8|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~3_combout\,
	datad => VCC,
	cin => \U8|Add14~3\,
	combout => \U8|Add14~4_combout\,
	cout => \U8|Add14~5\);

-- Location: LCCOMB_X26_Y14_N6
\U8|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add14~6_combout\ = \U8|Add14~5\ $ (((\U8|LessThan1~4_combout\) # (!\U8|Add11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|LessThan1~4_combout\,
	datad => \U8|Add11~6_combout\,
	cin => \U8|Add14~5\,
	combout => \U8|Add14~6_combout\);

-- Location: LCCOMB_X26_Y14_N14
\U8|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan3~1_combout\ = (\U8|LessThan2~2_combout\ & (!\U8|divided~1_combout\)) # (!\U8|LessThan2~2_combout\ & (((!\U8|Add14~2_combout\ & !\U8|Add14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~1_combout\,
	datab => \U8|Add14~2_combout\,
	datac => \U8|LessThan2~2_combout\,
	datad => \U8|Add14~6_combout\,
	combout => \U8|LessThan3~1_combout\);

-- Location: LCCOMB_X26_Y14_N28
\U8|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan3~0_combout\ = (\U8|LessThan2~2_combout\ & (!\U8|divided~0_combout\)) # (!\U8|LessThan2~2_combout\ & (((!\U8|Add14~0_combout\ & !\U8|Add14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~0_combout\,
	datab => \U8|Add14~0_combout\,
	datac => \U8|Add14~4_combout\,
	datad => \U8|LessThan2~2_combout\,
	combout => \U8|LessThan3~0_combout\);

-- Location: LCCOMB_X26_Y14_N24
\U8|Add18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~9_combout\ = (\U8|Add18~8_combout\ & ((\U8|Equal0~0_combout\) # ((!\U8|LessThan3~0_combout\) # (!\U8|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~8_combout\,
	datab => \U8|Equal0~0_combout\,
	datac => \U8|LessThan3~1_combout\,
	datad => \U8|LessThan3~0_combout\,
	combout => \U8|Add18~9_combout\);

-- Location: LCCOMB_X23_Y14_N26
\U8|divided~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~2_combout\ = (\U8|LessThan2~1_combout\ & ((\U8|LessThan2~0_combout\ & (\U8|divided~0_combout\)) # (!\U8|LessThan2~0_combout\ & ((\U8|Add14~0_combout\))))) # (!\U8|LessThan2~1_combout\ & (((\U8|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~0_combout\,
	datab => \U8|LessThan2~1_combout\,
	datac => \U8|LessThan2~0_combout\,
	datad => \U8|Add14~0_combout\,
	combout => \U8|divided~2_combout\);

-- Location: LCCOMB_X23_Y14_N18
\U8|Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add17~0_combout\ = (\U8|divided~2_combout\ & ((\U8|Equal0~0_combout\) # (GND))) # (!\U8|divided~2_combout\ & (\U8|Equal0~0_combout\ $ (VCC)))
-- \U8|Add17~1\ = CARRY((\U8|divided~2_combout\) # (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~2_combout\,
	datab => \U8|Equal0~0_combout\,
	datad => VCC,
	combout => \U8|Add17~0_combout\,
	cout => \U8|Add17~1\);

-- Location: LCCOMB_X22_Y14_N10
\U8|Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~10_combout\ = (\U8|Add18~7_combout\) # ((\U8|Add18~6_combout\) # ((\U8|Add18~9_combout\ & \U8|Add17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~7_combout\,
	datab => \U8|Add18~6_combout\,
	datac => \U8|Add18~9_combout\,
	datad => \U8|Add17~0_combout\,
	combout => \U8|Add18~10_combout\);

-- Location: LCCOMB_X22_Y14_N24
\U8|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~1_combout\ = (\U8|Mux7~0_combout\ & (((\U8|Add18~10_combout\)) # (!\U5|instruction\(12)))) # (!\U8|Mux7~0_combout\ & (\U5|instruction\(12) & (\U8|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux7~0_combout\,
	datab => \U5|instruction\(12),
	datac => \U8|result~0_combout\,
	datad => \U8|Add18~10_combout\,
	combout => \U8|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y14_N22
\U8|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~4_combout\ = (\U5|instruction\(14) & (((\U5|instruction\(15)) # (\U8|Mux7~1_combout\)))) # (!\U5|instruction\(14) & (\U8|Mux7~3_combout\ & (!\U5|instruction\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux7~3_combout\,
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(15),
	datad => \U8|Mux7~1_combout\,
	combout => \U8|Mux7~4_combout\);

-- Location: LCCOMB_X22_Y14_N6
\U8|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~5_combout\ = (\U5|instruction\(13) & (!\U8|Mux7~4_combout\ & (\U5|instruction\(11) $ (!\U5|instruction\(12))))) # (!\U5|instruction\(13) & (((!\U5|instruction\(11) & !\U5|instruction\(12))) # (!\U8|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(11),
	datac => \U8|Mux7~4_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y14_N28
\U8|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~6_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(0) & ((\U8|Mux7~5_combout\)))) # (!\U5|instruction\(15) & (((\U8|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U5|instruction\(15),
	datac => \U8|Mux7~4_combout\,
	datad => \U8|Mux7~5_combout\,
	combout => \U8|Mux7~6_combout\);

-- Location: FF_X22_Y14_N29
\U8|alu_result_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(0));

-- Location: LCCOMB_X26_Y13_N2
\U10|data_latch[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[0]~0_combout\ = (\U14|dbfbin_latch~q\ & (\data_out[0]~21_combout\)) # (!\U14|dbfbin_latch~q\ & ((\U8|alu_result_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]~21_combout\,
	datac => \U14|dbfbin_latch~q\,
	datad => \U8|alu_result_latch\(0),
	combout => \U10|data_latch[0]~0_combout\);

-- Location: LCCOMB_X26_Y13_N14
\U10|data_latch[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(0) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch[0]~0_combout\)) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch[0]~0_combout\,
	datac => \U10|data_latch\(0),
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(0));

-- Location: LCCOMB_X24_Y15_N28
\U8|Add2|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~0_combout\ = \U10|data_latch\(0) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(0),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\U8|Add2|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[2]~4_combout\ = ((\U8|Add2|auto_generated|_~1_combout\ $ (\data_out[1]~28_combout\ $ (!\U8|Add2|auto_generated|result_int[1]~3\)))) # (GND)
-- \U8|Add2|auto_generated|result_int[2]~5\ = CARRY((\U8|Add2|auto_generated|_~1_combout\ & ((\data_out[1]~28_combout\) # (!\U8|Add2|auto_generated|result_int[1]~3\))) # (!\U8|Add2|auto_generated|_~1_combout\ & (\data_out[1]~28_combout\ & 
-- !\U8|Add2|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~1_combout\,
	datab => \data_out[1]~28_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[1]~3\,
	combout => \U8|Add2|auto_generated|result_int[2]~4_combout\,
	cout => \U8|Add2|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X22_Y12_N30
\U8|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~2_combout\ = (\U5|instruction\(12) & (\U5|instruction\(13))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & (\U8|Add2|auto_generated|result_int[2]~4_combout\)) # (!\U5|instruction\(13) & ((\U10|data_latch\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(13),
	datac => \U8|Add2|auto_generated|result_int[2]~4_combout\,
	datad => \U10|data_latch\(1),
	combout => \U8|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y12_N28
\U8|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~4_combout\ = (\U5|instruction\(11) & ((\data_out[0]~21_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U10|data_latch\(1),
	datad => \data_out[0]~21_combout\,
	combout => \U8|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y12_N18
\U8|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~3_combout\ = (\U8|Mux6~2_combout\ & ((\U8|Mux0~4_combout\) # ((!\U5|instruction\(12))))) # (!\U8|Mux6~2_combout\ & (((\U5|instruction\(12) & \U8|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux6~2_combout\,
	datab => \U8|Mux0~4_combout\,
	datac => \U5|instruction\(12),
	datad => \U8|Add1~2_combout\,
	combout => \U8|Mux6~3_combout\);

-- Location: LCCOMB_X25_Y13_N30
\U8|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~4_combout\ = (\U10|data_latch\(0) & \data_out[1]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(0),
	datad => \data_out[1]~28_combout\,
	combout => \U8|result~4_combout\);

-- Location: LCCOMB_X25_Y13_N0
\U8|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~4_combout\ = (\U8|result~4_combout\ & (\data_out[0]~21_combout\ $ (VCC))) # (!\U8|result~4_combout\ & (\data_out[0]~21_combout\ & VCC))
-- \U8|Add5~5\ = CARRY((\U8|result~4_combout\ & \data_out[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~4_combout\,
	datab => \data_out[0]~21_combout\,
	datad => VCC,
	combout => \U8|Add5~4_combout\,
	cout => \U8|Add5~5\);

-- Location: LCCOMB_X24_Y13_N30
\U8|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~1_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(1) & ((\U8|Add5~4_combout\))) # (!\U10|data_latch\(1) & (\U8|result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~4_combout\,
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(1),
	datad => \U8|Add5~4_combout\,
	combout => \U8|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y12_N4
\U8|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~2_combout\ = (\U8|Mux0~1_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(1) $ (\data_out[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \data_out[1]~28_combout\,
	datac => \U8|Mux0~1_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y12_N22
\U8|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~3_combout\ = (\U5|instruction\(11) & (((\U10|data_latch\(1) & \data_out[1]~28_combout\)))) # (!\U5|instruction\(11) & (\data_out[2]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(1),
	datad => \data_out[1]~28_combout\,
	combout => \U8|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y12_N8
\U8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~0_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & (\U8|Mux0~2_combout\)) # (!\U5|instruction\(13) & ((\U8|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~2_combout\,
	datab => \U5|instruction\(12),
	datac => \U8|Mux0~3_combout\,
	datad => \U5|instruction\(13),
	combout => \U8|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\U8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~0_combout\ = (\U5|instruction\(11) & ((!\data_out[1]~28_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(1)) # (\data_out[1]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U10|data_latch\(1),
	datad => \data_out[1]~28_combout\,
	combout => \U8|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\U8|Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~12_cout\ = CARRY(!\data_out[0]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~21_combout\,
	datad => VCC,
	cout => \U8|Add18~12_cout\);

-- Location: LCCOMB_X21_Y12_N4
\U8|Add18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~13_combout\ = (\data_out[1]~28_combout\ & ((\U8|Add18~12_cout\) # (GND))) # (!\data_out[1]~28_combout\ & (!\U8|Add18~12_cout\))
-- \U8|Add18~14\ = CARRY((\data_out[1]~28_combout\) # (!\U8|Add18~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_out[1]~28_combout\,
	datad => VCC,
	cin => \U8|Add18~12_cout\,
	combout => \U8|Add18~13_combout\,
	cout => \U8|Add18~14\);

-- Location: LCCOMB_X21_Y12_N26
\U8|Add18~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~15_combout\ = (\U5|instruction\(11) & ((\U8|Add18~13_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datac => \U8|Add18~13_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|Add18~15_combout\);

-- Location: LCCOMB_X22_Y12_N10
\U8|Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~16_combout\ = (\U8|div8~2_combout\ & ((\U8|Add14~2_combout\))) # (!\U8|div8~2_combout\ & (\U8|Add11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add11~2_combout\,
	datac => \U8|Add14~2_combout\,
	datad => \U8|div8~2_combout\,
	combout => \U8|Add18~16_combout\);

-- Location: LCCOMB_X22_Y12_N16
\U8|Add18~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~17_combout\ = (\U8|Add18~4_combout\ & ((\U8|div8~6_combout\ & (\U8|Add8~11_combout\)) # (!\U8|div8~6_combout\ & ((\U8|Add18~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~4_combout\,
	datab => \U8|Add8~11_combout\,
	datac => \U8|div8~6_combout\,
	datad => \U8|Add18~16_combout\,
	combout => \U8|Add18~17_combout\);

-- Location: LCCOMB_X23_Y14_N12
\U8|divided~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~4_combout\ = (\U8|LessThan2~0_combout\ & ((\U8|LessThan2~1_combout\ & ((\U8|divided~1_combout\))) # (!\U8|LessThan2~1_combout\ & (\U8|Add14~2_combout\)))) # (!\U8|LessThan2~0_combout\ & (((\U8|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan2~0_combout\,
	datab => \U8|LessThan2~1_combout\,
	datac => \U8|Add14~2_combout\,
	datad => \U8|divided~1_combout\,
	combout => \U8|divided~4_combout\);

-- Location: LCCOMB_X23_Y14_N20
\U8|Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add17~2_combout\ = (\U8|divided~4_combout\ & (\U8|Add17~1\ & VCC)) # (!\U8|divided~4_combout\ & (!\U8|Add17~1\))
-- \U8|Add17~3\ = CARRY((!\U8|divided~4_combout\ & !\U8|Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~4_combout\,
	datad => VCC,
	cin => \U8|Add17~1\,
	combout => \U8|Add17~2_combout\,
	cout => \U8|Add17~3\);

-- Location: LCCOMB_X22_Y12_N2
\U8|Add18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~18_combout\ = (\U8|Add18~15_combout\) # ((\U8|Add18~17_combout\) # ((\U8|Add18~9_combout\ & \U8|Add17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~15_combout\,
	datab => \U8|Add18~17_combout\,
	datac => \U8|Add18~9_combout\,
	datad => \U8|Add17~2_combout\,
	combout => \U8|Add18~18_combout\);

-- Location: LCCOMB_X22_Y12_N12
\U8|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~1_combout\ = (\U5|instruction\(12) & ((\U8|Mux6~0_combout\ & ((\U8|Add18~18_combout\))) # (!\U8|Mux6~0_combout\ & (\U8|Mux0~0_combout\)))) # (!\U5|instruction\(12) & (\U8|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Mux6~0_combout\,
	datac => \U8|Mux0~0_combout\,
	datad => \U8|Add18~18_combout\,
	combout => \U8|Mux6~1_combout\);

-- Location: LCCOMB_X22_Y12_N20
\U8|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~4_combout\ = (\U5|instruction\(15) & (((\U5|instruction\(14))))) # (!\U5|instruction\(15) & ((\U5|instruction\(14) & ((\U8|Mux6~1_combout\))) # (!\U5|instruction\(14) & (\U8|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U8|Mux6~3_combout\,
	datac => \U5|instruction\(14),
	datad => \U8|Mux6~1_combout\,
	combout => \U8|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y12_N6
\U8|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~5_combout\ = (\U5|instruction\(13) & (!\U8|Mux6~4_combout\ & (\U5|instruction\(12) $ (!\U5|instruction\(11))))) # (!\U5|instruction\(13) & (((!\U5|instruction\(12) & !\U5|instruction\(11))) # (!\U8|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(11),
	datad => \U8|Mux6~4_combout\,
	combout => \U8|Mux6~5_combout\);

-- Location: LCCOMB_X22_Y12_N0
\U8|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~6_combout\ = (\U5|instruction\(15) & (((\U10|data_latch\(1) & \U8|Mux6~5_combout\)))) # (!\U5|instruction\(15) & (\U8|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U8|Mux6~4_combout\,
	datac => \U10|data_latch\(1),
	datad => \U8|Mux6~5_combout\,
	combout => \U8|Mux6~6_combout\);

-- Location: FF_X22_Y12_N1
\U8|alu_result_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(1));

-- Location: LCCOMB_X24_Y13_N16
\U10|data_latch[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[1]~2_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[1]~28_combout\))) # (!\U14|dbfbin_latch~q\ & (\U8|alu_result_latch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(1),
	datad => \data_out[1]~28_combout\,
	combout => \U10|data_latch[1]~2_combout\);

-- Location: LCCOMB_X24_Y13_N2
\U10|data_latch[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(1) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[1]~2_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch[1]~2_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(1));

-- Location: LCCOMB_X24_Y15_N26
\U8|Add2|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~1_combout\ = \U10|data_latch\(1) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(1),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~1_combout\);

-- Location: LCCOMB_X24_Y15_N6
\U8|Add2|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[3]~6_combout\ = (\data_out[2]~35_combout\ & ((\U8|Add2|auto_generated|_~2_combout\ & (\U8|Add2|auto_generated|result_int[2]~5\ & VCC)) # (!\U8|Add2|auto_generated|_~2_combout\ & 
-- (!\U8|Add2|auto_generated|result_int[2]~5\)))) # (!\data_out[2]~35_combout\ & ((\U8|Add2|auto_generated|_~2_combout\ & (!\U8|Add2|auto_generated|result_int[2]~5\)) # (!\U8|Add2|auto_generated|_~2_combout\ & ((\U8|Add2|auto_generated|result_int[2]~5\) # 
-- (GND)))))
-- \U8|Add2|auto_generated|result_int[3]~7\ = CARRY((\data_out[2]~35_combout\ & (!\U8|Add2|auto_generated|_~2_combout\ & !\U8|Add2|auto_generated|result_int[2]~5\)) # (!\data_out[2]~35_combout\ & ((!\U8|Add2|auto_generated|result_int[2]~5\) # 
-- (!\U8|Add2|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U8|Add2|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[2]~5\,
	combout => \U8|Add2|auto_generated|result_int[3]~6_combout\,
	cout => \U8|Add2|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X21_Y11_N6
\U8|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~3_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & ((\U8|Add1~4_combout\))) # (!\U5|instruction\(12) & (\U10|data_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U8|Add1~4_combout\,
	combout => \U8|Mux5~3_combout\);

-- Location: LCCOMB_X21_Y11_N22
\U8|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~4_combout\ = (\U5|instruction\(13) & ((\U8|Mux5~3_combout\ & (\U8|result~10_combout\)) # (!\U8|Mux5~3_combout\ & ((\U8|Add2|auto_generated|result_int[3]~6_combout\))))) # (!\U5|instruction\(13) & (((\U8|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U8|result~10_combout\,
	datac => \U8|Add2|auto_generated|result_int[3]~6_combout\,
	datad => \U8|Mux5~3_combout\,
	combout => \U8|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y14_N0
\U8|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~5_combout\ = (\U5|instruction\(15) & ((\U8|Mux5~2_combout\) # ((\U5|instruction\(14))))) # (!\U5|instruction\(15) & (((\U8|Mux5~4_combout\ & !\U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux5~2_combout\,
	datab => \U5|instruction\(15),
	datac => \U8|Mux5~4_combout\,
	datad => \U5|instruction\(14),
	combout => \U8|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y14_N26
\U8|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~6_combout\ = (\U10|data_latch\(2) & (!\U5|instruction\(12) & (!\U5|instruction\(13) & !\U5|instruction\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U5|instruction\(11),
	combout => \U8|Mux5~6_combout\);

-- Location: LCCOMB_X21_Y14_N16
\U8|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~5_combout\ = (\U5|instruction\(11) & ((!\data_out[2]~35_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(2)) # (\data_out[2]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U10|data_latch\(2),
	datad => \data_out[2]~35_combout\,
	combout => \U8|result~5_combout\);

-- Location: LCCOMB_X21_Y14_N14
\U8|result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~9_combout\ = (\U5|instruction\(11) & (((\U10|data_latch\(2) & \data_out[2]~35_combout\)))) # (!\U5|instruction\(11) & (\data_out[3]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[3]~42_combout\,
	datac => \U10|data_latch\(2),
	datad => \data_out[2]~35_combout\,
	combout => \U8|result~9_combout\);

-- Location: LCCOMB_X25_Y13_N26
\U8|result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~6_combout\ = (\U10|data_latch\(0) & \data_out[2]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(0),
	datad => \data_out[2]~35_combout\,
	combout => \U8|result~6_combout\);

-- Location: LCCOMB_X25_Y13_N2
\U8|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~6_combout\ = (\U8|result~6_combout\ & ((\data_out[1]~28_combout\ & (\U8|Add5~5\ & VCC)) # (!\data_out[1]~28_combout\ & (!\U8|Add5~5\)))) # (!\U8|result~6_combout\ & ((\data_out[1]~28_combout\ & (!\U8|Add5~5\)) # (!\data_out[1]~28_combout\ & 
-- ((\U8|Add5~5\) # (GND)))))
-- \U8|Add5~7\ = CARRY((\U8|result~6_combout\ & (!\data_out[1]~28_combout\ & !\U8|Add5~5\)) # (!\U8|result~6_combout\ & ((!\U8|Add5~5\) # (!\data_out[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~6_combout\,
	datab => \data_out[1]~28_combout\,
	datad => VCC,
	cin => \U8|Add5~5\,
	combout => \U8|Add5~6_combout\,
	cout => \U8|Add5~7\);

-- Location: LCCOMB_X25_Y13_N24
\U8|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~16_combout\ = (\U10|data_latch\(1) & (((\U8|Add5~6_combout\)))) # (!\U10|data_latch\(1) & (\data_out[2]~35_combout\ & (\U10|data_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U10|data_latch\(0),
	datac => \U10|data_latch\(1),
	datad => \U8|Add5~6_combout\,
	combout => \U8|Add5~16_combout\);

-- Location: LCCOMB_X25_Y13_N12
\U8|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~4_combout\ = (\data_out[0]~21_combout\ & (\U8|Add5~16_combout\ $ (VCC))) # (!\data_out[0]~21_combout\ & (\U8|Add5~16_combout\ & VCC))
-- \U8|Add6~5\ = CARRY((\data_out[0]~21_combout\ & \U8|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~21_combout\,
	datab => \U8|Add5~16_combout\,
	datad => VCC,
	combout => \U8|Add6~4_combout\,
	cout => \U8|Add6~5\);

-- Location: LCCOMB_X24_Y14_N14
\U8|result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~7_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(2) & (\U8|Add6~4_combout\)) # (!\U10|data_latch\(2) & ((\U8|Add5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~4_combout\,
	datab => \U5|instruction\(11),
	datac => \U8|Add5~16_combout\,
	datad => \U10|data_latch\(2),
	combout => \U8|result~7_combout\);

-- Location: LCCOMB_X24_Y14_N8
\U8|result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~8_combout\ = (\U8|result~7_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(2) $ (\data_out[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(2),
	datac => \U8|result~7_combout\,
	datad => \data_out[2]~35_combout\,
	combout => \U8|result~8_combout\);

-- Location: LCCOMB_X22_Y14_N8
\U8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~0_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|result~8_combout\))) # (!\U5|instruction\(13) & (\U8|result~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~9_combout\,
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U8|result~8_combout\,
	combout => \U8|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\U8|Add18~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~19_combout\ = (\data_out[2]~35_combout\ & (!\U8|Add18~14\ & VCC)) # (!\data_out[2]~35_combout\ & (\U8|Add18~14\ $ (GND)))
-- \U8|Add18~20\ = CARRY((!\data_out[2]~35_combout\ & !\U8|Add18~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_out[2]~35_combout\,
	datad => VCC,
	cin => \U8|Add18~14\,
	combout => \U8|Add18~19_combout\,
	cout => \U8|Add18~20\);

-- Location: LCCOMB_X21_Y12_N24
\U8|Add18~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~21_combout\ = (\U5|instruction\(11) & ((\U8|Add18~19_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \U8|Equal0~0_combout\,
	datad => \U8|Add18~19_combout\,
	combout => \U8|Add18~21_combout\);

-- Location: LCCOMB_X24_Y14_N4
\U8|Add18~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~45_combout\ = (\U10|data_latch\(3) & (((\U8|Add8~12_combout\)))) # (!\U10|data_latch\(3) & (\U10|data_latch\(2) & ((\U8|divided~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U8|Add8~12_combout\,
	datac => \U8|divided~3_combout\,
	datad => \U10|data_latch\(3),
	combout => \U8|Add18~45_combout\);

-- Location: LCCOMB_X24_Y15_N30
\U8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal0~1_combout\ = (!\U10|data_latch\(3) & !\U10|data_latch\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(3),
	datad => \U10|data_latch\(2),
	combout => \U8|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y14_N18
\U8|Add18~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~22_combout\ = (\U8|Equal0~1_combout\ & (\U8|Add14~4_combout\ & ((!\U8|LessThan2~1_combout\) # (!\U8|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~1_combout\,
	datab => \U8|LessThan2~0_combout\,
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|Add14~4_combout\,
	combout => \U8|Add18~22_combout\);

-- Location: LCCOMB_X24_Y14_N12
\U8|Add18~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~23_combout\ = (\U8|Add18~21_combout\) # ((\U8|Add18~4_combout\ & ((\U8|Add18~45_combout\) # (\U8|Add18~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~4_combout\,
	datab => \U8|Add18~21_combout\,
	datac => \U8|Add18~45_combout\,
	datad => \U8|Add18~22_combout\,
	combout => \U8|Add18~23_combout\);

-- Location: LCCOMB_X23_Y14_N22
\U8|Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add17~4_combout\ = (\U8|Add17~3\ & ((((\U8|Add14~4_combout\ & !\U8|LessThan2~2_combout\))))) # (!\U8|Add17~3\ & (((\U8|Add14~4_combout\ & !\U8|LessThan2~2_combout\)) # (GND)))
-- \U8|Add17~5\ = CARRY(((\U8|Add14~4_combout\ & !\U8|LessThan2~2_combout\)) # (!\U8|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add14~4_combout\,
	datab => \U8|LessThan2~2_combout\,
	datad => VCC,
	cin => \U8|Add17~3\,
	combout => \U8|Add17~4_combout\,
	cout => \U8|Add17~5\);

-- Location: LCCOMB_X22_Y14_N2
\U8|Add18~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~24_combout\ = (\U8|Add18~23_combout\) # ((\U8|Add18~9_combout\ & \U8|Add17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~9_combout\,
	datac => \U8|Add18~23_combout\,
	datad => \U8|Add17~4_combout\,
	combout => \U8|Add18~24_combout\);

-- Location: LCCOMB_X22_Y14_N16
\U8|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~1_combout\ = (\U5|instruction\(12) & ((\U8|Mux5~0_combout\ & ((\U8|Add18~24_combout\))) # (!\U8|Mux5~0_combout\ & (\U8|result~5_combout\)))) # (!\U5|instruction\(12) & (((\U8|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~5_combout\,
	datab => \U5|instruction\(12),
	datac => \U8|Mux5~0_combout\,
	datad => \U8|Add18~24_combout\,
	combout => \U8|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y14_N30
\U8|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~7_combout\ = (\U5|instruction\(14) & ((\U8|Mux5~5_combout\ & (\U8|Mux5~6_combout\)) # (!\U8|Mux5~5_combout\ & ((\U8|Mux5~1_combout\))))) # (!\U5|instruction\(14) & (\U8|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U8|Mux5~5_combout\,
	datac => \U8|Mux5~6_combout\,
	datad => \U8|Mux5~1_combout\,
	combout => \U8|Mux5~7_combout\);

-- Location: FF_X22_Y14_N31
\U8|alu_result_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(2));

-- Location: LCCOMB_X26_Y13_N24
\U10|data_latch[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[2]~3_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[2]~35_combout\))) # (!\U14|dbfbin_latch~q\ & (\U8|alu_result_latch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(2),
	datad => \data_out[2]~35_combout\,
	combout => \U10|data_latch[2]~3_combout\);

-- Location: LCCOMB_X26_Y13_N4
\U10|data_latch[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(2) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[2]~3_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(2),
	datac => \U10|data_latch[2]~3_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(2));

-- Location: LCCOMB_X24_Y15_N24
\U8|Add2|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~2_combout\ = \U5|instruction\(11) $ (\U10|data_latch\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datad => \U10|data_latch\(2),
	combout => \U8|Add2|auto_generated|_~2_combout\);

-- Location: LCCOMB_X24_Y15_N8
\U8|Add2|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[4]~8_combout\ = ((\U8|Add2|auto_generated|_~3_combout\ $ (\data_out[3]~42_combout\ $ (!\U8|Add2|auto_generated|result_int[3]~7\)))) # (GND)
-- \U8|Add2|auto_generated|result_int[4]~9\ = CARRY((\U8|Add2|auto_generated|_~3_combout\ & ((\data_out[3]~42_combout\) # (!\U8|Add2|auto_generated|result_int[3]~7\))) # (!\U8|Add2|auto_generated|_~3_combout\ & (\data_out[3]~42_combout\ & 
-- !\U8|Add2|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~3_combout\,
	datab => \data_out[3]~42_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[3]~7\,
	combout => \U8|Add2|auto_generated|result_int[4]~8_combout\,
	cout => \U8|Add2|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X23_Y15_N18
\U8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~0_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & ((\U8|Add1~6_combout\))) # (!\U5|instruction\(12) & (\U10|data_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U5|instruction\(13),
	datac => \U8|Add1~6_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\U8|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~1_combout\ = (\U5|instruction\(13) & ((\U8|Mux4~0_combout\ & (\U8|Mux0~5_combout\)) # (!\U8|Mux4~0_combout\ & ((\U8|Add2|auto_generated|result_int[4]~8_combout\))))) # (!\U5|instruction\(13) & (((\U8|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~5_combout\,
	datab => \U5|instruction\(13),
	datac => \U8|Add2|auto_generated|result_int[4]~8_combout\,
	datad => \U8|Mux4~0_combout\,
	combout => \U8|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y12_N8
\U8|Add18~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~25_combout\ = (\data_out[3]~42_combout\ & ((\U8|Add18~20\) # (GND))) # (!\data_out[3]~42_combout\ & (!\U8|Add18~20\))
-- \U8|Add18~26\ = CARRY((\data_out[3]~42_combout\) # (!\U8|Add18~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~42_combout\,
	datad => VCC,
	cin => \U8|Add18~20\,
	combout => \U8|Add18~25_combout\,
	cout => \U8|Add18~26\);

-- Location: LCCOMB_X22_Y12_N14
\U8|Add18~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~27_combout\ = (\U5|instruction\(11) & ((\U8|Add18~25_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U8|Equal0~0_combout\,
	datad => \U8|Add18~25_combout\,
	combout => \U8|Add18~27_combout\);

-- Location: LCCOMB_X24_Y14_N26
\U8|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~7_combout\ = (\U5|instruction\(11) & ((!\data_out[3]~42_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(3)) # (\data_out[3]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(3),
	datad => \data_out[3]~42_combout\,
	combout => \U8|Mux0~7_combout\);

-- Location: LCCOMB_X22_Y15_N30
\U8|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~6_combout\ = (\U5|instruction\(11) & (\U10|data_latch\(3) & (\data_out[3]~42_combout\))) # (!\U5|instruction\(11) & (((\data_out[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(3),
	datac => \data_out[3]~42_combout\,
	datad => \data_out[4]~49_combout\,
	combout => \U8|Mux0~6_combout\);

-- Location: LCCOMB_X26_Y12_N12
\U8|result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~11_combout\ = (\U10|data_latch\(0) & \data_out[3]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datad => \data_out[3]~42_combout\,
	combout => \U8|result~11_combout\);

-- Location: LCCOMB_X25_Y13_N4
\U8|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~8_combout\ = ((\data_out[2]~35_combout\ $ (\U8|result~11_combout\ $ (!\U8|Add5~7\)))) # (GND)
-- \U8|Add5~9\ = CARRY((\data_out[2]~35_combout\ & ((\U8|result~11_combout\) # (!\U8|Add5~7\))) # (!\data_out[2]~35_combout\ & (\U8|result~11_combout\ & !\U8|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U8|result~11_combout\,
	datad => VCC,
	cin => \U8|Add5~7\,
	combout => \U8|Add5~8_combout\,
	cout => \U8|Add5~9\);

-- Location: LCCOMB_X25_Y13_N10
\U8|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~17_combout\ = (\U10|data_latch\(1) & (((\U8|Add5~8_combout\)))) # (!\U10|data_latch\(1) & (\U10|data_latch\(0) & ((\data_out[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U10|data_latch\(0),
	datac => \U8|Add5~8_combout\,
	datad => \data_out[3]~42_combout\,
	combout => \U8|Add5~17_combout\);

-- Location: LCCOMB_X25_Y13_N14
\U8|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~6_combout\ = (\U8|Add5~17_combout\ & ((\data_out[1]~28_combout\ & (\U8|Add6~5\ & VCC)) # (!\data_out[1]~28_combout\ & (!\U8|Add6~5\)))) # (!\U8|Add5~17_combout\ & ((\data_out[1]~28_combout\ & (!\U8|Add6~5\)) # (!\data_out[1]~28_combout\ & 
-- ((\U8|Add6~5\) # (GND)))))
-- \U8|Add6~7\ = CARRY((\U8|Add5~17_combout\ & (!\data_out[1]~28_combout\ & !\U8|Add6~5\)) # (!\U8|Add5~17_combout\ & ((!\U8|Add6~5\) # (!\data_out[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~17_combout\,
	datab => \data_out[1]~28_combout\,
	datad => VCC,
	cin => \U8|Add6~5\,
	combout => \U8|Add6~6_combout\,
	cout => \U8|Add6~7\);

-- Location: LCCOMB_X24_Y13_N12
\U8|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~8_combout\ = (\U10|data_latch\(2) & (\U8|Add6~6_combout\)) # (!\U10|data_latch\(2) & ((\U8|Add5~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(2),
	datac => \U8|Add6~6_combout\,
	datad => \U8|Add5~17_combout\,
	combout => \U8|Add6~8_combout\);

-- Location: LCCOMB_X24_Y13_N20
\U8|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~0_combout\ = (\U8|Add6~8_combout\ & (\data_out[0]~21_combout\ $ (VCC))) # (!\U8|Add6~8_combout\ & (\data_out[0]~21_combout\ & VCC))
-- \U8|Add7~1\ = CARRY((\U8|Add6~8_combout\ & \data_out[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~8_combout\,
	datab => \data_out[0]~21_combout\,
	datad => VCC,
	combout => \U8|Add7~0_combout\,
	cout => \U8|Add7~1\);

-- Location: LCCOMB_X24_Y13_N18
\U8|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~2_combout\ = (\U5|instruction\(11) & (((\U10|data_latch\(3) & \U8|Add7~0_combout\)))) # (!\U5|instruction\(11) & (\data_out[3]~42_combout\ $ ((\U10|data_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~42_combout\,
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(3),
	datad => \U8|Add7~0_combout\,
	combout => \U8|Add7~2_combout\);

-- Location: LCCOMB_X23_Y14_N2
\U8|Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~3_combout\ = (\U8|Add7~2_combout\) # ((\U5|instruction\(11) & (!\U10|data_latch\(3) & \U8|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(3),
	datac => \U8|Add6~8_combout\,
	datad => \U8|Add7~2_combout\,
	combout => \U8|Add7~3_combout\);

-- Location: LCCOMB_X23_Y14_N28
\U8|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~2_combout\ = (\U5|instruction\(12) & (\U5|instruction\(13))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|Add7~3_combout\))) # (!\U5|instruction\(13) & (\U8|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(13),
	datac => \U8|Mux0~6_combout\,
	datad => \U8|Add7~3_combout\,
	combout => \U8|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y14_N28
\U8|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~3_combout\ = (\U8|Mux4~2_combout\ & (((!\U8|LessThan2~1_combout\) # (!\U8|LessThan2~0_combout\)))) # (!\U8|Mux4~2_combout\ & (\U8|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~7_combout\,
	datab => \U8|LessThan2~0_combout\,
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|Mux4~2_combout\,
	combout => \U8|Mux4~3_combout\);

-- Location: LCCOMB_X24_Y14_N6
\U8|Add18~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~28_combout\ = (\U10|data_latch\(3) & (\U8|Add8~13_combout\)) # (!\U10|data_latch\(3) & (((\U8|Add11~6_combout\ & !\U8|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U8|Add8~13_combout\,
	datac => \U8|Add11~6_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|Add18~28_combout\);

-- Location: LCCOMB_X23_Y14_N10
\U8|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~4_combout\ = (\U8|Equal0~1_combout\ & (((\U8|Add14~6_combout\ & \U8|Mux4~3_combout\)))) # (!\U8|Equal0~1_combout\ & (\U8|Add18~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~28_combout\,
	datab => \U8|Equal0~1_combout\,
	datac => \U8|Add14~6_combout\,
	datad => \U8|Mux4~3_combout\,
	combout => \U8|Mux4~4_combout\);

-- Location: LCCOMB_X23_Y14_N16
\U8|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~5_combout\ = (\U5|instruction\(12) & (((\U8|Add18~4_combout\ & \U8|Mux4~4_combout\)) # (!\U8|Mux4~2_combout\))) # (!\U5|instruction\(12) & (\U8|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Mux4~2_combout\,
	datac => \U8|Add18~4_combout\,
	datad => \U8|Mux4~4_combout\,
	combout => \U8|Mux4~5_combout\);

-- Location: LCCOMB_X23_Y14_N30
\U8|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~6_combout\ = (\U8|Mux4~2_combout\ & ((\U8|Add18~27_combout\) # ((\U8|Mux4~5_combout\)))) # (!\U8|Mux4~2_combout\ & (((\U8|Mux4~3_combout\ & \U8|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~27_combout\,
	datab => \U8|Mux4~3_combout\,
	datac => \U8|Mux4~2_combout\,
	datad => \U8|Mux4~5_combout\,
	combout => \U8|Mux4~6_combout\);

-- Location: LCCOMB_X23_Y14_N4
\U8|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~7_combout\ = (\U8|Add18~9_combout\ & \U8|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U8|Add18~9_combout\,
	datad => \U8|Mux4~2_combout\,
	combout => \U8|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y14_N24
\U8|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add17~6_combout\ = \U8|Add17~5\ $ (((\U8|LessThan2~2_combout\) # (!\U8|Add14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|LessThan2~2_combout\,
	datad => \U8|Add14~6_combout\,
	cin => \U8|Add17~5\,
	combout => \U8|Add17~6_combout\);

-- Location: LCCOMB_X23_Y14_N14
\U8|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~8_combout\ = (\U5|instruction\(14) & ((\U5|instruction\(15)) # ((\U8|Mux4~7_combout\ & \U8|Add17~6_combout\)))) # (!\U5|instruction\(14) & (!\U5|instruction\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux4~7_combout\,
	datad => \U8|Add17~6_combout\,
	combout => \U8|Mux4~8_combout\);

-- Location: LCCOMB_X23_Y14_N0
\U8|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~9_combout\ = (\U5|instruction\(14) & (((\U8|Mux4~6_combout\) # (\U8|Mux4~8_combout\)))) # (!\U5|instruction\(14) & (\U8|Mux4~1_combout\ & ((\U8|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux4~1_combout\,
	datab => \U5|instruction\(14),
	datac => \U8|Mux4~6_combout\,
	datad => \U8|Mux4~8_combout\,
	combout => \U8|Mux4~9_combout\);

-- Location: LCCOMB_X23_Y14_N6
\U8|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~10_combout\ = (\U5|instruction\(13) & (!\U8|Mux4~9_combout\ & (\U5|instruction\(11) $ (!\U5|instruction\(12))))) # (!\U5|instruction\(13) & (((!\U5|instruction\(11) & !\U5|instruction\(12))) # (!\U8|Mux4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U8|Mux4~9_combout\,
	combout => \U8|Mux4~10_combout\);

-- Location: LCCOMB_X23_Y14_N8
\U8|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~11_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(3) & ((\U8|Mux4~10_combout\)))) # (!\U5|instruction\(15) & (((\U8|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U8|Mux4~9_combout\,
	datac => \U5|instruction\(15),
	datad => \U8|Mux4~10_combout\,
	combout => \U8|Mux4~11_combout\);

-- Location: FF_X23_Y14_N9
\U8|alu_result_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(3));

-- Location: LCCOMB_X26_Y13_N18
\U10|data_latch[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[3]~4_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[3]~42_combout\))) # (!\U14|dbfbin_latch~q\ & (\U8|alu_result_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(3),
	datad => \data_out[3]~42_combout\,
	combout => \U10|data_latch[3]~4_combout\);

-- Location: LCCOMB_X26_Y13_N30
\U10|data_latch[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(3) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[3]~4_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datac => \U10|data_latch[3]~4_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(3));

-- Location: LCCOMB_X24_Y15_N22
\U8|Add2|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~3_combout\ = \U10|data_latch\(3) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(3),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~3_combout\);

-- Location: LCCOMB_X24_Y15_N10
\U8|Add2|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[5]~10_combout\ = (\U8|Add2|auto_generated|_~4_combout\ & ((\data_out[4]~49_combout\ & (\U8|Add2|auto_generated|result_int[4]~9\ & VCC)) # (!\data_out[4]~49_combout\ & (!\U8|Add2|auto_generated|result_int[4]~9\)))) # 
-- (!\U8|Add2|auto_generated|_~4_combout\ & ((\data_out[4]~49_combout\ & (!\U8|Add2|auto_generated|result_int[4]~9\)) # (!\data_out[4]~49_combout\ & ((\U8|Add2|auto_generated|result_int[4]~9\) # (GND)))))
-- \U8|Add2|auto_generated|result_int[5]~11\ = CARRY((\U8|Add2|auto_generated|_~4_combout\ & (!\data_out[4]~49_combout\ & !\U8|Add2|auto_generated|result_int[4]~9\)) # (!\U8|Add2|auto_generated|_~4_combout\ & ((!\U8|Add2|auto_generated|result_int[4]~9\) # 
-- (!\data_out[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~4_combout\,
	datab => \data_out[4]~49_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[4]~9\,
	combout => \U8|Add2|auto_generated|result_int[5]~10_combout\,
	cout => \U8|Add2|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X22_Y13_N26
\U8|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~4_combout\ = (\U8|Mux3~3_combout\ & ((\U8|result~14_combout\) # ((!\U5|instruction\(13))))) # (!\U8|Mux3~3_combout\ & (((\U8|Add2|auto_generated|result_int[5]~10_combout\ & \U5|instruction\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~14_combout\,
	datab => \U8|Mux3~3_combout\,
	datac => \U8|Add2|auto_generated|result_int[5]~10_combout\,
	datad => \U5|instruction\(13),
	combout => \U8|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y13_N16
\U8|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~2_combout\ = (\U10|data_latch\(4) & ((\U5|instruction\(12) $ (!\U5|instruction\(11))) # (!\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(13),
	combout => \U8|Mux3~2_combout\);

-- Location: LCCOMB_X22_Y13_N0
\U8|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~5_combout\ = (\U5|instruction\(14) & (\U5|instruction\(15))) # (!\U5|instruction\(14) & ((\U5|instruction\(15) & ((\U8|Mux3~2_combout\))) # (!\U5|instruction\(15) & (\U8|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux3~4_combout\,
	datad => \U8|Mux3~2_combout\,
	combout => \U8|Mux3~5_combout\);

-- Location: LCCOMB_X23_Y15_N14
\U8|result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~12_combout\ = (\U5|instruction\(11) & ((!\data_out[4]~49_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(4)) # (\data_out[4]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \U5|instruction\(11),
	datac => \data_out[4]~49_combout\,
	combout => \U8|result~12_combout\);

-- Location: LCCOMB_X21_Y12_N10
\U8|Add18~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~29_combout\ = (\data_out[4]~49_combout\ & (!\U8|Add18~26\ & VCC)) # (!\data_out[4]~49_combout\ & (\U8|Add18~26\ $ (GND)))
-- \U8|Add18~30\ = CARRY((!\data_out[4]~49_combout\ & !\U8|Add18~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_out[4]~49_combout\,
	datad => VCC,
	cin => \U8|Add18~26\,
	combout => \U8|Add18~29_combout\,
	cout => \U8|Add18~30\);

-- Location: LCCOMB_X22_Y12_N24
\U8|Add18~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~31_combout\ = (\U5|instruction\(11) & ((\U8|Add18~29_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U8|Equal0~0_combout\,
	datad => \U8|Add18~29_combout\,
	combout => \U8|Add18~31_combout\);

-- Location: LCCOMB_X24_Y14_N16
\U8|Add18~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~32_combout\ = (\U5|instruction\(11)) # ((\U10|data_latch\(3) & \U8|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U5|instruction\(11),
	datac => \U8|LessThan0~2_combout\,
	combout => \U8|Add18~32_combout\);

-- Location: LCCOMB_X24_Y14_N30
\U8|Add18~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~33_combout\ = (!\U8|Add18~32_combout\ & (((\U10|data_latch\(3)) # (!\U8|LessThan1~4_combout\)) # (!\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U8|Add18~32_combout\,
	datac => \U10|data_latch\(3),
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|Add18~33_combout\);

-- Location: LCCOMB_X24_Y15_N20
\U8|div8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~5_combout\ = (\U10|data_latch\(1) & (\U8|Equal0~1_combout\ & (\U8|LessThan2~0_combout\ & \U8|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U8|Equal0~1_combout\,
	datac => \U8|LessThan2~0_combout\,
	datad => \U8|LessThan2~1_combout\,
	combout => \U8|div8~5_combout\);

-- Location: LCCOMB_X24_Y14_N20
\U8|div8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~3_combout\ = (!\U10|data_latch\(1) & (!\U10|data_latch\(2) & !\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U10|data_latch\(2),
	datac => \U10|data_latch\(3),
	combout => \U8|div8~3_combout\);

-- Location: LCCOMB_X26_Y14_N10
\U8|div8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~4_combout\ = (!\U8|Equal0~0_combout\ & (\U8|div8~3_combout\ & (\U8|LessThan3~1_combout\ & \U8|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \U8|div8~3_combout\,
	datac => \U8|LessThan3~1_combout\,
	datad => \U8|LessThan3~0_combout\,
	combout => \U8|div8~4_combout\);

-- Location: LCCOMB_X23_Y15_N4
\U8|Add18~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~34_combout\ = (\U8|Add18~31_combout\) # ((\U8|Add18~33_combout\ & (!\U8|div8~5_combout\ & !\U8|div8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~31_combout\,
	datab => \U8|Add18~33_combout\,
	datac => \U8|div8~5_combout\,
	datad => \U8|div8~4_combout\,
	combout => \U8|Add18~34_combout\);

-- Location: LCCOMB_X23_Y15_N8
\U8|result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~13_combout\ = (\U5|instruction\(11) & (\data_out[4]~49_combout\ & ((\U10|data_latch\(4))))) # (!\U5|instruction\(11) & (((\data_out[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~49_combout\,
	datab => \data_out[5]~56_combout\,
	datac => \U10|data_latch\(4),
	datad => \U5|instruction\(11),
	combout => \U8|result~13_combout\);

-- Location: LCCOMB_X25_Y13_N6
\U8|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~10_combout\ = (\data_out[3]~42_combout\ & (!\U8|Add5~9\)) # (!\data_out[3]~42_combout\ & ((\U8|Add5~9\) # (GND)))
-- \U8|Add5~11\ = CARRY((!\U8|Add5~9\) # (!\data_out[3]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~42_combout\,
	datad => VCC,
	cin => \U8|Add5~9\,
	combout => \U8|Add5~10_combout\,
	cout => \U8|Add5~11\);

-- Location: LCCOMB_X25_Y13_N28
\U8|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~12_combout\ = (\U10|data_latch\(1) & \U8|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(1),
	datad => \U8|Add5~10_combout\,
	combout => \U8|Add5~12_combout\);

-- Location: LCCOMB_X25_Y13_N16
\U8|Add6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~9_combout\ = ((\data_out[2]~35_combout\ $ (\U8|Add5~12_combout\ $ (!\U8|Add6~7\)))) # (GND)
-- \U8|Add6~10\ = CARRY((\data_out[2]~35_combout\ & ((\U8|Add5~12_combout\) # (!\U8|Add6~7\))) # (!\data_out[2]~35_combout\ & (\U8|Add5~12_combout\ & !\U8|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~35_combout\,
	datab => \U8|Add5~12_combout\,
	datad => VCC,
	cin => \U8|Add6~7\,
	combout => \U8|Add6~9_combout\,
	cout => \U8|Add6~10\);

-- Location: LCCOMB_X24_Y13_N4
\U8|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~16_combout\ = (\U10|data_latch\(2) & (((\U8|Add6~9_combout\)))) # (!\U10|data_latch\(2) & (\U8|Add5~10_combout\ & (\U10|data_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~10_combout\,
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(2),
	datad => \U8|Add6~9_combout\,
	combout => \U8|Add6~16_combout\);

-- Location: LCCOMB_X24_Y13_N22
\U8|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~4_combout\ = (\data_out[1]~28_combout\ & ((\U8|Add6~16_combout\ & (\U8|Add7~1\ & VCC)) # (!\U8|Add6~16_combout\ & (!\U8|Add7~1\)))) # (!\data_out[1]~28_combout\ & ((\U8|Add6~16_combout\ & (!\U8|Add7~1\)) # (!\U8|Add6~16_combout\ & ((\U8|Add7~1\) 
-- # (GND)))))
-- \U8|Add7~5\ = CARRY((\data_out[1]~28_combout\ & (!\U8|Add6~16_combout\ & !\U8|Add7~1\)) # (!\data_out[1]~28_combout\ & ((!\U8|Add7~1\) # (!\U8|Add6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~28_combout\,
	datab => \U8|Add6~16_combout\,
	datad => VCC,
	cin => \U8|Add7~1\,
	combout => \U8|Add7~4_combout\,
	cout => \U8|Add7~5\);

-- Location: LCCOMB_X23_Y15_N0
\U8|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~6_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3) & (\U8|Add7~4_combout\)) # (!\U10|data_latch\(3) & ((\U8|Add6~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U5|instruction\(11),
	datac => \U8|Add7~4_combout\,
	datad => \U8|Add6~16_combout\,
	combout => \U8|Add7~6_combout\);

-- Location: LCCOMB_X23_Y15_N6
\U8|Add7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~7_combout\ = (\U8|Add7~6_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(4) $ (\data_out[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \U5|instruction\(11),
	datac => \data_out[4]~49_combout\,
	datad => \U8|Add7~6_combout\,
	combout => \U8|Add7~7_combout\);

-- Location: LCCOMB_X23_Y15_N2
\U8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~0_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|Add7~7_combout\))) # (!\U5|instruction\(13) & (\U8|result~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|result~13_combout\,
	datac => \U5|instruction\(13),
	datad => \U8|Add7~7_combout\,
	combout => \U8|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y15_N10
\U8|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~1_combout\ = (\U5|instruction\(12) & ((\U8|Mux3~0_combout\ & ((\U8|Add18~34_combout\))) # (!\U8|Mux3~0_combout\ & (\U8|result~12_combout\)))) # (!\U5|instruction\(12) & (((\U8|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|result~12_combout\,
	datac => \U8|Add18~34_combout\,
	datad => \U8|Mux3~0_combout\,
	combout => \U8|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\U8|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~7_combout\ = (\U8|Mux3~5_combout\ & ((\U8|Mux3~6_combout\) # ((!\U5|instruction\(14))))) # (!\U8|Mux3~5_combout\ & (((\U5|instruction\(14) & \U8|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux3~6_combout\,
	datab => \U8|Mux3~5_combout\,
	datac => \U5|instruction\(14),
	datad => \U8|Mux3~1_combout\,
	combout => \U8|Mux3~7_combout\);

-- Location: FF_X23_Y15_N25
\U8|alu_result_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(4));

-- Location: LCCOMB_X26_Y10_N10
\U10|data_latch[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[4]~5_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[4]~45_combout\) # ((\data_out[4]~71_combout\)))) # (!\U14|dbfbin_latch~q\ & (((\U8|alu_result_latch\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~45_combout\,
	datab => \U14|dbfbin_latch~q\,
	datac => \data_out[4]~71_combout\,
	datad => \U8|alu_result_latch\(4),
	combout => \U10|data_latch[4]~5_combout\);

-- Location: LCCOMB_X26_Y10_N16
\U10|data_latch[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(4) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[4]~5_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(4),
	datac => \U10|data_latch[4]~5_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(4));

-- Location: LCCOMB_X23_Y15_N16
\U8|Add2|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~4_combout\ = \U10|data_latch\(4) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datac => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~4_combout\);

-- Location: LCCOMB_X24_Y15_N12
\U8|Add2|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[6]~12_combout\ = ((\data_out[5]~56_combout\ $ (\U8|Add2|auto_generated|_~5_combout\ $ (!\U8|Add2|auto_generated|result_int[5]~11\)))) # (GND)
-- \U8|Add2|auto_generated|result_int[6]~13\ = CARRY((\data_out[5]~56_combout\ & ((\U8|Add2|auto_generated|_~5_combout\) # (!\U8|Add2|auto_generated|result_int[5]~11\))) # (!\data_out[5]~56_combout\ & (\U8|Add2|auto_generated|_~5_combout\ & 
-- !\U8|Add2|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~56_combout\,
	datab => \U8|Add2|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[5]~11\,
	combout => \U8|Add2|auto_generated|result_int[6]~12_combout\,
	cout => \U8|Add2|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X24_Y12_N20
\U8|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~3_combout\ = (\U8|Mux2~2_combout\ & ((\U8|Mux0~10_combout\) # ((!\U5|instruction\(13))))) # (!\U8|Mux2~2_combout\ & (((\U5|instruction\(13) & \U8|Add2|auto_generated|result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~10_combout\,
	datab => \U8|Mux2~2_combout\,
	datac => \U5|instruction\(13),
	datad => \U8|Add2|auto_generated|result_int[6]~12_combout\,
	combout => \U8|Mux2~3_combout\);

-- Location: LCCOMB_X24_Y12_N22
\U8|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~8_combout\ = (\data_out[5]~56_combout\ & (!\U5|instruction\(11))) # (!\data_out[5]~56_combout\ & ((\U5|instruction\(11)) # (\U10|data_latch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~56_combout\,
	datab => \U5|instruction\(11),
	datad => \U10|data_latch\(5),
	combout => \U8|Mux0~8_combout\);

-- Location: LCCOMB_X24_Y14_N2
\U8|Add18~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~35_combout\ = (\U10|data_latch\(1) & (\U8|LessThan1~4_combout\)) # (!\U10|data_latch\(1) & (((\U8|LessThan2~1_combout\ & \U8|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U8|LessThan1~4_combout\,
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|LessThan2~0_combout\,
	combout => \U8|Add18~35_combout\);

-- Location: LCCOMB_X24_Y14_N22
\U8|Add18~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~47_combout\ = (!\U10|data_latch\(3) & ((\U10|data_latch\(2) & (!\U8|LessThan0~2_combout\)) # (!\U10|data_latch\(2) & ((!\U8|Add18~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(3),
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|Add18~35_combout\,
	combout => \U8|Add18~47_combout\);

-- Location: LCCOMB_X21_Y12_N12
\U8|Add18~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~36_combout\ = (\data_out[5]~56_combout\ & ((\U8|Add18~30\) # (GND))) # (!\data_out[5]~56_combout\ & (!\U8|Add18~30\))
-- \U8|Add18~37\ = CARRY((\data_out[5]~56_combout\) # (!\U8|Add18~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_out[5]~56_combout\,
	datad => VCC,
	cin => \U8|Add18~30\,
	combout => \U8|Add18~36_combout\,
	cout => \U8|Add18~37\);

-- Location: LCCOMB_X24_Y12_N14
\U8|Add18~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~48_combout\ = (\U5|instruction\(11) & (((\U8|Add18~36_combout\)))) # (!\U5|instruction\(11) & ((\U8|Add18~47_combout\) # ((\U8|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~47_combout\,
	datab => \U8|Equal0~0_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add18~36_combout\,
	combout => \U8|Add18~48_combout\);

-- Location: LCCOMB_X24_Y12_N26
\U8|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~9_combout\ = (\U5|instruction\(11) & (((\data_out[5]~56_combout\ & \U10|data_latch\(5))))) # (!\U5|instruction\(11) & (\data_out[6]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \U5|instruction\(11),
	datac => \data_out[5]~56_combout\,
	datad => \U10|data_latch\(5),
	combout => \U8|Mux0~9_combout\);

-- Location: LCCOMB_X25_Y13_N8
\U8|Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~13_combout\ = !\U8|Add5~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U8|Add5~11\,
	combout => \U8|Add5~13_combout\);

-- Location: LCCOMB_X25_Y13_N22
\U8|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~15_combout\ = (\U10|data_latch\(1) & \U8|Add5~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(1),
	datac => \U8|Add5~13_combout\,
	combout => \U8|Add5~15_combout\);

-- Location: LCCOMB_X25_Y13_N18
\U8|Add6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~11_combout\ = (\U8|Add5~15_combout\ & ((\data_out[3]~42_combout\ & (\U8|Add6~10\ & VCC)) # (!\data_out[3]~42_combout\ & (!\U8|Add6~10\)))) # (!\U8|Add5~15_combout\ & ((\data_out[3]~42_combout\ & (!\U8|Add6~10\)) # (!\data_out[3]~42_combout\ & 
-- ((\U8|Add6~10\) # (GND)))))
-- \U8|Add6~12\ = CARRY((\U8|Add5~15_combout\ & (!\data_out[3]~42_combout\ & !\U8|Add6~10\)) # (!\U8|Add5~15_combout\ & ((!\U8|Add6~10\) # (!\data_out[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~15_combout\,
	datab => \data_out[3]~42_combout\,
	datad => VCC,
	cin => \U8|Add6~10\,
	combout => \U8|Add6~11_combout\,
	cout => \U8|Add6~12\);

-- Location: LCCOMB_X24_Y13_N10
\U8|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~17_combout\ = (\U10|data_latch\(2) & (((\U8|Add6~11_combout\)))) # (!\U10|data_latch\(2) & (\U10|data_latch\(1) & (\U8|Add5~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(1),
	datac => \U8|Add5~13_combout\,
	datad => \U8|Add6~11_combout\,
	combout => \U8|Add6~17_combout\);

-- Location: LCCOMB_X24_Y13_N24
\U8|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~8_combout\ = ((\U8|Add6~17_combout\ $ (\data_out[2]~35_combout\ $ (!\U8|Add7~5\)))) # (GND)
-- \U8|Add7~9\ = CARRY((\U8|Add6~17_combout\ & ((\data_out[2]~35_combout\) # (!\U8|Add7~5\))) # (!\U8|Add6~17_combout\ & (\data_out[2]~35_combout\ & !\U8|Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~17_combout\,
	datab => \data_out[2]~35_combout\,
	datad => VCC,
	cin => \U8|Add7~5\,
	combout => \U8|Add7~8_combout\,
	cout => \U8|Add7~9\);

-- Location: LCCOMB_X24_Y13_N8
\U8|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~10_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3) & ((\U8|Add7~8_combout\))) # (!\U10|data_latch\(3) & (\U8|Add6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~17_combout\,
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(3),
	datad => \U8|Add7~8_combout\,
	combout => \U8|Add7~10_combout\);

-- Location: LCCOMB_X24_Y12_N28
\U8|Add7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~11_combout\ = (\U8|Add7~10_combout\) # ((!\U5|instruction\(11) & (\data_out[5]~56_combout\ $ (\U10|data_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~56_combout\,
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(5),
	datad => \U8|Add7~10_combout\,
	combout => \U8|Add7~11_combout\);

-- Location: LCCOMB_X24_Y12_N16
\U8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~0_combout\ = (\U5|instruction\(12) & (\U5|instruction\(13))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|Add7~11_combout\))) # (!\U5|instruction\(13) & (\U8|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(13),
	datac => \U8|Mux0~9_combout\,
	datad => \U8|Add7~11_combout\,
	combout => \U8|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\U8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~1_combout\ = (\U5|instruction\(12) & ((\U8|Mux2~0_combout\ & ((\U8|Add18~48_combout\))) # (!\U8|Mux2~0_combout\ & (\U8|Mux0~8_combout\)))) # (!\U5|instruction\(12) & (((\U8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Mux0~8_combout\,
	datac => \U8|Add18~48_combout\,
	datad => \U8|Mux2~0_combout\,
	combout => \U8|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y12_N18
\U8|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~4_combout\ = (\U5|instruction\(15) & (((\U5|instruction\(14))))) # (!\U5|instruction\(15) & ((\U5|instruction\(14) & ((\U8|Mux2~1_combout\))) # (!\U5|instruction\(14) & (\U8|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U8|Mux2~3_combout\,
	datac => \U5|instruction\(14),
	datad => \U8|Mux2~1_combout\,
	combout => \U8|Mux2~4_combout\);

-- Location: LCCOMB_X24_Y12_N24
\U8|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~5_combout\ = (\U5|instruction\(13) & (!\U8|Mux2~4_combout\ & (\U5|instruction\(12) $ (!\U5|instruction\(11))))) # (!\U5|instruction\(13) & (((!\U5|instruction\(12) & !\U5|instruction\(11))) # (!\U8|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(11),
	datad => \U8|Mux2~4_combout\,
	combout => \U8|Mux2~5_combout\);

-- Location: LCCOMB_X24_Y12_N12
\U8|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~6_combout\ = (\U5|instruction\(15) & (((\U10|data_latch\(5) & \U8|Mux2~5_combout\)))) # (!\U5|instruction\(15) & (\U8|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U8|Mux2~4_combout\,
	datac => \U10|data_latch\(5),
	datad => \U8|Mux2~5_combout\,
	combout => \U8|Mux2~6_combout\);

-- Location: FF_X24_Y12_N13
\U8|alu_result_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(5));

-- Location: LCCOMB_X26_Y11_N24
\U10|data_latch[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[5]~6_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[5]~52_combout\) # ((\data_out[5]~72_combout\)))) # (!\U14|dbfbin_latch~q\ & (((\U8|alu_result_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~52_combout\,
	datab => \U14|dbfbin_latch~q\,
	datac => \data_out[5]~72_combout\,
	datad => \U8|alu_result_latch\(5),
	combout => \U10|data_latch[5]~6_combout\);

-- Location: LCCOMB_X26_Y11_N2
\U10|data_latch[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(5) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch[5]~6_combout\)) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch[7]~1clkctrl_outclk\,
	datab => \U10|data_latch[5]~6_combout\,
	datad => \U10|data_latch\(5),
	combout => \U10|data_latch\(5));

-- Location: LCCOMB_X25_Y15_N28
\U8|Add2|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~5_combout\ = \U10|data_latch\(5) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(5),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~5_combout\);

-- Location: LCCOMB_X24_Y15_N14
\U8|Add2|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[7]~14_combout\ = (\data_out[6]~63_combout\ & ((\U8|Add2|auto_generated|_~6_combout\ & (\U8|Add2|auto_generated|result_int[6]~13\ & VCC)) # (!\U8|Add2|auto_generated|_~6_combout\ & 
-- (!\U8|Add2|auto_generated|result_int[6]~13\)))) # (!\data_out[6]~63_combout\ & ((\U8|Add2|auto_generated|_~6_combout\ & (!\U8|Add2|auto_generated|result_int[6]~13\)) # (!\U8|Add2|auto_generated|_~6_combout\ & ((\U8|Add2|auto_generated|result_int[6]~13\) # 
-- (GND)))))
-- \U8|Add2|auto_generated|result_int[7]~15\ = CARRY((\data_out[6]~63_combout\ & (!\U8|Add2|auto_generated|_~6_combout\ & !\U8|Add2|auto_generated|result_int[6]~13\)) # (!\data_out[6]~63_combout\ & ((!\U8|Add2|auto_generated|result_int[6]~13\) # 
-- (!\U8|Add2|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \U8|Add2|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[6]~13\,
	combout => \U8|Add2|auto_generated|result_int[7]~14_combout\,
	cout => \U8|Add2|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X23_Y13_N16
\U8|result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~17_combout\ = (\U5|instruction\(11) & ((\data_out[5]~56_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(6),
	datac => \U5|instruction\(11),
	datad => \data_out[5]~56_combout\,
	combout => \U8|result~17_combout\);

-- Location: LCCOMB_X23_Y13_N18
\U8|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~4_combout\ = (\U8|Mux1~3_combout\ & (((\U8|result~17_combout\) # (!\U5|instruction\(13))))) # (!\U8|Mux1~3_combout\ & (\U8|Add2|auto_generated|result_int[7]~14_combout\ & (\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux1~3_combout\,
	datab => \U8|Add2|auto_generated|result_int[7]~14_combout\,
	datac => \U5|instruction\(13),
	datad => \U8|result~17_combout\,
	combout => \U8|Mux1~4_combout\);

-- Location: LCCOMB_X23_Y13_N4
\U8|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~5_combout\ = (\U5|instruction\(14) & (((\U5|instruction\(15))))) # (!\U5|instruction\(14) & ((\U5|instruction\(15) & (\U8|Mux1~2_combout\)) # (!\U5|instruction\(15) & ((\U8|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux1~2_combout\,
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(15),
	datad => \U8|Mux1~4_combout\,
	combout => \U8|Mux1~5_combout\);

-- Location: LCCOMB_X21_Y12_N14
\U8|Add18~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~38_combout\ = (\data_out[6]~63_combout\ & (!\U8|Add18~37\ & VCC)) # (!\data_out[6]~63_combout\ & (\U8|Add18~37\ $ (GND)))
-- \U8|Add18~39\ = CARRY((!\data_out[6]~63_combout\ & !\U8|Add18~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datad => VCC,
	cin => \U8|Add18~37\,
	combout => \U8|Add18~38_combout\,
	cout => \U8|Add18~39\);

-- Location: LCCOMB_X26_Y13_N28
\U8|Add18~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~46_combout\ = \U10|data_latch\(1) $ (((\U10|data_latch\(3)) # (\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U10|data_latch\(2),
	datad => \U10|data_latch\(1),
	combout => \U8|Add18~46_combout\);

-- Location: LCCOMB_X24_Y14_N24
\U8|Add18~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~40_combout\ = (\U8|Add18~46_combout\ & (\U10|data_latch\(1) & (!\U8|LessThan0~2_combout\))) # (!\U8|Add18~46_combout\ & (!\U10|data_latch\(1) & ((!\U8|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~46_combout\,
	datab => \U10|data_latch\(1),
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|Add18~40_combout\);

-- Location: LCCOMB_X23_Y13_N20
\U8|Add18~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~41_combout\ = (\U5|instruction\(11) & (((\U8|Add18~38_combout\)))) # (!\U5|instruction\(11) & ((\U8|Equal0~0_combout\) # ((\U8|Add18~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U8|Equal0~0_combout\,
	datac => \U8|Add18~38_combout\,
	datad => \U8|Add18~40_combout\,
	combout => \U8|Add18~41_combout\);

-- Location: LCCOMB_X23_Y13_N14
\U8|result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~15_combout\ = (\U5|instruction\(11) & (!\data_out[6]~63_combout\)) # (!\U5|instruction\(11) & ((\data_out[6]~63_combout\) # (\U10|data_latch\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \data_out[6]~63_combout\,
	datad => \U10|data_latch\(6),
	combout => \U8|result~15_combout\);

-- Location: LCCOMB_X23_Y13_N28
\U8|result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~16_combout\ = (\U5|instruction\(11) & (((\data_out[6]~63_combout\ & \U10|data_latch\(6))))) # (!\U5|instruction\(11) & (\data_out[7]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[7]~70_combout\,
	datac => \data_out[6]~63_combout\,
	datad => \U10|data_latch\(6),
	combout => \U8|result~16_combout\);

-- Location: LCCOMB_X25_Y13_N20
\U8|Add6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~13_combout\ = !\U8|Add6~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U8|Add6~12\,
	combout => \U8|Add6~13_combout\);

-- Location: LCCOMB_X24_Y13_N14
\U8|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~15_combout\ = (\U10|data_latch\(2) & \U8|Add6~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(2),
	datac => \U8|Add6~13_combout\,
	combout => \U8|Add6~15_combout\);

-- Location: LCCOMB_X24_Y13_N26
\U8|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~12_combout\ = (\data_out[3]~42_combout\ & ((\U8|Add6~15_combout\ & (\U8|Add7~9\ & VCC)) # (!\U8|Add6~15_combout\ & (!\U8|Add7~9\)))) # (!\data_out[3]~42_combout\ & ((\U8|Add6~15_combout\ & (!\U8|Add7~9\)) # (!\U8|Add6~15_combout\ & ((\U8|Add7~9\) 
-- # (GND)))))
-- \U8|Add7~13\ = CARRY((\data_out[3]~42_combout\ & (!\U8|Add6~15_combout\ & !\U8|Add7~9\)) # (!\data_out[3]~42_combout\ & ((!\U8|Add7~9\) # (!\U8|Add6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~42_combout\,
	datab => \U8|Add6~15_combout\,
	datad => VCC,
	cin => \U8|Add7~9\,
	combout => \U8|Add7~12_combout\,
	cout => \U8|Add7~13\);

-- Location: LCCOMB_X23_Y13_N0
\U8|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~14_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3) & ((\U8|Add7~12_combout\))) # (!\U10|data_latch\(3) & (\U8|Add6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~15_combout\,
	datab => \U10|data_latch\(3),
	datac => \U5|instruction\(11),
	datad => \U8|Add7~12_combout\,
	combout => \U8|Add7~14_combout\);

-- Location: LCCOMB_X23_Y13_N6
\U8|Add7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~15_combout\ = (\U8|Add7~14_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(6) $ (\data_out[6]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(6),
	datab => \data_out[6]~63_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add7~14_combout\,
	combout => \U8|Add7~15_combout\);

-- Location: LCCOMB_X23_Y13_N10
\U8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~0_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|Add7~15_combout\))) # (!\U5|instruction\(13) & (\U8|result~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|result~16_combout\,
	datac => \U5|instruction\(13),
	datad => \U8|Add7~15_combout\,
	combout => \U8|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\U8|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~1_combout\ = (\U5|instruction\(12) & ((\U8|Mux1~0_combout\ & (\U8|Add18~41_combout\)) # (!\U8|Mux1~0_combout\ & ((\U8|result~15_combout\))))) # (!\U5|instruction\(12) & (((\U8|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Add18~41_combout\,
	datac => \U8|result~15_combout\,
	datad => \U8|Mux1~0_combout\,
	combout => \U8|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y13_N8
\U8|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~7_combout\ = (\U5|instruction\(14) & ((\U8|Mux1~5_combout\ & (\U8|Mux1~6_combout\)) # (!\U8|Mux1~5_combout\ & ((\U8|Mux1~1_combout\))))) # (!\U5|instruction\(14) & (((\U8|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux1~6_combout\,
	datab => \U5|instruction\(14),
	datac => \U8|Mux1~5_combout\,
	datad => \U8|Mux1~1_combout\,
	combout => \U8|Mux1~7_combout\);

-- Location: FF_X23_Y13_N9
\U8|alu_result_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(6));

-- Location: LCCOMB_X25_Y9_N10
\U12|grc_latch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[6]~feeder_combout\ = \data_out[6]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	combout => \U12|grc_latch[6]~feeder_combout\);

-- Location: FF_X25_Y9_N11
\U12|grc_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	d => \U12|grc_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(6));

-- Location: LCCOMB_X26_Y9_N26
\U12|gra_latch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[6]~feeder_combout\ = \data_out[6]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]~63_combout\,
	combout => \U12|gra_latch[6]~feeder_combout\);

-- Location: FF_X26_Y9_N27
\U12|gra_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(6));

-- Location: LCCOMB_X25_Y9_N16
\U12|grd_latch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[6]~feeder_combout\ = \data_out[6]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[6]~63_combout\,
	combout => \U12|grd_latch[6]~feeder_combout\);

-- Location: FF_X25_Y9_N17
\U12|grd_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(6));

-- Location: FF_X24_Y9_N25
\U12|grb_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[6]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(6));

-- Location: LCCOMB_X24_Y9_N24
\data_out[6]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~61_combout\ = (\data_out[4]~18_combout\ & (((\U12|grb_latch\(6)) # (\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & (\U12|grd_latch\(6) & ((!\data_out[4]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|grd_latch\(6),
	datab => \data_out[4]~18_combout\,
	datac => \U12|grb_latch\(6),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[6]~61_combout\);

-- Location: LCCOMB_X26_Y9_N8
\data_out[6]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~62_combout\ = (\data_out[4]~75_combout\ & ((\data_out[6]~61_combout\ & ((\U12|gra_latch\(6)))) # (!\data_out[6]~61_combout\ & (\U12|grc_latch\(6))))) # (!\data_out[4]~75_combout\ & (((\data_out[6]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|grc_latch\(6),
	datab => \data_out[4]~75_combout\,
	datac => \U12|gra_latch\(6),
	datad => \data_out[6]~61_combout\,
	combout => \data_out[6]~62_combout\);

-- Location: LCCOMB_X12_Y10_N28
\uart_inst|inst1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~7_combout\ = (\uart_inst|inst1|pro2:rcnt[1]~q\ & (\uart_inst|inst1|pro2:rcnt[2]~q\ & (!\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~7_combout\);

-- Location: LCCOMB_X12_Y10_N16
\uart_inst|inst1|pro2:rbufs[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[6]~0_combout\ = (\uart_inst|inst1|Decoder0~7_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~7_combout\ & ((\uart_inst|inst1|pro2:rbufs[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[6]~q\,
	datad => \uart_inst|inst1|Decoder0~7_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[6]~0_combout\);

-- Location: FF_X12_Y10_N17
\uart_inst|inst1|pro2:rbufs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[6]~q\);

-- Location: LCCOMB_X25_Y12_N24
\uart_inst|inst1|rbuf[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[6]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|pro2:rbufs[6]~q\,
	combout => \uart_inst|inst1|rbuf[6]~feeder_combout\);

-- Location: FF_X25_Y12_N25
\uart_inst|inst1|rbuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[6]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(6));

-- Location: LCCOMB_X25_Y12_N0
\uart_inst|inst3|data_latch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[6]~feeder_combout\ = \uart_inst|inst1|rbuf\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|rbuf\(6),
	combout => \uart_inst|inst3|data_latch[6]~feeder_combout\);

-- Location: FF_X25_Y12_N1
\uart_inst|inst3|data_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(6));

-- Location: LCCOMB_X26_Y9_N16
\data_out[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~60_combout\ = (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(6)) # ((\U14|dbfbout_latch~q\ & \U10|data_latch\(6))))) # (!\U14|enuart_latch~q\ & (\U14|dbfbout_latch~q\ & (\U10|data_latch\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enuart_latch~q\,
	datab => \U14|dbfbout_latch~q\,
	datac => \U10|data_latch\(6),
	datad => \uart_inst|inst3|data_latch\(6),
	combout => \data_out[6]~60_combout\);

-- Location: LCCOMB_X25_Y9_N14
\data_out[6]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~73_combout\ = (\data_out[6]~60_combout\) # ((\data_out[6]~62_combout\ & ((\U14|regrd1_latch~q\) # (\U14|regrd2_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datab => \U14|regrd2_latch~q\,
	datac => \data_out[6]~62_combout\,
	datad => \data_out[6]~60_combout\,
	combout => \data_out[6]~73_combout\);

-- Location: LCCOMB_X26_Y9_N12
\U10|data_latch[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[6]~7_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[6]~59_combout\) # ((\data_out[6]~73_combout\)))) # (!\U14|dbfbin_latch~q\ & (((\U8|alu_result_latch\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~59_combout\,
	datab => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(6),
	datad => \data_out[6]~73_combout\,
	combout => \U10|data_latch[6]~7_combout\);

-- Location: LCCOMB_X26_Y9_N22
\U10|data_latch[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(6) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[6]~7_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(6),
	datab => \U10|data_latch[6]~7_combout\,
	datac => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(6));

-- Location: LCCOMB_X24_Y15_N18
\U8|Add2|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~6_combout\ = \U10|data_latch\(6) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(6),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~6_combout\);

-- Location: LCCOMB_X24_Y15_N16
\U8|Add2|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[8]~16_combout\ = \data_out[7]~70_combout\ $ (\U8|Add2|auto_generated|result_int[7]~15\ $ (!\U8|Add2|auto_generated|_~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_out[7]~70_combout\,
	datad => \U8|Add2|auto_generated|_~7_combout\,
	cin => \U8|Add2|auto_generated|result_int[7]~15\,
	combout => \U8|Add2|auto_generated|result_int[8]~16_combout\);

-- Location: LCCOMB_X22_Y15_N26
\U8|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~14_combout\ = \U5|instruction\(11) $ (\U8|Add1~13\ $ (\data_out[7]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datad => \data_out[7]~70_combout\,
	cin => \U8|Add1~13\,
	combout => \U8|Add1~14_combout\);

-- Location: LCCOMB_X22_Y13_N30
\U8|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~16_combout\ = (\U5|instruction\(13) & (\U5|instruction\(12))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & (\U8|Add1~14_combout\)) # (!\U5|instruction\(12) & ((\U10|data_latch\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(12),
	datac => \U8|Add1~14_combout\,
	datad => \U10|data_latch\(7),
	combout => \U8|Mux0~16_combout\);

-- Location: LCCOMB_X22_Y13_N28
\U8|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~17_combout\ = (\U5|instruction\(11) & (\data_out[6]~63_combout\)) # (!\U5|instruction\(11) & ((\U10|data_latch\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datac => \U5|instruction\(11),
	datad => \U10|data_latch\(7),
	combout => \U8|Mux0~17_combout\);

-- Location: LCCOMB_X22_Y13_N14
\U8|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~18_combout\ = (\U5|instruction\(13) & ((\U8|Mux0~16_combout\ & ((\U8|Mux0~17_combout\))) # (!\U8|Mux0~16_combout\ & (\U8|Add2|auto_generated|result_int[8]~16_combout\)))) # (!\U5|instruction\(13) & (((\U8|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U8|Add2|auto_generated|result_int[8]~16_combout\,
	datac => \U8|Mux0~16_combout\,
	datad => \U8|Mux0~17_combout\,
	combout => \U8|Mux0~18_combout\);

-- Location: LCCOMB_X22_Y13_N22
\U8|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~13_combout\ = (\data_out[7]~70_combout\ & (\U5|instruction\(11) $ (((\U5|instruction\(12)) # (!\U10|data_latch\(7)))))) # (!\data_out[7]~70_combout\ & ((\U5|instruction\(11) & (\U5|instruction\(12))) # (!\U5|instruction\(11) & 
-- ((\U10|data_latch\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U5|instruction\(12),
	datac => \data_out[7]~70_combout\,
	datad => \U10|data_latch\(7),
	combout => \U8|Mux0~13_combout\);

-- Location: LCCOMB_X22_Y13_N4
\U8|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~14_combout\ = (\U5|instruction\(12)) # (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(11),
	combout => \U8|Mux0~14_combout\);

-- Location: LCCOMB_X24_Y14_N10
\U8|Add18~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~42_combout\ = (\U8|Equal0~0_combout\) # ((\U8|Equal0~1_combout\ & (!\U10|data_latch\(1) & !\U8|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~1_combout\,
	datab => \U10|data_latch\(1),
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|Equal0~0_combout\,
	combout => \U8|Add18~42_combout\);

-- Location: LCCOMB_X21_Y12_N16
\U8|Add18~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~43_combout\ = \U8|Add18~39\ $ (!\data_out[7]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~70_combout\,
	cin => \U8|Add18~39\,
	combout => \U8|Add18~43_combout\);

-- Location: LCCOMB_X24_Y13_N28
\U8|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~16_combout\ = !\U8|Add7~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U8|Add7~13\,
	combout => \U8|Add7~16_combout\);

-- Location: LCCOMB_X23_Y13_N24
\U8|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~11_combout\ = (\U5|instruction\(12) & (((\U8|Add18~43_combout\)))) # (!\U5|instruction\(12) & (\U10|data_latch\(3) & ((\U8|Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U10|data_latch\(3),
	datac => \U8|Add18~43_combout\,
	datad => \U8|Add7~16_combout\,
	combout => \U8|Mux0~11_combout\);

-- Location: LCCOMB_X23_Y13_N22
\U8|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~12_combout\ = (\U5|instruction\(11) & ((\U8|Mux0~11_combout\))) # (!\U5|instruction\(11) & (\U8|Add18~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U8|Add18~42_combout\,
	datad => \U8|Mux0~11_combout\,
	combout => \U8|Mux0~12_combout\);

-- Location: LCCOMB_X22_Y13_N10
\U8|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~15_combout\ = (\U8|Mux0~14_combout\ & ((\U5|instruction\(13) & ((\U8|Mux0~12_combout\))) # (!\U5|instruction\(13) & (\U8|Mux0~13_combout\)))) # (!\U8|Mux0~14_combout\ & (\U8|Mux0~13_combout\ & (\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~13_combout\,
	datab => \U8|Mux0~14_combout\,
	datac => \U5|instruction\(13),
	datad => \U8|Mux0~12_combout\,
	combout => \U8|Mux0~15_combout\);

-- Location: LCCOMB_X22_Y13_N8
\U8|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~19_combout\ = (\U5|instruction\(14) & ((\U5|instruction\(15)) # ((\U8|Mux0~15_combout\)))) # (!\U5|instruction\(14) & (!\U5|instruction\(15) & (\U8|Mux0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux0~18_combout\,
	datad => \U8|Mux0~15_combout\,
	combout => \U8|Mux0~19_combout\);

-- Location: LCCOMB_X22_Y13_N2
\U8|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~20_combout\ = (\U8|Mux0~19_combout\ & (!\U5|instruction\(11) & (!\U5|instruction\(12) & !\U5|instruction\(13)))) # (!\U8|Mux0~19_combout\ & ((\U5|instruction\(11) $ (!\U5|instruction\(12))) # (!\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U5|instruction\(12),
	datac => \U8|Mux0~19_combout\,
	datad => \U5|instruction\(13),
	combout => \U8|Mux0~20_combout\);

-- Location: LCCOMB_X22_Y13_N24
\U8|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~21_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(7) & ((\U8|Mux0~20_combout\)))) # (!\U5|instruction\(15) & (((\U8|Mux0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(7),
	datab => \U5|instruction\(15),
	datac => \U8|Mux0~19_combout\,
	datad => \U8|Mux0~20_combout\,
	combout => \U8|Mux0~21_combout\);

-- Location: FF_X22_Y13_N25
\U8|alu_result_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(7));

-- Location: LCCOMB_X23_Y11_N22
\U8|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal16~0_combout\ = (!\U8|alu_result_latch\(7) & (!\U8|alu_result_latch\(6) & (!\U8|alu_result_latch\(4) & !\U8|alu_result_latch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|alu_result_latch\(7),
	datab => \U8|alu_result_latch\(6),
	datac => \U8|alu_result_latch\(4),
	datad => \U8|alu_result_latch\(5),
	combout => \U8|Equal16~0_combout\);

-- Location: LCCOMB_X23_Y11_N12
\U8|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal16~1_combout\ = (!\U8|alu_result_latch\(2) & (!\U8|alu_result_latch\(0) & (!\U8|alu_result_latch\(1) & !\U8|alu_result_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|alu_result_latch\(2),
	datab => \U8|alu_result_latch\(0),
	datac => \U8|alu_result_latch\(1),
	datad => \U8|alu_result_latch\(3),
	combout => \U8|Equal16~1_combout\);

-- Location: LCCOMB_X23_Y11_N14
\U8|Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal16~2_combout\ = (\U8|Equal16~0_combout\ & \U8|Equal16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U8|Equal16~0_combout\,
	datad => \U8|Equal16~1_combout\,
	combout => \U8|Equal16~2_combout\);

-- Location: LCCOMB_X23_Y9_N30
\U8|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|process_1~0_combout\ = (\U5|instruction\(12) & ((\U5|instruction\(11)) # ((\U5|instruction\(14) & !\U5|instruction\(13))))) # (!\U5|instruction\(12) & (\U5|instruction\(14) $ (((\U5|instruction\(11) & \U5|instruction\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(13),
	combout => \U8|process_1~0_combout\);

-- Location: LCCOMB_X23_Y9_N16
\U8|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|process_1~1_combout\ = (!\U5|instruction\(15) & (\U8|process_1~0_combout\ & \U14|enalu_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(15),
	datac => \U8|process_1~0_combout\,
	datad => \U14|enalu_latch~q\,
	combout => \U8|process_1~1_combout\);

-- Location: LCCOMB_X23_Y11_N20
\U8|zero_flag_latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|zero_flag_latch~combout\ = (\U8|process_1~1_combout\ & ((\U8|Equal16~2_combout\))) # (!\U8|process_1~1_combout\ & (\U8|zero_flag_latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|zero_flag_latch~combout\,
	datac => \U8|Equal16~2_combout\,
	datad => \U8|process_1~1_combout\,
	combout => \U8|zero_flag_latch~combout\);

-- Location: LCCOMB_X23_Y11_N30
\U14|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~5_combout\ = (\U6|Mux0~6_combout\ & (!\U5|instruction\(11) & (\U6|Mux1~4_combout\ & \U8|zero_flag_latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux0~6_combout\,
	datab => \U5|instruction\(11),
	datac => \U6|Mux1~4_combout\,
	datad => \U8|zero_flag_latch~combout\,
	combout => \U14|process_0~5_combout\);

-- Location: LCCOMB_X23_Y11_N8
\U14|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector18~3_combout\ = (!\U14|process_0~5_combout\ & (\U14|current_state.t10~q\ & (\U14|process_0~4_combout\ & !\U14|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~5_combout\,
	datab => \U14|current_state.t10~q\,
	datac => \U14|process_0~4_combout\,
	datad => \U14|process_0~6_combout\,
	combout => \U14|Selector18~3_combout\);

-- Location: LCCOMB_X22_Y9_N16
\U14|Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~6_combout\ = (!\U6|Mux1~6_combout\ & ((\U14|process_0~8_combout\) # ((\U6|Mux0~5_combout\ & \U5|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux1~6_combout\,
	datab => \U6|Mux0~5_combout\,
	datac => \U5|instruction\(10),
	datad => \U14|process_0~8_combout\,
	combout => \U14|Selector9~6_combout\);

-- Location: LCCOMB_X23_Y11_N6
\U14|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~0_combout\ = (\U14|current_state.t12~q\ & (\U5|instruction\(12) $ (\U5|instruction\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U14|current_state.t12~q\,
	combout => \U14|Selector9~0_combout\);

-- Location: LCCOMB_X23_Y11_N0
\U14|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~0_combout\ = (\U14|current_state.t14~q\ & (((!\U14|Selector1~0_combout\) # (!\U5|instruction\(11))) # (!\U6|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux10~0_combout\,
	datab => \U5|instruction\(11),
	datac => \U14|current_state.t14~q\,
	datad => \U14|Selector1~0_combout\,
	combout => \U14|Selector15~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\U14|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~2_combout\ = (\U5|instruction\(15) & (!\U5|instruction\(13) & (\U5|instruction\(12) $ (\U5|instruction\(11))))) # (!\U5|instruction\(15) & ((\U5|instruction\(11)) # (\U5|instruction\(13) $ (\U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(11),
	combout => \U14|Selector9~2_combout\);

-- Location: LCCOMB_X21_Y11_N18
\U14|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~3_combout\ = (\U14|current_state.t12~q\ & ((\U5|instruction\(14) & (\U5|instruction\(15))) # (!\U5|instruction\(14) & ((!\U14|Selector9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U14|current_state.t12~q\,
	datad => \U14|Selector9~2_combout\,
	combout => \U14|Selector9~3_combout\);

-- Location: LCCOMB_X24_Y11_N0
\U14|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~1_combout\ = (\U14|current_state.t17~q\ & (((\U14|process_0~2_combout\) # (!\U14|Selector16~0_combout\)) # (!\U5|instruction\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(10),
	datab => \U14|current_state.t17~q\,
	datac => \U14|Selector16~0_combout\,
	datad => \U14|process_0~2_combout\,
	combout => \U14|Selector9~1_combout\);

-- Location: LCCOMB_X24_Y11_N18
\U14|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~4_combout\ = (\U14|Selector15~0_combout\) # (((\U14|Selector9~3_combout\) # (\U14|Selector9~1_combout\)) # (!\U14|Selector6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector15~0_combout\,
	datab => \U14|Selector6~7_combout\,
	datac => \U14|Selector9~3_combout\,
	datad => \U14|Selector9~1_combout\,
	combout => \U14|Selector9~4_combout\);

-- Location: LCCOMB_X24_Y11_N24
\U14|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~5_combout\ = (\U14|Selector9~0_combout\ & ((\U6|Mux10~0_combout\) # ((\U14|regrd1_latch~q\ & \U14|Selector9~4_combout\)))) # (!\U14|Selector9~0_combout\ & (((\U14|regrd1_latch~q\ & \U14|Selector9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector9~0_combout\,
	datab => \U6|Mux10~0_combout\,
	datac => \U14|regrd1_latch~q\,
	datad => \U14|Selector9~4_combout\,
	combout => \U14|Selector9~5_combout\);

-- Location: LCCOMB_X24_Y11_N8
\U14|Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~7_combout\ = (\U14|Selector9~5_combout\) # ((\U14|Selector18~3_combout\ & (!\U14|process_0~9_combout\ & \U14|Selector9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector18~3_combout\,
	datab => \U14|process_0~9_combout\,
	datac => \U14|Selector9~6_combout\,
	datad => \U14|Selector9~5_combout\,
	combout => \U14|Selector9~7_combout\);

-- Location: FF_X24_Y11_N9
\U14|regrd1_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector9~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|regrd1_latch~q\);

-- Location: LCCOMB_X24_Y11_N16
\data_out[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~16_combout\ = (\U14|regrd1_latch~q\ & ((\U5|instruction\(0)))) # (!\U14|regrd1_latch~q\ & (\U5|instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(2),
	datac => \U14|regrd1_latch~q\,
	datad => \U5|instruction\(0),
	combout => \data_out[4]~16_combout\);

-- Location: LCCOMB_X24_Y11_N12
\data_out[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~17_combout\ = (\U5|instruction\(10) & ((\data_out[4]~16_combout\))) # (!\U5|instruction\(10) & (\U5|instruction\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(8),
	datad => \data_out[4]~16_combout\,
	combout => \data_out[4]~17_combout\);

-- Location: LCCOMB_X25_Y11_N12
\data_out[4]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~75_combout\ = (!\data_out[4]~17_combout\ & ((\U14|regrd1_latch~q\) # (\U14|regrd2_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datac => \U14|regrd2_latch~q\,
	datad => \data_out[4]~17_combout\,
	combout => \data_out[4]~75_combout\);

-- Location: LCCOMB_X25_Y9_N22
\U12|grd_latch[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[4]~feeder_combout\ = \data_out[4]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[4]~49_combout\,
	combout => \U12|grd_latch[4]~feeder_combout\);

-- Location: FF_X25_Y9_N23
\U12|grd_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(4));

-- Location: FF_X26_Y10_N15
\U12|grb_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[4]~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(4));

-- Location: LCCOMB_X26_Y10_N14
\data_out[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~47_combout\ = (\data_out[4]~18_combout\ & (((\U12|grb_latch\(4)) # (\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & (\U12|grd_latch\(4) & ((!\data_out[4]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \U12|grd_latch\(4),
	datac => \U12|grb_latch\(4),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[4]~47_combout\);

-- Location: LCCOMB_X28_Y10_N0
\U12|grc_latch[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[4]~feeder_combout\ = \data_out[4]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[4]~49_combout\,
	combout => \U12|grc_latch[4]~feeder_combout\);

-- Location: FF_X28_Y10_N1
\U12|grc_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	d => \U12|grc_latch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(4));

-- Location: LCCOMB_X28_Y10_N2
\U12|gra_latch[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[4]~feeder_combout\ = \data_out[4]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[4]~49_combout\,
	combout => \U12|gra_latch[4]~feeder_combout\);

-- Location: FF_X28_Y10_N3
\U12|gra_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(4));

-- Location: LCCOMB_X26_Y10_N26
\data_out[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~48_combout\ = (\data_out[4]~75_combout\ & ((\data_out[4]~47_combout\ & ((\U12|gra_latch\(4)))) # (!\data_out[4]~47_combout\ & (\U12|grc_latch\(4))))) # (!\data_out[4]~75_combout\ & (\data_out[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~75_combout\,
	datab => \data_out[4]~47_combout\,
	datac => \U12|grc_latch\(4),
	datad => \U12|gra_latch\(4),
	combout => \data_out[4]~48_combout\);

-- Location: LCCOMB_X26_Y10_N30
\data_out[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~49_combout\ = (\data_out[4]~45_combout\) # ((\data_out[4]~46_combout\) # ((\data_out[4]~48_combout\ & \U12|gr_data_out[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~48_combout\,
	datab => \data_out[4]~45_combout\,
	datac => \U12|gr_data_out[7]~0_combout\,
	datad => \data_out[4]~46_combout\,
	combout => \data_out[4]~49_combout\);

-- Location: LCCOMB_X26_Y10_N24
\U3|inst1|address_latch[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|inst1|address_latch[4]~feeder_combout\ = \data_out[4]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[4]~49_combout\,
	combout => \U3|inst1|address_latch[4]~feeder_combout\);

-- Location: FF_X26_Y10_N25
\U3|inst1|address_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|inst1|address_latch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(4));

-- Location: LCCOMB_X26_Y11_N26
\data_out[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~22_combout\ = (\U14|ramrd_latch~q\ & ((\U3|inst|altsyncram_component|auto_generated|q_a\(1)) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(1))))) # (!\U14|ramrd_latch~q\ & (\U14|enrom_latch~q\ & 
-- ((\U4|inst|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \U14|enrom_latch~q\,
	datac => \U3|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \data_out[1]~22_combout\);

-- Location: LCCOMB_X25_Y10_N26
\data_out[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~23_combout\ = (\U5|instruction\(1) & ((\U14|dbfaout_latch~q\) # ((\U14|enpcout_latch~q\ & \U7|addr_latch\(1))))) # (!\U5|instruction\(1) & (\U14|enpcout_latch~q\ & ((\U7|addr_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(1),
	datab => \U14|enpcout_latch~q\,
	datac => \U14|dbfaout_latch~q\,
	datad => \U7|addr_latch\(1),
	combout => \data_out[1]~23_combout\);

-- Location: LCCOMB_X26_Y11_N12
\data_out[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~24_combout\ = (\data_out[1]~22_combout\) # (\data_out[1]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[1]~22_combout\,
	datad => \data_out[1]~23_combout\,
	combout => \data_out[1]~24_combout\);

-- Location: LCCOMB_X25_Y9_N12
\U12|grd_latch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[1]~feeder_combout\ = \data_out[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[1]~28_combout\,
	combout => \U12|grd_latch[1]~feeder_combout\);

-- Location: FF_X25_Y9_N13
\U12|grd_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(1));

-- Location: FF_X26_Y11_N9
\U12|grc_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[1]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(1));

-- Location: LCCOMB_X26_Y11_N8
\data_out[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~26_combout\ = (\data_out[4]~18_combout\ & (((\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & ((\data_out[4]~75_combout\ & ((\U12|grc_latch\(1)))) # (!\data_out[4]~75_combout\ & (\U12|grd_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|grd_latch\(1),
	datab => \data_out[4]~18_combout\,
	datac => \U12|grc_latch\(1),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[1]~26_combout\);

-- Location: LCCOMB_X28_Y11_N12
\U12|grb_latch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grb_latch[1]~feeder_combout\ = \data_out[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[1]~28_combout\,
	combout => \U12|grb_latch[1]~feeder_combout\);

-- Location: FF_X28_Y11_N13
\U12|grb_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	d => \U12|grb_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(1));

-- Location: LCCOMB_X28_Y11_N6
\U12|gra_latch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[1]~feeder_combout\ = \data_out[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~28_combout\,
	combout => \U12|gra_latch[1]~feeder_combout\);

-- Location: FF_X28_Y11_N7
\U12|gra_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(1));

-- Location: LCCOMB_X26_Y11_N14
\data_out[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~27_combout\ = (\data_out[4]~18_combout\ & ((\data_out[1]~26_combout\ & ((\U12|gra_latch\(1)))) # (!\data_out[1]~26_combout\ & (\U12|grb_latch\(1))))) # (!\data_out[4]~18_combout\ & (\data_out[1]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \data_out[1]~26_combout\,
	datac => \U12|grb_latch\(1),
	datad => \U12|gra_latch\(1),
	combout => \data_out[1]~27_combout\);

-- Location: LCCOMB_X12_Y10_N18
\uart_inst|inst1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~2_combout\ = (!\uart_inst|inst1|pro2:rcnt[1]~q\ & (!\uart_inst|inst1|pro2:rcnt[2]~q\ & (\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X12_Y10_N22
\uart_inst|inst1|pro2:rbufs[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[1]~0_combout\ = (\uart_inst|inst1|Decoder0~2_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~2_combout\ & ((\uart_inst|inst1|pro2:rbufs[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[1]~q\,
	datad => \uart_inst|inst1|Decoder0~2_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[1]~0_combout\);

-- Location: FF_X12_Y10_N23
\uart_inst|inst1|pro2:rbufs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[1]~q\);

-- Location: LCCOMB_X25_Y12_N22
\uart_inst|inst1|rbuf[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[1]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|pro2:rbufs[1]~q\,
	combout => \uart_inst|inst1|rbuf[1]~feeder_combout\);

-- Location: FF_X25_Y12_N23
\uart_inst|inst1|rbuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[1]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(1));

-- Location: LCCOMB_X25_Y12_N6
\uart_inst|inst3|data_latch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[1]~feeder_combout\ = \uart_inst|inst1|rbuf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst1|rbuf\(1),
	combout => \uart_inst|inst3|data_latch[1]~feeder_combout\);

-- Location: FF_X25_Y12_N7
\uart_inst|inst3|data_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(1));

-- Location: LCCOMB_X26_Y11_N10
\data_out[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~25_combout\ = (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(1)) # ((\U14|dbfbout_latch~q\ & \U10|data_latch\(1))))) # (!\U14|enuart_latch~q\ & (\U14|dbfbout_latch~q\ & (\U10|data_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enuart_latch~q\,
	datab => \U14|dbfbout_latch~q\,
	datac => \U10|data_latch\(1),
	datad => \uart_inst|inst3|data_latch\(1),
	combout => \data_out[1]~25_combout\);

-- Location: LCCOMB_X26_Y11_N20
\data_out[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~28_combout\ = (\data_out[1]~24_combout\) # ((\data_out[1]~25_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[1]~24_combout\,
	datac => \data_out[1]~27_combout\,
	datad => \data_out[1]~25_combout\,
	combout => \data_out[1]~28_combout\);

-- Location: LCCOMB_X26_Y12_N28
\U3|inst1|address_latch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|inst1|address_latch[1]~feeder_combout\ = \data_out[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[1]~28_combout\,
	combout => \U3|inst1|address_latch[1]~feeder_combout\);

-- Location: FF_X26_Y12_N29
\U3|inst1|address_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|inst1|address_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|inst1|address_latch\(1));

-- Location: LCCOMB_X26_Y13_N12
\data_out[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~12_combout\ = (\U14|enrom_latch~q\ & ((\U4|inst|altsyncram_component|auto_generated|q_a\(0)) # ((\U14|ramrd_latch~q\ & \U3|inst|altsyncram_component|auto_generated|q_a\(0))))) # (!\U14|enrom_latch~q\ & (\U14|ramrd_latch~q\ & 
-- (\U3|inst|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enrom_latch~q\,
	datab => \U14|ramrd_latch~q\,
	datac => \U3|inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \data_out[0]~12_combout\);

-- Location: LCCOMB_X25_Y10_N20
\data_out[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~13_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(0)) # ((\U7|addr_latch\(0) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (((\U7|addr_latch\(0) & \U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U5|instruction\(0),
	datac => \U7|addr_latch\(0),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[0]~13_combout\);

-- Location: LCCOMB_X26_Y13_N10
\data_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~14_combout\ = (\data_out[0]~12_combout\) # (\data_out[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]~12_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \data_out[0]~14_combout\);

-- Location: FF_X25_Y13_N31
\U12|grc_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[0]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(0));

-- Location: LCCOMB_X25_Y9_N6
\U12|grd_latch[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[0]~feeder_combout\ = \data_out[0]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[0]~21_combout\,
	combout => \U12|grd_latch[0]~feeder_combout\);

-- Location: FF_X25_Y9_N7
\U12|grd_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(0));

-- Location: FF_X26_Y13_N27
\U12|grb_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[0]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(0));

-- Location: LCCOMB_X26_Y13_N26
\data_out[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~19_combout\ = (\data_out[4]~18_combout\ & (((\U12|grb_latch\(0)) # (\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & (\U12|grd_latch\(0) & ((!\data_out[4]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \U12|grd_latch\(0),
	datac => \U12|grb_latch\(0),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[0]~19_combout\);

-- Location: LCCOMB_X28_Y13_N28
\U12|gra_latch[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[0]~feeder_combout\ = \data_out[0]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~21_combout\,
	combout => \U12|gra_latch[0]~feeder_combout\);

-- Location: FF_X28_Y13_N29
\U12|gra_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(0));

-- Location: LCCOMB_X26_Y13_N8
\data_out[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~20_combout\ = (\data_out[4]~75_combout\ & ((\data_out[0]~19_combout\ & ((\U12|gra_latch\(0)))) # (!\data_out[0]~19_combout\ & (\U12|grc_latch\(0))))) # (!\data_out[4]~75_combout\ & (((\data_out[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~75_combout\,
	datab => \U12|grc_latch\(0),
	datac => \data_out[0]~19_combout\,
	datad => \U12|gra_latch\(0),
	combout => \data_out[0]~20_combout\);

-- Location: LCCOMB_X12_Y10_N12
\uart_inst|inst1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~1_combout\ = (!\uart_inst|inst1|pro2:rcnt[1]~q\ & (!\uart_inst|inst1|pro2:rcnt[2]~q\ & (!\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X12_Y10_N8
\uart_inst|inst1|pro2:rbufs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[0]~0_combout\ = (\uart_inst|inst1|Decoder0~1_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~1_combout\ & ((\uart_inst|inst1|pro2:rbufs[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[0]~q\,
	datad => \uart_inst|inst1|Decoder0~1_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[0]~0_combout\);

-- Location: FF_X12_Y10_N9
\uart_inst|inst1|pro2:rbufs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[0]~q\);

-- Location: LCCOMB_X25_Y12_N8
\uart_inst|inst1|rbuf[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[0]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|pro2:rbufs[0]~q\,
	combout => \uart_inst|inst1|rbuf[0]~feeder_combout\);

-- Location: FF_X25_Y12_N9
\uart_inst|inst1|rbuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[0]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(0));

-- Location: LCCOMB_X25_Y12_N16
\uart_inst|inst3|data_latch[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[0]~feeder_combout\ = \uart_inst|inst1|rbuf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst1|rbuf\(0),
	combout => \uart_inst|inst3|data_latch[0]~feeder_combout\);

-- Location: FF_X25_Y12_N17
\uart_inst|inst3|data_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(0));

-- Location: LCCOMB_X26_Y13_N20
\data_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~15_combout\ = (\U14|dbfbout_latch~q\ & ((\U10|data_latch\(0)) # ((\U14|enuart_latch~q\ & \uart_inst|inst3|data_latch\(0))))) # (!\U14|dbfbout_latch~q\ & (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datab => \U14|enuart_latch~q\,
	datac => \U10|data_latch\(0),
	datad => \uart_inst|inst3|data_latch\(0),
	combout => \data_out[0]~15_combout\);

-- Location: LCCOMB_X26_Y13_N22
\data_out[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~21_combout\ = (\data_out[0]~14_combout\) # ((\data_out[0]~15_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[0]~14_combout\,
	datac => \data_out[0]~20_combout\,
	datad => \data_out[0]~15_combout\,
	combout => \data_out[0]~21_combout\);

-- Location: LCCOMB_X26_Y9_N0
\data_out[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~57_combout\ = (\U14|ramrd_latch~q\ & ((\U3|inst|altsyncram_component|auto_generated|q_a\(6)) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(6))))) # (!\U14|ramrd_latch~q\ & (\U14|enrom_latch~q\ & 
-- (\U4|inst|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \U14|enrom_latch~q\,
	datac => \U4|inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \U3|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \data_out[6]~57_combout\);

-- Location: LCCOMB_X25_Y10_N28
\data_out[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~58_combout\ = (\U14|enpcout_latch~q\ & ((\U7|addr_latch\(6)) # ((\U14|dbfaout_latch~q\ & \U5|instruction\(6))))) # (!\U14|enpcout_latch~q\ & (\U14|dbfaout_latch~q\ & (\U5|instruction\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enpcout_latch~q\,
	datab => \U14|dbfaout_latch~q\,
	datac => \U5|instruction\(6),
	datad => \U7|addr_latch\(6),
	combout => \data_out[6]~58_combout\);

-- Location: LCCOMB_X26_Y9_N30
\data_out[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~59_combout\ = (\data_out[6]~57_combout\) # (\data_out[6]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~57_combout\,
	datad => \data_out[6]~58_combout\,
	combout => \data_out[6]~59_combout\);

-- Location: LCCOMB_X26_Y9_N10
\data_out[6]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~63_combout\ = (\data_out[6]~59_combout\) # ((\data_out[6]~60_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[6]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[6]~59_combout\,
	datac => \data_out[6]~62_combout\,
	datad => \data_out[6]~60_combout\,
	combout => \data_out[6]~63_combout\);

-- Location: FF_X22_Y9_N7
\U5|instruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[6]~63_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(14));

-- Location: LCCOMB_X22_Y9_N20
\U6|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux10~0_combout\ = (!\U5|instruction\(13) & (\U5|instruction\(15) & (!\U5|instruction\(14) & !\U5|instruction\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(15),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(12),
	combout => \U6|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y12_N14
\U14|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~1_combout\ = (\U5|instruction\(11) & (\U6|Mux10~0_combout\ & (\U14|current_state.t13~q\ & \U14|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U6|Mux10~0_combout\,
	datac => \U14|current_state.t13~q\,
	datad => \U14|Selector1~0_combout\,
	combout => \U14|Selector15~1_combout\);

-- Location: LCCOMB_X23_Y12_N16
\U14|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~3_combout\ = (\U14|Selector15~1_combout\) # ((\U14|ramwt_latch~q\ & ((\U14|Selector15~2_combout\) # (\U14|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector15~2_combout\,
	datab => \U14|Selector15~1_combout\,
	datac => \U14|ramwt_latch~q\,
	datad => \U14|Selector15~0_combout\,
	combout => \U14|Selector15~3_combout\);

-- Location: LCCOMB_X23_Y12_N28
\U14|ramwt_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|ramwt_latch~feeder_combout\ = \U14|Selector15~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector15~3_combout\,
	combout => \U14|ramwt_latch~feeder_combout\);

-- Location: FF_X23_Y12_N29
\U14|ramwt_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|ramwt_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ramwt_latch~q\);

-- Location: LCCOMB_X26_Y12_N24
\data_out[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~36_combout\ = (\U3|inst|altsyncram_component|auto_generated|q_a\(3) & ((\U14|ramrd_latch~q\) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(3))))) # (!\U3|inst|altsyncram_component|auto_generated|q_a\(3) & 
-- (\U14|enrom_latch~q\ & ((\U4|inst|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \U14|enrom_latch~q\,
	datac => \U14|ramrd_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \data_out[3]~36_combout\);

-- Location: LCCOMB_X25_Y10_N22
\data_out[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~37_combout\ = (\U14|enpcout_latch~q\ & ((\U7|addr_latch\(3)) # ((\U14|dbfaout_latch~q\ & \U5|instruction\(3))))) # (!\U14|enpcout_latch~q\ & (\U14|dbfaout_latch~q\ & (\U5|instruction\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enpcout_latch~q\,
	datab => \U14|dbfaout_latch~q\,
	datac => \U5|instruction\(3),
	datad => \U7|addr_latch\(3),
	combout => \data_out[3]~37_combout\);

-- Location: LCCOMB_X26_Y12_N30
\data_out[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~38_combout\ = (\data_out[3]~36_combout\) # (\data_out[3]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~36_combout\,
	datad => \data_out[3]~37_combout\,
	combout => \data_out[3]~38_combout\);

-- Location: FF_X28_Y12_N27
\U12|gra_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	asdata => \data_out[3]~42_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(3));

-- Location: LCCOMB_X28_Y12_N16
\U12|grb_latch[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grb_latch[3]~feeder_combout\ = \data_out[3]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[3]~42_combout\,
	combout => \U12|grb_latch[3]~feeder_combout\);

-- Location: FF_X28_Y12_N17
\U12|grb_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	d => \U12|grb_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(3));

-- Location: LCCOMB_X25_Y9_N0
\U12|grd_latch[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[3]~feeder_combout\ = \data_out[3]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[3]~42_combout\,
	combout => \U12|grd_latch[3]~feeder_combout\);

-- Location: FF_X25_Y9_N1
\U12|grd_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(3));

-- Location: FF_X25_Y9_N19
\U12|grc_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[3]~42_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(3));

-- Location: LCCOMB_X25_Y9_N18
\data_out[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~40_combout\ = (\data_out[4]~18_combout\ & (((\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & ((\data_out[4]~75_combout\ & ((\U12|grc_latch\(3)))) # (!\data_out[4]~75_combout\ & (\U12|grd_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~18_combout\,
	datab => \U12|grd_latch\(3),
	datac => \U12|grc_latch\(3),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[3]~40_combout\);

-- Location: LCCOMB_X26_Y12_N14
\data_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~41_combout\ = (\data_out[4]~18_combout\ & ((\data_out[3]~40_combout\ & (\U12|gra_latch\(3))) # (!\data_out[3]~40_combout\ & ((\U12|grb_latch\(3)))))) # (!\data_out[4]~18_combout\ & (((\data_out[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gra_latch\(3),
	datab => \data_out[4]~18_combout\,
	datac => \U12|grb_latch\(3),
	datad => \data_out[3]~40_combout\,
	combout => \data_out[3]~41_combout\);

-- Location: LCCOMB_X12_Y10_N26
\uart_inst|inst1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~4_combout\ = (\uart_inst|inst1|pro2:rcnt[1]~q\ & (!\uart_inst|inst1|pro2:rcnt[2]~q\ & (\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~4_combout\);

-- Location: LCCOMB_X12_Y10_N6
\uart_inst|inst1|pro2:rbufs[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[3]~0_combout\ = (\uart_inst|inst1|Decoder0~4_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~4_combout\ & ((\uart_inst|inst1|pro2:rbufs[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|Decoder0~4_combout\,
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[3]~q\,
	combout => \uart_inst|inst1|pro2:rbufs[3]~0_combout\);

-- Location: FF_X12_Y10_N7
\uart_inst|inst1|pro2:rbufs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[3]~q\);

-- Location: LCCOMB_X25_Y12_N30
\uart_inst|inst1|rbuf[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[3]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|pro2:rbufs[3]~q\,
	combout => \uart_inst|inst1|rbuf[3]~feeder_combout\);

-- Location: FF_X25_Y12_N31
\uart_inst|inst1|rbuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[3]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(3));

-- Location: LCCOMB_X25_Y12_N14
\uart_inst|inst3|data_latch[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[3]~feeder_combout\ = \uart_inst|inst1|rbuf\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst1|rbuf\(3),
	combout => \uart_inst|inst3|data_latch[3]~feeder_combout\);

-- Location: FF_X25_Y12_N15
\uart_inst|inst3|data_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(3));

-- Location: LCCOMB_X26_Y12_N20
\data_out[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~39_combout\ = (\U14|dbfbout_latch~q\ & ((\U10|data_latch\(3)) # ((\U14|enuart_latch~q\ & \uart_inst|inst3|data_latch\(3))))) # (!\U14|dbfbout_latch~q\ & (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datab => \U14|enuart_latch~q\,
	datac => \U10|data_latch\(3),
	datad => \uart_inst|inst3|data_latch\(3),
	combout => \data_out[3]~39_combout\);

-- Location: LCCOMB_X26_Y12_N18
\data_out[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~42_combout\ = (\data_out[3]~38_combout\) # ((\data_out[3]~39_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[3]~38_combout\,
	datac => \data_out[3]~41_combout\,
	datad => \data_out[3]~39_combout\,
	combout => \data_out[3]~42_combout\);

-- Location: FF_X22_Y9_N23
\U5|instruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[3]~42_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(11));

-- Location: LCCOMB_X21_Y9_N18
\U14|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~7_combout\ = ((\U5|instruction\(15) & ((\U5|instruction\(11)) # (!\U5|instruction\(12)))) # (!\U5|instruction\(15) & ((\U5|instruction\(12)) # (!\U5|instruction\(11))))) # (!\U6|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(12),
	datad => \U6|Mux3~0_combout\,
	combout => \U14|process_0~7_combout\);

-- Location: LCCOMB_X21_Y9_N26
\U14|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~11_combout\ = ((\U6|Mux1~6_combout\) # (\U6|Mux0~5_combout\)) # (!\U14|process_0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|process_0~7_combout\,
	datac => \U6|Mux1~6_combout\,
	datad => \U6|Mux0~5_combout\,
	combout => \U14|process_0~11_combout\);

-- Location: LCCOMB_X22_Y11_N6
\U14|next_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state~23_combout\ = (\U14|current_state.t12~q\ & (!\U14|process_0~11_combout\ & \U14|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|current_state.t12~q\,
	datac => \U14|process_0~11_combout\,
	datad => \U14|process_0~4_combout\,
	combout => \U14|next_state~23_combout\);

-- Location: FF_X22_Y11_N7
\U14|next_state.t13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t13~q\);

-- Location: LCCOMB_X22_Y11_N26
\U14|current_state.t13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t13~feeder_combout\ = \U14|next_state.t13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t13~q\,
	combout => \U14|current_state.t13~feeder_combout\);

-- Location: FF_X22_Y11_N27
\U14|current_state.t13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t13~q\);

-- Location: FF_X23_Y12_N31
\U14|next_state.t14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t13~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t14~q\);

-- Location: FF_X23_Y12_N3
\U14|current_state.t14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t14~q\);

-- Location: LCCOMB_X23_Y12_N10
\U14|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector14~0_combout\ = (\U14|current_state.t14~q\ & (((!\U14|Selector1~0_combout\) # (!\U6|Mux10~1_combout\)))) # (!\U14|current_state.t14~q\ & (\U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U6|Mux10~1_combout\,
	datad => \U14|Selector1~0_combout\,
	combout => \U14|Selector14~0_combout\);

-- Location: LCCOMB_X26_Y12_N16
\U14|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector14~1_combout\ = (\U14|current_state.t12~q\ & ((\U14|ramrd_latch~q\) # ((\U6|Mux10~1_combout\)))) # (!\U14|current_state.t12~q\ & (\U14|ramrd_latch~q\ & (\U14|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|ramrd_latch~q\,
	datac => \U14|Selector14~0_combout\,
	datad => \U6|Mux10~1_combout\,
	combout => \U14|Selector14~1_combout\);

-- Location: LCCOMB_X26_Y12_N8
\U14|ramrd_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|ramrd_latch~feeder_combout\ = \U14|Selector14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector14~1_combout\,
	combout => \U14|ramrd_latch~feeder_combout\);

-- Location: FF_X26_Y12_N9
\U14|ramrd_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|ramrd_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ramrd_latch~q\);

-- Location: LCCOMB_X26_Y9_N24
\data_out[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~29_combout\ = (\U14|ramrd_latch~q\ & ((\U3|inst|altsyncram_component|auto_generated|q_a\(2)) # ((\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(2))))) # (!\U14|ramrd_latch~q\ & (\U14|enrom_latch~q\ & 
-- ((\U4|inst|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \U14|enrom_latch~q\,
	datac => \U3|inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \data_out[2]~29_combout\);

-- Location: LCCOMB_X25_Y10_N0
\data_out[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~30_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(2)) # ((\U7|addr_latch\(2) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (((\U7|addr_latch\(2) & \U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U5|instruction\(2),
	datac => \U7|addr_latch\(2),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[2]~30_combout\);

-- Location: LCCOMB_X26_Y9_N6
\data_out[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~31_combout\ = (\data_out[2]~29_combout\) # (\data_out[2]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~29_combout\,
	datad => \data_out[2]~30_combout\,
	combout => \data_out[2]~31_combout\);

-- Location: LCCOMB_X12_Y10_N0
\uart_inst|inst1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~3_combout\ = (\uart_inst|inst1|pro2:rcnt[1]~q\ & (!\uart_inst|inst1|pro2:rcnt[2]~q\ & (!\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~3_combout\);

-- Location: LCCOMB_X12_Y10_N24
\uart_inst|inst1|pro2:rbufs[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[2]~0_combout\ = (\uart_inst|inst1|Decoder0~3_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~3_combout\ & ((\uart_inst|inst1|pro2:rbufs[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[2]~q\,
	datad => \uart_inst|inst1|Decoder0~3_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[2]~0_combout\);

-- Location: FF_X12_Y10_N25
\uart_inst|inst1|pro2:rbufs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[2]~q\);

-- Location: FF_X25_Y12_N5
\uart_inst|inst1|rbuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	asdata => \uart_inst|inst1|pro2:rbufs[2]~q\,
	sload => VCC,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(2));

-- Location: LCCOMB_X25_Y12_N20
\uart_inst|inst3|data_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[2]~feeder_combout\ = \uart_inst|inst1|rbuf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst1|rbuf\(2),
	combout => \uart_inst|inst3|data_latch[2]~feeder_combout\);

-- Location: FF_X25_Y12_N21
\uart_inst|inst3|data_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(2));

-- Location: LCCOMB_X26_Y9_N4
\data_out[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~32_combout\ = (\U14|dbfbout_latch~q\ & ((\U10|data_latch\(2)) # ((\U14|enuart_latch~q\ & \uart_inst|inst3|data_latch\(2))))) # (!\U14|dbfbout_latch~q\ & (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datab => \U14|enuart_latch~q\,
	datac => \U10|data_latch\(2),
	datad => \uart_inst|inst3|data_latch\(2),
	combout => \data_out[2]~32_combout\);

-- Location: LCCOMB_X26_Y9_N14
\U12|gra_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[2]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[2]~35_combout\,
	combout => \U12|gra_latch[2]~feeder_combout\);

-- Location: FF_X26_Y9_N15
\U12|gra_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(2));

-- Location: LCCOMB_X25_Y9_N26
\U12|grc_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[2]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~35_combout\,
	combout => \U12|grc_latch[2]~feeder_combout\);

-- Location: FF_X25_Y9_N27
\U12|grc_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	d => \U12|grc_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(2));

-- Location: LCCOMB_X25_Y9_N30
\U12|grd_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grd_latch[2]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~35_combout\,
	combout => \U12|grd_latch[2]~feeder_combout\);

-- Location: FF_X25_Y9_N31
\U12|grd_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt\(3),
	d => \U12|grd_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(2));

-- Location: FF_X24_Y9_N11
\U12|grb_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[2]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(2));

-- Location: LCCOMB_X24_Y9_N10
\data_out[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~33_combout\ = (\data_out[4]~18_combout\ & (((\U12|grb_latch\(2)) # (\data_out[4]~75_combout\)))) # (!\data_out[4]~18_combout\ & (\U12|grd_latch\(2) & ((!\data_out[4]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|grd_latch\(2),
	datab => \data_out[4]~18_combout\,
	datac => \U12|grb_latch\(2),
	datad => \data_out[4]~75_combout\,
	combout => \data_out[2]~33_combout\);

-- Location: LCCOMB_X26_Y9_N20
\data_out[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~34_combout\ = (\data_out[4]~75_combout\ & ((\data_out[2]~33_combout\ & (\U12|gra_latch\(2))) # (!\data_out[2]~33_combout\ & ((\U12|grc_latch\(2)))))) # (!\data_out[4]~75_combout\ & (((\data_out[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~75_combout\,
	datab => \U12|gra_latch\(2),
	datac => \U12|grc_latch\(2),
	datad => \data_out[2]~33_combout\,
	combout => \data_out[2]~34_combout\);

-- Location: LCCOMB_X26_Y9_N2
\data_out[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~35_combout\ = (\data_out[2]~31_combout\) # ((\data_out[2]~32_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[2]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[2]~31_combout\,
	datac => \data_out[2]~32_combout\,
	datad => \data_out[2]~34_combout\,
	combout => \data_out[2]~35_combout\);

-- Location: LCCOMB_X25_Y11_N24
\U5|instruction[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[10]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~35_combout\,
	combout => \U5|instruction[10]~feeder_combout\);

-- Location: FF_X25_Y11_N25
\U5|instruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	d => \U5|instruction[10]~feeder_combout\,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(10));

-- Location: LCCOMB_X21_Y11_N28
\U14|regrd2_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|regrd2_latch~0_combout\ = (\U5|instruction\(12) & (\U5|instruction\(14) & ((!\U5|instruction\(11))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13)) # ((\U5|instruction\(14) & \U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(11),
	combout => \U14|regrd2_latch~0_combout\);

-- Location: LCCOMB_X22_Y11_N16
\U14|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~1_combout\ = (!\U5|instruction\(15) & (\U14|current_state.t12~q\ & (\U5|instruction\(10) & \U14|regrd2_latch~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U14|current_state.t12~q\,
	datac => \U5|instruction\(10),
	datad => \U14|regrd2_latch~0_combout\,
	combout => \U14|Selector10~1_combout\);

-- Location: LCCOMB_X23_Y10_N22
\U14|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~2_combout\ = (\U14|current_state.t12~q\ & ((!\U5|instruction\(10)) # (!\U6|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|current_state.t12~q\,
	datac => \U6|Mux10~0_combout\,
	datad => \U5|instruction\(10),
	combout => \U14|Selector10~2_combout\);

-- Location: LCCOMB_X23_Y10_N0
\U14|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~3_combout\ = (\U14|Selector10~2_combout\) # ((\U14|current_state.t14~q\ & ((!\U6|Mux8~1_combout\) # (!\U5|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U5|instruction\(10),
	datac => \U14|Selector10~2_combout\,
	datad => \U6|Mux8~1_combout\,
	combout => \U14|Selector10~3_combout\);

-- Location: LCCOMB_X23_Y11_N24
\U14|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~4_combout\ = (\U14|current_state.t10~q\) # ((\U14|Selector10~3_combout\) # ((!\U14|current_state.t14~q\ & \U14|Selector17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|Selector17~4_combout\,
	datac => \U14|current_state.t10~q\,
	datad => \U14|Selector10~3_combout\,
	combout => \U14|Selector10~4_combout\);

-- Location: LCCOMB_X23_Y11_N26
\U14|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~0_combout\ = (\U14|process_0~6_combout\ & (\U14|current_state.t10~q\ & (\U14|process_0~4_combout\ & !\U14|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|process_0~6_combout\,
	datab => \U14|current_state.t10~q\,
	datac => \U14|process_0~4_combout\,
	datad => \U14|process_0~8_combout\,
	combout => \U14|Selector10~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\U14|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~5_combout\ = (\U14|Selector10~1_combout\) # ((\U14|Selector10~0_combout\) # ((\U14|Selector10~4_combout\ & \U14|regrd2_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector10~1_combout\,
	datab => \U14|Selector10~4_combout\,
	datac => \U14|regrd2_latch~q\,
	datad => \U14|Selector10~0_combout\,
	combout => \U14|Selector10~5_combout\);

-- Location: FF_X23_Y11_N29
\U14|regrd2_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|regrd2_latch~q\);

-- Location: LCCOMB_X24_Y9_N12
\U12|gr_data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gr_data_out[7]~0_combout\ = (\U14|regrd2_latch~q\) # (\U14|regrd1_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd2_latch~q\,
	datad => \U14|regrd1_latch~q\,
	combout => \U12|gr_data_out[7]~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\data_out[5]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~56_combout\ = (\data_out[5]~52_combout\) # ((\data_out[5]~53_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[5]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[5]~55_combout\,
	datac => \data_out[5]~52_combout\,
	datad => \data_out[5]~53_combout\,
	combout => \data_out[5]~56_combout\);

-- Location: FF_X22_Y9_N11
\U5|instruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[5]~56_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(13));

-- Location: LCCOMB_X22_Y9_N8
\U6|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux8~0_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(14) & !\U5|instruction\(11))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13)) # ((\U5|instruction\(14) & \U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(12),
	combout => \U6|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\U14|next_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state~22_combout\ = (!\U5|instruction\(15) & (\U6|Mux8~0_combout\ & \U14|current_state.t14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datac => \U6|Mux8~0_combout\,
	datad => \U14|current_state.t14~q\,
	combout => \U14|next_state~22_combout\);

-- Location: LCCOMB_X23_Y12_N2
\U14|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~0_combout\ = (\U14|current_state.t14~q\ & (((!\U6|Mux7~1_combout\)))) # (!\U14|current_state.t14~q\ & (!\U14|current_state.t16~q\ & (\U14|current_state.t_rst_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t16~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U14|current_state.t14~q\,
	datad => \U6|Mux7~1_combout\,
	combout => \U14|Selector8~0_combout\);

-- Location: LCCOMB_X23_Y12_N18
\U14|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~1_combout\ = (\U14|dbfbout_latch~q\) # ((\U14|current_state.t12~q\ & (!\U6|Mux6~0_combout\ & \U6|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|dbfbout_latch~q\,
	datac => \U6|Mux6~0_combout\,
	datad => \U6|Mux7~1_combout\,
	combout => \U14|Selector8~1_combout\);

-- Location: LCCOMB_X23_Y12_N26
\U14|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~2_combout\ = (\U14|next_state~22_combout\) # ((\U14|Selector8~1_combout\ & ((\U14|current_state.t12~q\) # (\U14|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|next_state~22_combout\,
	datac => \U14|Selector8~0_combout\,
	datad => \U14|Selector8~1_combout\,
	combout => \U14|Selector8~2_combout\);

-- Location: FF_X23_Y12_N27
\U14|dbfbout_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|dbfbout_latch~q\);

-- Location: LCCOMB_X12_Y10_N2
\uart_inst|inst1|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|Decoder0~8_combout\ = (\uart_inst|inst1|pro2:rcnt[1]~q\ & (\uart_inst|inst1|pro2:rcnt[2]~q\ & (\uart_inst|inst1|pro2:rcnt[0]~q\ & \uart_inst|inst1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst1|pro2:rcnt[1]~q\,
	datab => \uart_inst|inst1|pro2:rcnt[2]~q\,
	datac => \uart_inst|inst1|pro2:rcnt[0]~q\,
	datad => \uart_inst|inst1|Decoder0~0_combout\,
	combout => \uart_inst|inst1|Decoder0~8_combout\);

-- Location: LCCOMB_X12_Y10_N14
\uart_inst|inst1|pro2:rbufs[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|pro2:rbufs[7]~0_combout\ = (\uart_inst|inst1|Decoder0~8_combout\ & (\rxd~input_o\)) # (!\uart_inst|inst1|Decoder0~8_combout\ & ((\uart_inst|inst1|pro2:rbufs[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~input_o\,
	datac => \uart_inst|inst1|pro2:rbufs[7]~q\,
	datad => \uart_inst|inst1|Decoder0~8_combout\,
	combout => \uart_inst|inst1|pro2:rbufs[7]~0_combout\);

-- Location: FF_X12_Y10_N15
\uart_inst|inst1|pro2:rbufs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|pro2:rbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|pro2:rbufs[7]~q\);

-- Location: LCCOMB_X25_Y12_N2
\uart_inst|inst1|rbuf[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst1|rbuf[7]~feeder_combout\ = \uart_inst|inst1|pro2:rbufs[7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|pro2:rbufs[7]~q\,
	combout => \uart_inst|inst1|rbuf[7]~feeder_combout\);

-- Location: FF_X25_Y12_N3
\uart_inst|inst1|rbuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst1|rbuf[7]~feeder_combout\,
	ena => \uart_inst|inst1|rbuf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst1|rbuf\(7));

-- Location: LCCOMB_X25_Y12_N18
\uart_inst|inst3|data_latch[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst3|data_latch[7]~feeder_combout\ = \uart_inst|inst1|rbuf\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst1|rbuf\(7),
	combout => \uart_inst|inst3|data_latch[7]~feeder_combout\);

-- Location: FF_X25_Y12_N19
\uart_inst|inst3|data_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst1|r_ready~clkctrl_outclk\,
	d => \uart_inst|inst3|data_latch[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst3|data_latch\(7));

-- Location: LCCOMB_X24_Y9_N6
\data_out[7]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~67_combout\ = (\U14|dbfbout_latch~q\ & ((\U10|data_latch\(7)) # ((\U14|enuart_latch~q\ & \uart_inst|inst3|data_latch\(7))))) # (!\U14|dbfbout_latch~q\ & (\U14|enuart_latch~q\ & ((\uart_inst|inst3|data_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datab => \U14|enuart_latch~q\,
	datac => \U10|data_latch\(7),
	datad => \uart_inst|inst3|data_latch\(7),
	combout => \data_out[7]~67_combout\);

-- Location: LCCOMB_X24_Y9_N22
\data_out[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~70_combout\ = (\data_out[7]~67_combout\) # ((\data_out[7]~66_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[7]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~67_combout\,
	datab => \U12|gr_data_out[7]~0_combout\,
	datac => \data_out[7]~66_combout\,
	datad => \data_out[7]~69_combout\,
	combout => \data_out[7]~70_combout\);

-- Location: FF_X22_Y9_N19
\U5|instruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[7]~70_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(15));

-- Location: LCCOMB_X21_Y10_N26
\U14|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~1_combout\ = (\U14|current_state.t_rst_2~q\) # ((\U14|current_state.t14~q\ & ((\U5|instruction\(15)) # (!\U6|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U6|Mux8~0_combout\,
	datac => \U14|current_state.t_rst_2~q\,
	datad => \U14|current_state.t14~q\,
	combout => \U14|Selector19~1_combout\);

-- Location: LCCOMB_X21_Y10_N0
\U14|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~0_combout\ = (\U14|current_state.t18~q\ & (\U14|Equal0~5_combout\ & \U14|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t18~q\,
	datab => \U14|Equal0~5_combout\,
	datac => \U14|Equal0~0_combout\,
	combout => \U14|Selector19~0_combout\);

-- Location: LCCOMB_X21_Y9_N22
\U14|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~2_combout\ = (!\U6|Mux1~6_combout\ & (!\U6|Mux5~0_combout\ & (!\U6|Mux3~1_combout\ & \U14|current_state.t10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux1~6_combout\,
	datab => \U6|Mux5~0_combout\,
	datac => \U6|Mux3~1_combout\,
	datad => \U14|current_state.t10~q\,
	combout => \U14|Selector19~2_combout\);

-- Location: LCCOMB_X21_Y10_N24
\U14|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~3_combout\ = (\U14|Selector19~2_combout\ & (((\U14|current_state.t12~q\ & \U14|process_0~11_combout\)) # (!\U14|process_0~10_combout\))) # (!\U14|Selector19~2_combout\ & (\U14|current_state.t12~q\ & ((\U14|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector19~2_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|process_0~10_combout\,
	datad => \U14|process_0~11_combout\,
	combout => \U14|Selector19~3_combout\);

-- Location: LCCOMB_X21_Y10_N4
\U14|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~4_combout\ = (\U14|Selector19~1_combout\) # ((\U14|current_state.t16~q\) # ((\U14|Selector19~0_combout\) # (\U14|Selector19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector19~1_combout\,
	datab => \U14|current_state.t16~q\,
	datac => \U14|Selector19~0_combout\,
	datad => \U14|Selector19~3_combout\,
	combout => \U14|Selector19~4_combout\);

-- Location: FF_X21_Y10_N5
\U14|next_state.t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t1~q\);

-- Location: FF_X22_Y10_N19
\U14|current_state.t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t1~q\);

-- Location: LCCOMB_X22_Y11_N14
\U14|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector20~0_combout\ = (\U14|current_state.t1~q\) # ((\U14|current_state.t12~q\ & (!\U14|process_0~11_combout\ & !\U14|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t1~q\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|process_0~11_combout\,
	datad => \U14|process_0~4_combout\,
	combout => \U14|Selector20~0_combout\);

-- Location: FF_X22_Y11_N15
\U14|next_state.t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t2~q\);

-- Location: FF_X22_Y10_N21
\U14|current_state.t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t2~q\);

-- Location: LCCOMB_X24_Y8_N28
\U14|next_state.t3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t3~feeder_combout\ = \U14|current_state.t2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|current_state.t2~q\,
	combout => \U14|next_state.t3~feeder_combout\);

-- Location: FF_X24_Y8_N29
\U14|next_state.t3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t3~q\);

-- Location: LCCOMB_X24_Y8_N22
\U14|current_state.t3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t3~feeder_combout\ = \U14|next_state.t3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t3~q\,
	combout => \U14|current_state.t3~feeder_combout\);

-- Location: FF_X24_Y8_N23
\U14|current_state.t3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t3~q\);

-- Location: LCCOMB_X24_Y8_N18
\U14|next_state.t4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t4~feeder_combout\ = \U14|current_state.t3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|current_state.t3~q\,
	combout => \U14|next_state.t4~feeder_combout\);

-- Location: FF_X24_Y8_N19
\U14|next_state.t4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t4~q\);

-- Location: LCCOMB_X24_Y8_N8
\U14|current_state.t4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t4~feeder_combout\ = \U14|next_state.t4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t4~q\,
	combout => \U14|current_state.t4~feeder_combout\);

-- Location: FF_X24_Y8_N9
\U14|current_state.t4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t4~q\);

-- Location: LCCOMB_X24_Y8_N16
\U14|next_state.t5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t5~feeder_combout\ = \U14|current_state.t4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|current_state.t4~q\,
	combout => \U14|next_state.t5~feeder_combout\);

-- Location: FF_X24_Y8_N17
\U14|next_state.t5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t5~q\);

-- Location: LCCOMB_X24_Y8_N14
\U14|current_state.t5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t5~feeder_combout\ = \U14|next_state.t5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t5~q\,
	combout => \U14|current_state.t5~feeder_combout\);

-- Location: FF_X24_Y8_N15
\U14|current_state.t5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t5~q\);

-- Location: LCCOMB_X24_Y8_N24
\U14|next_state.t6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t6~feeder_combout\ = \U14|current_state.t5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|current_state.t5~q\,
	combout => \U14|next_state.t6~feeder_combout\);

-- Location: FF_X24_Y8_N25
\U14|next_state.t6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t6~q\);

-- Location: LCCOMB_X22_Y10_N30
\U14|current_state.t6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t6~feeder_combout\ = \U14|next_state.t6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t6~q\,
	combout => \U14|current_state.t6~feeder_combout\);

-- Location: FF_X22_Y10_N31
\U14|current_state.t6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t6~q\);

-- Location: FF_X22_Y10_N5
\U14|next_state.t7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t7~q\);

-- Location: FF_X22_Y10_N29
\U14|current_state.t7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t7~q\);

-- Location: LCCOMB_X23_Y8_N18
\U14|next_state.t8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t8~feeder_combout\ = \U14|current_state.t7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|current_state.t7~q\,
	combout => \U14|next_state.t8~feeder_combout\);

-- Location: FF_X23_Y8_N19
\U14|next_state.t8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t8~q\);

-- Location: LCCOMB_X24_Y8_N12
\U14|current_state.t8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t8~feeder_combout\ = \U14|next_state.t8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t8~q\,
	combout => \U14|current_state.t8~feeder_combout\);

-- Location: FF_X24_Y8_N13
\U14|current_state.t8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t8~q\);

-- Location: FF_X24_Y8_N31
\U14|next_state.t9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t9~q\);

-- Location: LCCOMB_X24_Y8_N26
\U14|current_state.t9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t9~feeder_combout\ = \U14|next_state.t9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|next_state.t9~q\,
	combout => \U14|current_state.t9~feeder_combout\);

-- Location: FF_X24_Y8_N27
\U14|current_state.t9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t9~q\);

-- Location: FF_X24_Y8_N21
\U14|next_state.t10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t10~q\);

-- Location: FF_X24_Y11_N3
\U14|current_state.t10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t10~q\);

-- Location: LCCOMB_X24_Y10_N16
\U14|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector21~0_combout\ = (\U14|current_state.t17~q\ & \U14|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t17~q\,
	datad => \U14|process_0~2_combout\,
	combout => \U14|Selector21~0_combout\);

-- Location: LCCOMB_X24_Y10_N24
\U14|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector21~1_combout\ = (\U14|Selector21~0_combout\) # ((\U14|current_state.t10~q\ & (!\U6|Mux5~0_combout\ & \U14|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t10~q\,
	datab => \U6|Mux5~0_combout\,
	datac => \U14|process_0~10_combout\,
	datad => \U14|Selector21~0_combout\,
	combout => \U14|Selector21~1_combout\);

-- Location: FF_X24_Y10_N25
\U14|next_state.t11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t11~q\);

-- Location: LCCOMB_X22_Y11_N12
\U14|current_state.t11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t11~feeder_combout\ = \U14|next_state.t11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t11~q\,
	combout => \U14|current_state.t11~feeder_combout\);

-- Location: FF_X22_Y11_N13
\U14|current_state.t11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t11~q\);

-- Location: LCCOMB_X24_Y10_N12
\U14|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~1_combout\ = (\U14|txd_cmd_latch~q\) # ((\U14|current_state.t17~q\ & ((\U14|Selector16~0_combout\))) # (!\U14|current_state.t17~q\ & (!\U14|current_state.t_rst_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t17~q\,
	datab => \U14|txd_cmd_latch~q\,
	datac => \U14|current_state.t_rst_1~q\,
	datad => \U14|Selector16~0_combout\,
	combout => \U14|Selector16~1_combout\);

-- Location: LCCOMB_X24_Y10_N4
\U14|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~2_combout\ = (\U14|current_state.t11~q\ & (!\U6|Mux0~5_combout\ & (\U14|txd_cmd_latch~q\))) # (!\U14|current_state.t11~q\ & ((\U14|Selector16~1_combout\) # ((!\U6|Mux0~5_combout\ & \U14|txd_cmd_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U6|Mux0~5_combout\,
	datac => \U14|txd_cmd_latch~q\,
	datad => \U14|Selector16~1_combout\,
	combout => \U14|Selector16~2_combout\);

-- Location: FF_X24_Y10_N5
\U14|txd_cmd_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|txd_cmd_latch~q\);

-- Location: LCCOMB_X24_Y7_N0
\uart_inst|inst2|xbitcnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[0]~32_combout\ = \uart_inst|inst2|xbitcnt\(0) $ (VCC)
-- \uart_inst|inst2|xbitcnt[0]~33\ = CARRY(\uart_inst|inst2|xbitcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(0),
	datad => VCC,
	combout => \uart_inst|inst2|xbitcnt[0]~32_combout\,
	cout => \uart_inst|inst2|xbitcnt[0]~33\);

-- Location: LCCOMB_X23_Y8_N6
\uart_inst|inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Add0~0_combout\ = \uart_inst|inst2|xcnt16\(0) $ (VCC)
-- \uart_inst|inst2|Add0~1\ = CARRY(\uart_inst|inst2|xcnt16\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xcnt16\(0),
	datad => VCC,
	combout => \uart_inst|inst2|Add0~0_combout\,
	cout => \uart_inst|inst2|Add0~1\);

-- Location: LCCOMB_X23_Y8_N26
\uart_inst|inst2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector11~0_combout\ = (!\uart_inst|inst2|xcnt16\(4) & (!\uart_inst|inst2|Equal0~0_combout\ & \uart_inst|inst2|state.x_stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xcnt16\(4),
	datac => \uart_inst|inst2|Equal0~0_combout\,
	datad => \uart_inst|inst2|state.x_stop~q\,
	combout => \uart_inst|inst2|Selector11~0_combout\);

-- Location: LCCOMB_X23_Y8_N8
\uart_inst|inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Add0~2_combout\ = (\uart_inst|inst2|xcnt16\(1) & (!\uart_inst|inst2|Add0~1\)) # (!\uart_inst|inst2|xcnt16\(1) & ((\uart_inst|inst2|Add0~1\) # (GND)))
-- \uart_inst|inst2|Add0~3\ = CARRY((!\uart_inst|inst2|Add0~1\) # (!\uart_inst|inst2|xcnt16\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xcnt16\(1),
	datad => VCC,
	cin => \uart_inst|inst2|Add0~1\,
	combout => \uart_inst|inst2|Add0~2_combout\,
	cout => \uart_inst|inst2|Add0~3\);

-- Location: LCCOMB_X23_Y8_N10
\uart_inst|inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Add0~4_combout\ = (\uart_inst|inst2|xcnt16\(2) & (\uart_inst|inst2|Add0~3\ $ (GND))) # (!\uart_inst|inst2|xcnt16\(2) & (!\uart_inst|inst2|Add0~3\ & VCC))
-- \uart_inst|inst2|Add0~5\ = CARRY((\uart_inst|inst2|xcnt16\(2) & !\uart_inst|inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xcnt16\(2),
	datad => VCC,
	cin => \uart_inst|inst2|Add0~3\,
	combout => \uart_inst|inst2|Add0~4_combout\,
	cout => \uart_inst|inst2|Add0~5\);

-- Location: LCCOMB_X23_Y8_N20
\uart_inst|inst2|xcnt16[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[2]~6_combout\ = (\uart_inst|inst2|Add0~4_combout\ & ((\uart_inst|inst2|xcnt16[0]~2_combout\) # ((\uart_inst|inst2|xcnt16\(2) & !\uart_inst|inst2|xcnt16[4]~1_combout\)))) # (!\uart_inst|inst2|Add0~4_combout\ & 
-- (((\uart_inst|inst2|xcnt16\(2) & !\uart_inst|inst2|xcnt16[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Add0~4_combout\,
	datab => \uart_inst|inst2|xcnt16[0]~2_combout\,
	datac => \uart_inst|inst2|xcnt16\(2),
	datad => \uart_inst|inst2|xcnt16[4]~1_combout\,
	combout => \uart_inst|inst2|xcnt16[2]~6_combout\);

-- Location: FF_X23_Y8_N21
\uart_inst|inst2|xcnt16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xcnt16[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xcnt16\(2));

-- Location: LCCOMB_X23_Y8_N12
\uart_inst|inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Add0~6_combout\ = (\uart_inst|inst2|xcnt16\(3) & (!\uart_inst|inst2|Add0~5\)) # (!\uart_inst|inst2|xcnt16\(3) & ((\uart_inst|inst2|Add0~5\) # (GND)))
-- \uart_inst|inst2|Add0~7\ = CARRY((!\uart_inst|inst2|Add0~5\) # (!\uart_inst|inst2|xcnt16\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xcnt16\(3),
	datad => VCC,
	cin => \uart_inst|inst2|Add0~5\,
	combout => \uart_inst|inst2|Add0~6_combout\,
	cout => \uart_inst|inst2|Add0~7\);

-- Location: LCCOMB_X23_Y8_N24
\uart_inst|inst2|xcnt16[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[3]~5_combout\ = (\uart_inst|inst2|Add0~6_combout\ & ((\uart_inst|inst2|xcnt16[0]~2_combout\) # ((\uart_inst|inst2|xcnt16\(3) & !\uart_inst|inst2|xcnt16[4]~1_combout\)))) # (!\uart_inst|inst2|Add0~6_combout\ & 
-- (((\uart_inst|inst2|xcnt16\(3) & !\uart_inst|inst2|xcnt16[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Add0~6_combout\,
	datab => \uart_inst|inst2|xcnt16[0]~2_combout\,
	datac => \uart_inst|inst2|xcnt16\(3),
	datad => \uart_inst|inst2|xcnt16[4]~1_combout\,
	combout => \uart_inst|inst2|xcnt16[3]~5_combout\);

-- Location: FF_X23_Y8_N25
\uart_inst|inst2|xcnt16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xcnt16[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xcnt16\(3));

-- Location: LCCOMB_X23_Y8_N16
\uart_inst|inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|LessThan0~0_combout\ = (\uart_inst|inst2|xcnt16\(4)) # ((\uart_inst|inst2|xcnt16\(1) & (\uart_inst|inst2|xcnt16\(3) & \uart_inst|inst2|xcnt16\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xcnt16\(1),
	datab => \uart_inst|inst2|xcnt16\(3),
	datac => \uart_inst|inst2|xcnt16\(4),
	datad => \uart_inst|inst2|xcnt16\(2),
	combout => \uart_inst|inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y7_N8
\uart_inst|inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector2~0_combout\ = (\uart_inst|inst2|state.x_shift~q\) # ((\uart_inst|inst2|state.x_wait~q\ & !\uart_inst|inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|state.x_shift~q\,
	datac => \uart_inst|inst2|state.x_wait~q\,
	datad => \uart_inst|inst2|LessThan0~0_combout\,
	combout => \uart_inst|inst2|Selector2~0_combout\);

-- Location: FF_X25_Y7_N9
\uart_inst|inst2|state.x_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|Selector2~0_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|state.x_wait~q\);

-- Location: LCCOMB_X23_Y8_N22
\uart_inst|inst2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector6~0_combout\ = (\uart_inst|inst2|state.x_wait~q\ & (((!\uart_inst|inst2|LessThan0~0_combout\)))) # (!\uart_inst|inst2|state.x_wait~q\ & (((\uart_inst|inst2|xcnt16\(4))) # (!\uart_inst|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Equal0~0_combout\,
	datab => \uart_inst|inst2|xcnt16\(4),
	datac => \uart_inst|inst2|state.x_wait~q\,
	datad => \uart_inst|inst2|LessThan0~0_combout\,
	combout => \uart_inst|inst2|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y8_N28
\uart_inst|inst2|xcnt16[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[0]~2_combout\ = (\uart_inst|inst2|xcnt16[4]~1_combout\ & ((\uart_inst|inst2|Selector11~0_combout\) # ((!\uart_inst|inst2|state.x_stop~q\ & \uart_inst|inst2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Selector11~0_combout\,
	datab => \uart_inst|inst2|state.x_stop~q\,
	datac => \uart_inst|inst2|Selector6~0_combout\,
	datad => \uart_inst|inst2|xcnt16[4]~1_combout\,
	combout => \uart_inst|inst2|xcnt16[0]~2_combout\);

-- Location: LCCOMB_X23_Y8_N2
\uart_inst|inst2|xcnt16[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[0]~4_combout\ = (\uart_inst|inst2|Add0~0_combout\ & ((\uart_inst|inst2|xcnt16[0]~2_combout\) # ((\uart_inst|inst2|xcnt16\(0) & !\uart_inst|inst2|xcnt16[4]~1_combout\)))) # (!\uart_inst|inst2|Add0~0_combout\ & 
-- (((\uart_inst|inst2|xcnt16\(0) & !\uart_inst|inst2|xcnt16[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Add0~0_combout\,
	datab => \uart_inst|inst2|xcnt16[0]~2_combout\,
	datac => \uart_inst|inst2|xcnt16\(0),
	datad => \uart_inst|inst2|xcnt16[4]~1_combout\,
	combout => \uart_inst|inst2|xcnt16[0]~4_combout\);

-- Location: FF_X23_Y8_N3
\uart_inst|inst2|xcnt16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xcnt16[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xcnt16\(0));

-- Location: LCCOMB_X23_Y8_N30
\uart_inst|inst2|xcnt16[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[1]~7_combout\ = (\uart_inst|inst2|Add0~2_combout\ & ((\uart_inst|inst2|xcnt16[0]~2_combout\) # ((\uart_inst|inst2|xcnt16\(1) & !\uart_inst|inst2|xcnt16[4]~1_combout\)))) # (!\uart_inst|inst2|Add0~2_combout\ & 
-- (((\uart_inst|inst2|xcnt16\(1) & !\uart_inst|inst2|xcnt16[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Add0~2_combout\,
	datab => \uart_inst|inst2|xcnt16[0]~2_combout\,
	datac => \uart_inst|inst2|xcnt16\(1),
	datad => \uart_inst|inst2|xcnt16[4]~1_combout\,
	combout => \uart_inst|inst2|xcnt16[1]~7_combout\);

-- Location: FF_X23_Y8_N31
\uart_inst|inst2|xcnt16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xcnt16[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xcnt16\(1));

-- Location: LCCOMB_X23_Y8_N0
\uart_inst|inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal0~0_combout\ = (\uart_inst|inst2|xcnt16\(1) & (\uart_inst|inst2|xcnt16\(3) & (\uart_inst|inst2|xcnt16\(0) & \uart_inst|inst2|xcnt16\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xcnt16\(1),
	datab => \uart_inst|inst2|xcnt16\(3),
	datac => \uart_inst|inst2|xcnt16\(0),
	datad => \uart_inst|inst2|xcnt16\(2),
	combout => \uart_inst|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\uart_inst|inst2|xcnt16[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[4]~0_combout\ = ((\U14|txd_cmd_latch~q\) # ((!\uart_inst|inst2|Equal0~0_combout\ & !\uart_inst|inst2|xcnt16\(4)))) # (!\uart_inst|inst2|state.x_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|state.x_stop~q\,
	datab => \U14|txd_cmd_latch~q\,
	datac => \uart_inst|inst2|Equal0~0_combout\,
	datad => \uart_inst|inst2|xcnt16\(4),
	combout => \uart_inst|inst2|xcnt16[4]~0_combout\);

-- Location: LCCOMB_X22_Y8_N14
\uart_inst|inst2|xcnt16[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[4]~1_combout\ = (\uart_inst|inst2|state.x_idle~q\ & (!\uart_inst|inst2|state.x_shift~q\ & (\U14|uart_reset_latch~q\ & \uart_inst|inst2|xcnt16[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|state.x_idle~q\,
	datab => \uart_inst|inst2|state.x_shift~q\,
	datac => \U14|uart_reset_latch~q\,
	datad => \uart_inst|inst2|xcnt16[4]~0_combout\,
	combout => \uart_inst|inst2|xcnt16[4]~1_combout\);

-- Location: LCCOMB_X23_Y8_N14
\uart_inst|inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Add0~8_combout\ = \uart_inst|inst2|xcnt16\(4) $ (!\uart_inst|inst2|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xcnt16\(4),
	cin => \uart_inst|inst2|Add0~7\,
	combout => \uart_inst|inst2|Add0~8_combout\);

-- Location: LCCOMB_X23_Y8_N4
\uart_inst|inst2|xcnt16[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xcnt16[4]~3_combout\ = (\uart_inst|inst2|xcnt16[4]~1_combout\ & (\uart_inst|inst2|Add0~8_combout\ & ((\uart_inst|inst2|xcnt16[0]~2_combout\)))) # (!\uart_inst|inst2|xcnt16[4]~1_combout\ & ((\uart_inst|inst2|xcnt16\(4)) # 
-- ((\uart_inst|inst2|Add0~8_combout\ & \uart_inst|inst2|xcnt16[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xcnt16[4]~1_combout\,
	datab => \uart_inst|inst2|Add0~8_combout\,
	datac => \uart_inst|inst2|xcnt16\(4),
	datad => \uart_inst|inst2|xcnt16[0]~2_combout\,
	combout => \uart_inst|inst2|xcnt16[4]~3_combout\);

-- Location: FF_X23_Y8_N5
\uart_inst|inst2|xcnt16[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xcnt16[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xcnt16\(4));

-- Location: LCCOMB_X25_Y8_N18
\uart_inst|inst2|txd_content[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_content[7]~2_combout\ = (!\U14|txd_cmd_latch~q\ & !\uart_inst|inst2|state.x_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|txd_cmd_latch~q\,
	datad => \uart_inst|inst2|state.x_idle~q\,
	combout => \uart_inst|inst2|txd_content[7]~2_combout\);

-- Location: LCCOMB_X25_Y8_N26
\uart_inst|inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector1~0_combout\ = (\uart_inst|inst2|txd_content[7]~2_combout\) # ((\uart_inst|inst2|state.x_start~q\ & ((\uart_inst|inst2|xcnt16\(4)) # (!\uart_inst|inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xcnt16\(4),
	datab => \uart_inst|inst2|Equal0~0_combout\,
	datac => \uart_inst|inst2|state.x_start~q\,
	datad => \uart_inst|inst2|txd_content[7]~2_combout\,
	combout => \uart_inst|inst2|Selector1~0_combout\);

-- Location: FF_X25_Y8_N27
\uart_inst|inst2|state.x_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|Selector1~0_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|state.x_start~q\);

-- Location: LCCOMB_X25_Y8_N10
\uart_inst|inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector3~0_combout\ = (\uart_inst|inst2|state.x_start~q\ & (\uart_inst|inst2|Equal0~0_combout\ & !\uart_inst|inst2|xcnt16\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|state.x_start~q\,
	datab => \uart_inst|inst2|Equal0~0_combout\,
	datad => \uart_inst|inst2|xcnt16\(4),
	combout => \uart_inst|inst2|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y8_N30
\uart_inst|inst2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector3~1_combout\ = (\uart_inst|inst2|Selector3~0_combout\) # ((\uart_inst|inst2|LessThan0~0_combout\ & (\uart_inst|inst2|state.x_wait~q\ & \uart_inst|inst2|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Selector3~0_combout\,
	datab => \uart_inst|inst2|LessThan0~0_combout\,
	datac => \uart_inst|inst2|state.x_wait~q\,
	datad => \uart_inst|inst2|Equal1~10_combout\,
	combout => \uart_inst|inst2|Selector3~1_combout\);

-- Location: FF_X25_Y8_N31
\uart_inst|inst2|state.x_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|Selector3~1_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|state.x_shift~q\);

-- Location: LCCOMB_X25_Y7_N28
\uart_inst|inst2|xbitcnt[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[31]~34_combout\ = (\U14|uart_reset_latch~q\ & ((\uart_inst|inst2|state.x_wait~q\) # (\uart_inst|inst2|state.x_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|state.x_wait~q\,
	datac => \uart_inst|inst2|state.x_shift~q\,
	datad => \U14|uart_reset_latch~q\,
	combout => \uart_inst|inst2|xbitcnt[31]~34_combout\);

-- Location: LCCOMB_X25_Y7_N22
\uart_inst|inst2|xbitcnt[31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[31]~35_combout\ = (\uart_inst|inst2|xbitcnt[31]~34_combout\ & (((\uart_inst|inst2|LessThan0~0_combout\ & !\uart_inst|inst2|Equal1~10_combout\)) # (!\uart_inst|inst2|state.x_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|LessThan0~0_combout\,
	datab => \uart_inst|inst2|xbitcnt[31]~34_combout\,
	datac => \uart_inst|inst2|state.x_wait~q\,
	datad => \uart_inst|inst2|Equal1~10_combout\,
	combout => \uart_inst|inst2|xbitcnt[31]~35_combout\);

-- Location: FF_X24_Y7_N1
\uart_inst|inst2|xbitcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[0]~32_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(0));

-- Location: LCCOMB_X24_Y7_N2
\uart_inst|inst2|xbitcnt[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[1]~36_combout\ = (\uart_inst|inst2|xbitcnt\(1) & (!\uart_inst|inst2|xbitcnt[0]~33\)) # (!\uart_inst|inst2|xbitcnt\(1) & ((\uart_inst|inst2|xbitcnt[0]~33\) # (GND)))
-- \uart_inst|inst2|xbitcnt[1]~37\ = CARRY((!\uart_inst|inst2|xbitcnt[0]~33\) # (!\uart_inst|inst2|xbitcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(1),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[0]~33\,
	combout => \uart_inst|inst2|xbitcnt[1]~36_combout\,
	cout => \uart_inst|inst2|xbitcnt[1]~37\);

-- Location: FF_X24_Y7_N3
\uart_inst|inst2|xbitcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[1]~36_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(1));

-- Location: LCCOMB_X24_Y7_N4
\uart_inst|inst2|xbitcnt[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[2]~38_combout\ = (\uart_inst|inst2|xbitcnt\(2) & (\uart_inst|inst2|xbitcnt[1]~37\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(2) & (!\uart_inst|inst2|xbitcnt[1]~37\ & VCC))
-- \uart_inst|inst2|xbitcnt[2]~39\ = CARRY((\uart_inst|inst2|xbitcnt\(2) & !\uart_inst|inst2|xbitcnt[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(2),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[1]~37\,
	combout => \uart_inst|inst2|xbitcnt[2]~38_combout\,
	cout => \uart_inst|inst2|xbitcnt[2]~39\);

-- Location: FF_X24_Y7_N5
\uart_inst|inst2|xbitcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[2]~38_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(2));

-- Location: LCCOMB_X24_Y7_N6
\uart_inst|inst2|xbitcnt[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[3]~40_combout\ = (\uart_inst|inst2|xbitcnt\(3) & (!\uart_inst|inst2|xbitcnt[2]~39\)) # (!\uart_inst|inst2|xbitcnt\(3) & ((\uart_inst|inst2|xbitcnt[2]~39\) # (GND)))
-- \uart_inst|inst2|xbitcnt[3]~41\ = CARRY((!\uart_inst|inst2|xbitcnt[2]~39\) # (!\uart_inst|inst2|xbitcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(3),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[2]~39\,
	combout => \uart_inst|inst2|xbitcnt[3]~40_combout\,
	cout => \uart_inst|inst2|xbitcnt[3]~41\);

-- Location: FF_X24_Y7_N7
\uart_inst|inst2|xbitcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[3]~40_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(3));

-- Location: LCCOMB_X24_Y7_N8
\uart_inst|inst2|xbitcnt[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[4]~42_combout\ = (\uart_inst|inst2|xbitcnt\(4) & (\uart_inst|inst2|xbitcnt[3]~41\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(4) & (!\uart_inst|inst2|xbitcnt[3]~41\ & VCC))
-- \uart_inst|inst2|xbitcnt[4]~43\ = CARRY((\uart_inst|inst2|xbitcnt\(4) & !\uart_inst|inst2|xbitcnt[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(4),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[3]~41\,
	combout => \uart_inst|inst2|xbitcnt[4]~42_combout\,
	cout => \uart_inst|inst2|xbitcnt[4]~43\);

-- Location: FF_X24_Y7_N9
\uart_inst|inst2|xbitcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[4]~42_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(4));

-- Location: LCCOMB_X24_Y7_N10
\uart_inst|inst2|xbitcnt[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[5]~44_combout\ = (\uart_inst|inst2|xbitcnt\(5) & (!\uart_inst|inst2|xbitcnt[4]~43\)) # (!\uart_inst|inst2|xbitcnt\(5) & ((\uart_inst|inst2|xbitcnt[4]~43\) # (GND)))
-- \uart_inst|inst2|xbitcnt[5]~45\ = CARRY((!\uart_inst|inst2|xbitcnt[4]~43\) # (!\uart_inst|inst2|xbitcnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(5),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[4]~43\,
	combout => \uart_inst|inst2|xbitcnt[5]~44_combout\,
	cout => \uart_inst|inst2|xbitcnt[5]~45\);

-- Location: FF_X24_Y7_N11
\uart_inst|inst2|xbitcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[5]~44_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(5));

-- Location: LCCOMB_X24_Y7_N12
\uart_inst|inst2|xbitcnt[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[6]~46_combout\ = (\uart_inst|inst2|xbitcnt\(6) & (\uart_inst|inst2|xbitcnt[5]~45\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(6) & (!\uart_inst|inst2|xbitcnt[5]~45\ & VCC))
-- \uart_inst|inst2|xbitcnt[6]~47\ = CARRY((\uart_inst|inst2|xbitcnt\(6) & !\uart_inst|inst2|xbitcnt[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(6),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[5]~45\,
	combout => \uart_inst|inst2|xbitcnt[6]~46_combout\,
	cout => \uart_inst|inst2|xbitcnt[6]~47\);

-- Location: FF_X24_Y7_N13
\uart_inst|inst2|xbitcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[6]~46_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(6));

-- Location: LCCOMB_X24_Y7_N14
\uart_inst|inst2|xbitcnt[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[7]~48_combout\ = (\uart_inst|inst2|xbitcnt\(7) & (!\uart_inst|inst2|xbitcnt[6]~47\)) # (!\uart_inst|inst2|xbitcnt\(7) & ((\uart_inst|inst2|xbitcnt[6]~47\) # (GND)))
-- \uart_inst|inst2|xbitcnt[7]~49\ = CARRY((!\uart_inst|inst2|xbitcnt[6]~47\) # (!\uart_inst|inst2|xbitcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(7),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[6]~47\,
	combout => \uart_inst|inst2|xbitcnt[7]~48_combout\,
	cout => \uart_inst|inst2|xbitcnt[7]~49\);

-- Location: FF_X24_Y7_N15
\uart_inst|inst2|xbitcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[7]~48_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(7));

-- Location: LCCOMB_X24_Y7_N16
\uart_inst|inst2|xbitcnt[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[8]~50_combout\ = (\uart_inst|inst2|xbitcnt\(8) & (\uart_inst|inst2|xbitcnt[7]~49\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(8) & (!\uart_inst|inst2|xbitcnt[7]~49\ & VCC))
-- \uart_inst|inst2|xbitcnt[8]~51\ = CARRY((\uart_inst|inst2|xbitcnt\(8) & !\uart_inst|inst2|xbitcnt[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(8),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[7]~49\,
	combout => \uart_inst|inst2|xbitcnt[8]~50_combout\,
	cout => \uart_inst|inst2|xbitcnt[8]~51\);

-- Location: FF_X24_Y7_N17
\uart_inst|inst2|xbitcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[8]~50_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(8));

-- Location: LCCOMB_X24_Y7_N18
\uart_inst|inst2|xbitcnt[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[9]~52_combout\ = (\uart_inst|inst2|xbitcnt\(9) & (!\uart_inst|inst2|xbitcnt[8]~51\)) # (!\uart_inst|inst2|xbitcnt\(9) & ((\uart_inst|inst2|xbitcnt[8]~51\) # (GND)))
-- \uart_inst|inst2|xbitcnt[9]~53\ = CARRY((!\uart_inst|inst2|xbitcnt[8]~51\) # (!\uart_inst|inst2|xbitcnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(9),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[8]~51\,
	combout => \uart_inst|inst2|xbitcnt[9]~52_combout\,
	cout => \uart_inst|inst2|xbitcnt[9]~53\);

-- Location: FF_X24_Y7_N19
\uart_inst|inst2|xbitcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[9]~52_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(9));

-- Location: LCCOMB_X24_Y7_N20
\uart_inst|inst2|xbitcnt[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[10]~54_combout\ = (\uart_inst|inst2|xbitcnt\(10) & (\uart_inst|inst2|xbitcnt[9]~53\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(10) & (!\uart_inst|inst2|xbitcnt[9]~53\ & VCC))
-- \uart_inst|inst2|xbitcnt[10]~55\ = CARRY((\uart_inst|inst2|xbitcnt\(10) & !\uart_inst|inst2|xbitcnt[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(10),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[9]~53\,
	combout => \uart_inst|inst2|xbitcnt[10]~54_combout\,
	cout => \uart_inst|inst2|xbitcnt[10]~55\);

-- Location: FF_X24_Y7_N21
\uart_inst|inst2|xbitcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[10]~54_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(10));

-- Location: LCCOMB_X24_Y7_N22
\uart_inst|inst2|xbitcnt[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[11]~56_combout\ = (\uart_inst|inst2|xbitcnt\(11) & (!\uart_inst|inst2|xbitcnt[10]~55\)) # (!\uart_inst|inst2|xbitcnt\(11) & ((\uart_inst|inst2|xbitcnt[10]~55\) # (GND)))
-- \uart_inst|inst2|xbitcnt[11]~57\ = CARRY((!\uart_inst|inst2|xbitcnt[10]~55\) # (!\uart_inst|inst2|xbitcnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(11),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[10]~55\,
	combout => \uart_inst|inst2|xbitcnt[11]~56_combout\,
	cout => \uart_inst|inst2|xbitcnt[11]~57\);

-- Location: FF_X24_Y7_N23
\uart_inst|inst2|xbitcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[11]~56_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(11));

-- Location: LCCOMB_X24_Y7_N24
\uart_inst|inst2|xbitcnt[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[12]~58_combout\ = (\uart_inst|inst2|xbitcnt\(12) & (\uart_inst|inst2|xbitcnt[11]~57\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(12) & (!\uart_inst|inst2|xbitcnt[11]~57\ & VCC))
-- \uart_inst|inst2|xbitcnt[12]~59\ = CARRY((\uart_inst|inst2|xbitcnt\(12) & !\uart_inst|inst2|xbitcnt[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(12),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[11]~57\,
	combout => \uart_inst|inst2|xbitcnt[12]~58_combout\,
	cout => \uart_inst|inst2|xbitcnt[12]~59\);

-- Location: FF_X24_Y7_N25
\uart_inst|inst2|xbitcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[12]~58_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(12));

-- Location: LCCOMB_X24_Y7_N26
\uart_inst|inst2|xbitcnt[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[13]~60_combout\ = (\uart_inst|inst2|xbitcnt\(13) & (!\uart_inst|inst2|xbitcnt[12]~59\)) # (!\uart_inst|inst2|xbitcnt\(13) & ((\uart_inst|inst2|xbitcnt[12]~59\) # (GND)))
-- \uart_inst|inst2|xbitcnt[13]~61\ = CARRY((!\uart_inst|inst2|xbitcnt[12]~59\) # (!\uart_inst|inst2|xbitcnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(13),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[12]~59\,
	combout => \uart_inst|inst2|xbitcnt[13]~60_combout\,
	cout => \uart_inst|inst2|xbitcnt[13]~61\);

-- Location: FF_X24_Y7_N27
\uart_inst|inst2|xbitcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[13]~60_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(13));

-- Location: LCCOMB_X24_Y7_N28
\uart_inst|inst2|xbitcnt[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[14]~62_combout\ = (\uart_inst|inst2|xbitcnt\(14) & (\uart_inst|inst2|xbitcnt[13]~61\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(14) & (!\uart_inst|inst2|xbitcnt[13]~61\ & VCC))
-- \uart_inst|inst2|xbitcnt[14]~63\ = CARRY((\uart_inst|inst2|xbitcnt\(14) & !\uart_inst|inst2|xbitcnt[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(14),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[13]~61\,
	combout => \uart_inst|inst2|xbitcnt[14]~62_combout\,
	cout => \uart_inst|inst2|xbitcnt[14]~63\);

-- Location: FF_X24_Y7_N29
\uart_inst|inst2|xbitcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[14]~62_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(14));

-- Location: LCCOMB_X24_Y7_N30
\uart_inst|inst2|xbitcnt[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[15]~64_combout\ = (\uart_inst|inst2|xbitcnt\(15) & (!\uart_inst|inst2|xbitcnt[14]~63\)) # (!\uart_inst|inst2|xbitcnt\(15) & ((\uart_inst|inst2|xbitcnt[14]~63\) # (GND)))
-- \uart_inst|inst2|xbitcnt[15]~65\ = CARRY((!\uart_inst|inst2|xbitcnt[14]~63\) # (!\uart_inst|inst2|xbitcnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(15),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[14]~63\,
	combout => \uart_inst|inst2|xbitcnt[15]~64_combout\,
	cout => \uart_inst|inst2|xbitcnt[15]~65\);

-- Location: FF_X24_Y7_N31
\uart_inst|inst2|xbitcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[15]~64_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(15));

-- Location: LCCOMB_X24_Y6_N0
\uart_inst|inst2|xbitcnt[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[16]~66_combout\ = (\uart_inst|inst2|xbitcnt\(16) & (\uart_inst|inst2|xbitcnt[15]~65\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(16) & (!\uart_inst|inst2|xbitcnt[15]~65\ & VCC))
-- \uart_inst|inst2|xbitcnt[16]~67\ = CARRY((\uart_inst|inst2|xbitcnt\(16) & !\uart_inst|inst2|xbitcnt[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(16),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[15]~65\,
	combout => \uart_inst|inst2|xbitcnt[16]~66_combout\,
	cout => \uart_inst|inst2|xbitcnt[16]~67\);

-- Location: FF_X24_Y6_N1
\uart_inst|inst2|xbitcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[16]~66_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(16));

-- Location: LCCOMB_X24_Y6_N2
\uart_inst|inst2|xbitcnt[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[17]~68_combout\ = (\uart_inst|inst2|xbitcnt\(17) & (!\uart_inst|inst2|xbitcnt[16]~67\)) # (!\uart_inst|inst2|xbitcnt\(17) & ((\uart_inst|inst2|xbitcnt[16]~67\) # (GND)))
-- \uart_inst|inst2|xbitcnt[17]~69\ = CARRY((!\uart_inst|inst2|xbitcnt[16]~67\) # (!\uart_inst|inst2|xbitcnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(17),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[16]~67\,
	combout => \uart_inst|inst2|xbitcnt[17]~68_combout\,
	cout => \uart_inst|inst2|xbitcnt[17]~69\);

-- Location: FF_X24_Y6_N3
\uart_inst|inst2|xbitcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[17]~68_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(17));

-- Location: LCCOMB_X24_Y6_N4
\uart_inst|inst2|xbitcnt[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[18]~70_combout\ = (\uart_inst|inst2|xbitcnt\(18) & (\uart_inst|inst2|xbitcnt[17]~69\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(18) & (!\uart_inst|inst2|xbitcnt[17]~69\ & VCC))
-- \uart_inst|inst2|xbitcnt[18]~71\ = CARRY((\uart_inst|inst2|xbitcnt\(18) & !\uart_inst|inst2|xbitcnt[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(18),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[17]~69\,
	combout => \uart_inst|inst2|xbitcnt[18]~70_combout\,
	cout => \uart_inst|inst2|xbitcnt[18]~71\);

-- Location: FF_X24_Y6_N5
\uart_inst|inst2|xbitcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[18]~70_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(18));

-- Location: LCCOMB_X24_Y6_N6
\uart_inst|inst2|xbitcnt[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[19]~72_combout\ = (\uart_inst|inst2|xbitcnt\(19) & (!\uart_inst|inst2|xbitcnt[18]~71\)) # (!\uart_inst|inst2|xbitcnt\(19) & ((\uart_inst|inst2|xbitcnt[18]~71\) # (GND)))
-- \uart_inst|inst2|xbitcnt[19]~73\ = CARRY((!\uart_inst|inst2|xbitcnt[18]~71\) # (!\uart_inst|inst2|xbitcnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(19),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[18]~71\,
	combout => \uart_inst|inst2|xbitcnt[19]~72_combout\,
	cout => \uart_inst|inst2|xbitcnt[19]~73\);

-- Location: FF_X24_Y6_N7
\uart_inst|inst2|xbitcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[19]~72_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(19));

-- Location: LCCOMB_X24_Y6_N8
\uart_inst|inst2|xbitcnt[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[20]~74_combout\ = (\uart_inst|inst2|xbitcnt\(20) & (\uart_inst|inst2|xbitcnt[19]~73\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(20) & (!\uart_inst|inst2|xbitcnt[19]~73\ & VCC))
-- \uart_inst|inst2|xbitcnt[20]~75\ = CARRY((\uart_inst|inst2|xbitcnt\(20) & !\uart_inst|inst2|xbitcnt[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(20),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[19]~73\,
	combout => \uart_inst|inst2|xbitcnt[20]~74_combout\,
	cout => \uart_inst|inst2|xbitcnt[20]~75\);

-- Location: FF_X24_Y6_N9
\uart_inst|inst2|xbitcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[20]~74_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(20));

-- Location: LCCOMB_X24_Y6_N10
\uart_inst|inst2|xbitcnt[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[21]~76_combout\ = (\uart_inst|inst2|xbitcnt\(21) & (!\uart_inst|inst2|xbitcnt[20]~75\)) # (!\uart_inst|inst2|xbitcnt\(21) & ((\uart_inst|inst2|xbitcnt[20]~75\) # (GND)))
-- \uart_inst|inst2|xbitcnt[21]~77\ = CARRY((!\uart_inst|inst2|xbitcnt[20]~75\) # (!\uart_inst|inst2|xbitcnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(21),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[20]~75\,
	combout => \uart_inst|inst2|xbitcnt[21]~76_combout\,
	cout => \uart_inst|inst2|xbitcnt[21]~77\);

-- Location: FF_X24_Y6_N11
\uart_inst|inst2|xbitcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[21]~76_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(21));

-- Location: LCCOMB_X24_Y6_N12
\uart_inst|inst2|xbitcnt[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[22]~78_combout\ = (\uart_inst|inst2|xbitcnt\(22) & (\uart_inst|inst2|xbitcnt[21]~77\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(22) & (!\uart_inst|inst2|xbitcnt[21]~77\ & VCC))
-- \uart_inst|inst2|xbitcnt[22]~79\ = CARRY((\uart_inst|inst2|xbitcnt\(22) & !\uart_inst|inst2|xbitcnt[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(22),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[21]~77\,
	combout => \uart_inst|inst2|xbitcnt[22]~78_combout\,
	cout => \uart_inst|inst2|xbitcnt[22]~79\);

-- Location: FF_X24_Y6_N13
\uart_inst|inst2|xbitcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[22]~78_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(22));

-- Location: LCCOMB_X24_Y6_N14
\uart_inst|inst2|xbitcnt[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[23]~80_combout\ = (\uart_inst|inst2|xbitcnt\(23) & (!\uart_inst|inst2|xbitcnt[22]~79\)) # (!\uart_inst|inst2|xbitcnt\(23) & ((\uart_inst|inst2|xbitcnt[22]~79\) # (GND)))
-- \uart_inst|inst2|xbitcnt[23]~81\ = CARRY((!\uart_inst|inst2|xbitcnt[22]~79\) # (!\uart_inst|inst2|xbitcnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(23),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[22]~79\,
	combout => \uart_inst|inst2|xbitcnt[23]~80_combout\,
	cout => \uart_inst|inst2|xbitcnt[23]~81\);

-- Location: FF_X24_Y6_N15
\uart_inst|inst2|xbitcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[23]~80_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(23));

-- Location: LCCOMB_X24_Y6_N16
\uart_inst|inst2|xbitcnt[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[24]~82_combout\ = (\uart_inst|inst2|xbitcnt\(24) & (\uart_inst|inst2|xbitcnt[23]~81\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(24) & (!\uart_inst|inst2|xbitcnt[23]~81\ & VCC))
-- \uart_inst|inst2|xbitcnt[24]~83\ = CARRY((\uart_inst|inst2|xbitcnt\(24) & !\uart_inst|inst2|xbitcnt[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(24),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[23]~81\,
	combout => \uart_inst|inst2|xbitcnt[24]~82_combout\,
	cout => \uart_inst|inst2|xbitcnt[24]~83\);

-- Location: FF_X24_Y6_N17
\uart_inst|inst2|xbitcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[24]~82_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(24));

-- Location: LCCOMB_X24_Y6_N18
\uart_inst|inst2|xbitcnt[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[25]~84_combout\ = (\uart_inst|inst2|xbitcnt\(25) & (!\uart_inst|inst2|xbitcnt[24]~83\)) # (!\uart_inst|inst2|xbitcnt\(25) & ((\uart_inst|inst2|xbitcnt[24]~83\) # (GND)))
-- \uart_inst|inst2|xbitcnt[25]~85\ = CARRY((!\uart_inst|inst2|xbitcnt[24]~83\) # (!\uart_inst|inst2|xbitcnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(25),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[24]~83\,
	combout => \uart_inst|inst2|xbitcnt[25]~84_combout\,
	cout => \uart_inst|inst2|xbitcnt[25]~85\);

-- Location: FF_X24_Y6_N19
\uart_inst|inst2|xbitcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[25]~84_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(25));

-- Location: LCCOMB_X24_Y6_N20
\uart_inst|inst2|xbitcnt[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[26]~86_combout\ = (\uart_inst|inst2|xbitcnt\(26) & (\uart_inst|inst2|xbitcnt[25]~85\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(26) & (!\uart_inst|inst2|xbitcnt[25]~85\ & VCC))
-- \uart_inst|inst2|xbitcnt[26]~87\ = CARRY((\uart_inst|inst2|xbitcnt\(26) & !\uart_inst|inst2|xbitcnt[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(26),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[25]~85\,
	combout => \uart_inst|inst2|xbitcnt[26]~86_combout\,
	cout => \uart_inst|inst2|xbitcnt[26]~87\);

-- Location: FF_X24_Y6_N21
\uart_inst|inst2|xbitcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[26]~86_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(26));

-- Location: LCCOMB_X24_Y6_N22
\uart_inst|inst2|xbitcnt[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[27]~88_combout\ = (\uart_inst|inst2|xbitcnt\(27) & (!\uart_inst|inst2|xbitcnt[26]~87\)) # (!\uart_inst|inst2|xbitcnt\(27) & ((\uart_inst|inst2|xbitcnt[26]~87\) # (GND)))
-- \uart_inst|inst2|xbitcnt[27]~89\ = CARRY((!\uart_inst|inst2|xbitcnt[26]~87\) # (!\uart_inst|inst2|xbitcnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(27),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[26]~87\,
	combout => \uart_inst|inst2|xbitcnt[27]~88_combout\,
	cout => \uart_inst|inst2|xbitcnt[27]~89\);

-- Location: FF_X24_Y6_N23
\uart_inst|inst2|xbitcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[27]~88_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(27));

-- Location: LCCOMB_X24_Y6_N24
\uart_inst|inst2|xbitcnt[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[28]~90_combout\ = (\uart_inst|inst2|xbitcnt\(28) & (\uart_inst|inst2|xbitcnt[27]~89\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(28) & (!\uart_inst|inst2|xbitcnt[27]~89\ & VCC))
-- \uart_inst|inst2|xbitcnt[28]~91\ = CARRY((\uart_inst|inst2|xbitcnt\(28) & !\uart_inst|inst2|xbitcnt[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(28),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[27]~89\,
	combout => \uart_inst|inst2|xbitcnt[28]~90_combout\,
	cout => \uart_inst|inst2|xbitcnt[28]~91\);

-- Location: FF_X24_Y6_N25
\uart_inst|inst2|xbitcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[28]~90_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(28));

-- Location: LCCOMB_X24_Y6_N26
\uart_inst|inst2|xbitcnt[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[29]~92_combout\ = (\uart_inst|inst2|xbitcnt\(29) & (!\uart_inst|inst2|xbitcnt[28]~91\)) # (!\uart_inst|inst2|xbitcnt\(29) & ((\uart_inst|inst2|xbitcnt[28]~91\) # (GND)))
-- \uart_inst|inst2|xbitcnt[29]~93\ = CARRY((!\uart_inst|inst2|xbitcnt[28]~91\) # (!\uart_inst|inst2|xbitcnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(29),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[28]~91\,
	combout => \uart_inst|inst2|xbitcnt[29]~92_combout\,
	cout => \uart_inst|inst2|xbitcnt[29]~93\);

-- Location: FF_X24_Y6_N27
\uart_inst|inst2|xbitcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[29]~92_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(29));

-- Location: LCCOMB_X24_Y6_N28
\uart_inst|inst2|xbitcnt[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[30]~94_combout\ = (\uart_inst|inst2|xbitcnt\(30) & (\uart_inst|inst2|xbitcnt[29]~93\ $ (GND))) # (!\uart_inst|inst2|xbitcnt\(30) & (!\uart_inst|inst2|xbitcnt[29]~93\ & VCC))
-- \uart_inst|inst2|xbitcnt[30]~95\ = CARRY((\uart_inst|inst2|xbitcnt\(30) & !\uart_inst|inst2|xbitcnt[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|xbitcnt\(30),
	datad => VCC,
	cin => \uart_inst|inst2|xbitcnt[29]~93\,
	combout => \uart_inst|inst2|xbitcnt[30]~94_combout\,
	cout => \uart_inst|inst2|xbitcnt[30]~95\);

-- Location: FF_X24_Y6_N29
\uart_inst|inst2|xbitcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[30]~94_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(30));

-- Location: LCCOMB_X24_Y6_N30
\uart_inst|inst2|xbitcnt[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|xbitcnt[31]~96_combout\ = \uart_inst|inst2|xbitcnt\(31) $ (\uart_inst|inst2|xbitcnt[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(31),
	cin => \uart_inst|inst2|xbitcnt[30]~95\,
	combout => \uart_inst|inst2|xbitcnt[31]~96_combout\);

-- Location: FF_X24_Y6_N31
\uart_inst|inst2|xbitcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|xbitcnt[31]~96_combout\,
	sclr => \uart_inst|inst2|ALT_INV_state.x_shift~q\,
	ena => \uart_inst|inst2|xbitcnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|xbitcnt\(31));

-- Location: LCCOMB_X25_Y7_N12
\uart_inst|inst2|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~9_combout\ = (\uart_inst|inst2|xbitcnt\(28)) # ((\uart_inst|inst2|xbitcnt\(29)) # ((\uart_inst|inst2|xbitcnt\(30)) # (\uart_inst|inst2|xbitcnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(28),
	datab => \uart_inst|inst2|xbitcnt\(29),
	datac => \uart_inst|inst2|xbitcnt\(30),
	datad => \uart_inst|inst2|xbitcnt\(31),
	combout => \uart_inst|inst2|Equal1~9_combout\);

-- Location: LCCOMB_X25_Y6_N0
\uart_inst|inst2|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~8_combout\ = (\uart_inst|inst2|xbitcnt\(24)) # ((\uart_inst|inst2|xbitcnt\(26)) # ((\uart_inst|inst2|xbitcnt\(27)) # (\uart_inst|inst2|xbitcnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(24),
	datab => \uart_inst|inst2|xbitcnt\(26),
	datac => \uart_inst|inst2|xbitcnt\(27),
	datad => \uart_inst|inst2|xbitcnt\(25),
	combout => \uart_inst|inst2|Equal1~8_combout\);

-- Location: LCCOMB_X25_Y7_N4
\uart_inst|inst2|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~6_combout\ = (\uart_inst|inst2|xbitcnt\(20)) # (\uart_inst|inst2|xbitcnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst2|xbitcnt\(20),
	datad => \uart_inst|inst2|xbitcnt\(21),
	combout => \uart_inst|inst2|Equal1~6_combout\);

-- Location: LCCOMB_X25_Y7_N10
\uart_inst|inst2|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~5_combout\ = (\uart_inst|inst2|xbitcnt\(18)) # ((\uart_inst|inst2|xbitcnt\(19)) # ((\uart_inst|inst2|xbitcnt\(17)) # (\uart_inst|inst2|xbitcnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(18),
	datab => \uart_inst|inst2|xbitcnt\(19),
	datac => \uart_inst|inst2|xbitcnt\(17),
	datad => \uart_inst|inst2|xbitcnt\(16),
	combout => \uart_inst|inst2|Equal1~5_combout\);

-- Location: LCCOMB_X25_Y7_N26
\uart_inst|inst2|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~7_combout\ = (\uart_inst|inst2|xbitcnt\(23)) # ((\uart_inst|inst2|xbitcnt\(22)) # ((\uart_inst|inst2|Equal1~6_combout\) # (\uart_inst|inst2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(23),
	datab => \uart_inst|inst2|xbitcnt\(22),
	datac => \uart_inst|inst2|Equal1~6_combout\,
	datad => \uart_inst|inst2|Equal1~5_combout\,
	combout => \uart_inst|inst2|Equal1~7_combout\);

-- Location: LCCOMB_X25_Y7_N30
\uart_inst|inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~0_combout\ = (\uart_inst|inst2|xbitcnt\(0)) # (((\uart_inst|inst2|xbitcnt\(2)) # (\uart_inst|inst2|xbitcnt\(1))) # (!\uart_inst|inst2|xbitcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(0),
	datab => \uart_inst|inst2|xbitcnt\(3),
	datac => \uart_inst|inst2|xbitcnt\(2),
	datad => \uart_inst|inst2|xbitcnt\(1),
	combout => \uart_inst|inst2|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\uart_inst|inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~2_combout\ = (\uart_inst|inst2|xbitcnt\(8)) # ((\uart_inst|inst2|xbitcnt\(11)) # ((\uart_inst|inst2|xbitcnt\(9)) # (\uart_inst|inst2|xbitcnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(8),
	datab => \uart_inst|inst2|xbitcnt\(11),
	datac => \uart_inst|inst2|xbitcnt\(9),
	datad => \uart_inst|inst2|xbitcnt\(10),
	combout => \uart_inst|inst2|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y7_N14
\uart_inst|inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~3_combout\ = (\uart_inst|inst2|xbitcnt\(13)) # ((\uart_inst|inst2|xbitcnt\(12)) # ((\uart_inst|inst2|xbitcnt\(14)) # (\uart_inst|inst2|xbitcnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(13),
	datab => \uart_inst|inst2|xbitcnt\(12),
	datac => \uart_inst|inst2|xbitcnt\(14),
	datad => \uart_inst|inst2|xbitcnt\(15),
	combout => \uart_inst|inst2|Equal1~3_combout\);

-- Location: LCCOMB_X23_Y7_N12
\uart_inst|inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~1_combout\ = (\uart_inst|inst2|xbitcnt\(7)) # ((\uart_inst|inst2|xbitcnt\(5)) # ((\uart_inst|inst2|xbitcnt\(6)) # (\uart_inst|inst2|xbitcnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(7),
	datab => \uart_inst|inst2|xbitcnt\(5),
	datac => \uart_inst|inst2|xbitcnt\(6),
	datad => \uart_inst|inst2|xbitcnt\(4),
	combout => \uart_inst|inst2|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y7_N20
\uart_inst|inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~4_combout\ = (\uart_inst|inst2|Equal1~0_combout\) # ((\uart_inst|inst2|Equal1~2_combout\) # ((\uart_inst|inst2|Equal1~3_combout\) # (\uart_inst|inst2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Equal1~0_combout\,
	datab => \uart_inst|inst2|Equal1~2_combout\,
	datac => \uart_inst|inst2|Equal1~3_combout\,
	datad => \uart_inst|inst2|Equal1~1_combout\,
	combout => \uart_inst|inst2|Equal1~4_combout\);

-- Location: LCCOMB_X25_Y7_N6
\uart_inst|inst2|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Equal1~10_combout\ = (\uart_inst|inst2|Equal1~9_combout\) # ((\uart_inst|inst2|Equal1~8_combout\) # ((\uart_inst|inst2|Equal1~7_combout\) # (\uart_inst|inst2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Equal1~9_combout\,
	datab => \uart_inst|inst2|Equal1~8_combout\,
	datac => \uart_inst|inst2|Equal1~7_combout\,
	datad => \uart_inst|inst2|Equal1~4_combout\,
	combout => \uart_inst|inst2|Equal1~10_combout\);

-- Location: LCCOMB_X25_Y8_N24
\uart_inst|inst2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector4~0_combout\ = (\uart_inst|inst2|state.x_stop~q\ & (((!\uart_inst|inst2|Equal0~0_combout\ & !\uart_inst|inst2|xcnt16\(4))) # (!\U14|txd_cmd_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|txd_cmd_latch~q\,
	datab => \uart_inst|inst2|Equal0~0_combout\,
	datac => \uart_inst|inst2|xcnt16\(4),
	datad => \uart_inst|inst2|state.x_stop~q\,
	combout => \uart_inst|inst2|Selector4~0_combout\);

-- Location: LCCOMB_X25_Y7_N0
\uart_inst|inst2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector4~1_combout\ = (\uart_inst|inst2|Selector4~0_combout\) # ((!\uart_inst|inst2|Equal1~10_combout\ & (\uart_inst|inst2|state.x_wait~q\ & \uart_inst|inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Equal1~10_combout\,
	datab => \uart_inst|inst2|state.x_wait~q\,
	datac => \uart_inst|inst2|Selector4~0_combout\,
	datad => \uart_inst|inst2|LessThan0~0_combout\,
	combout => \uart_inst|inst2|Selector4~1_combout\);

-- Location: FF_X25_Y7_N1
\uart_inst|inst2|state.x_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|Selector4~1_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|state.x_stop~q\);

-- Location: LCCOMB_X25_Y8_N12
\uart_inst|inst2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector0~0_combout\ = (\uart_inst|inst2|state.x_stop~q\ & ((\uart_inst|inst2|Equal0~0_combout\) # (\uart_inst|inst2|xcnt16\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|state.x_stop~q\,
	datac => \uart_inst|inst2|Equal0~0_combout\,
	datad => \uart_inst|inst2|xcnt16\(4),
	combout => \uart_inst|inst2|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\uart_inst|inst2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector0~1_combout\ = ((\uart_inst|inst2|state.x_idle~q\ & !\uart_inst|inst2|Selector0~0_combout\)) # (!\U14|txd_cmd_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|txd_cmd_latch~q\,
	datac => \uart_inst|inst2|state.x_idle~q\,
	datad => \uart_inst|inst2|Selector0~0_combout\,
	combout => \uart_inst|inst2|Selector0~1_combout\);

-- Location: FF_X25_Y8_N21
\uart_inst|inst2|state.x_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|Selector0~1_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|state.x_idle~q\);

-- Location: LCCOMB_X25_Y8_N16
\uart_inst|inst2|txd_done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_done~2_combout\ = (\uart_inst|inst2|state.x_idle~q\ & (((\uart_inst|inst2|txd_done~q\) # (\uart_inst|inst2|Selector0~0_combout\)))) # (!\uart_inst|inst2|state.x_idle~q\ & (\U14|txd_cmd_latch~q\ & (\uart_inst|inst2|txd_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|txd_cmd_latch~q\,
	datab => \uart_inst|inst2|state.x_idle~q\,
	datac => \uart_inst|inst2|txd_done~q\,
	datad => \uart_inst|inst2|Selector0~0_combout\,
	combout => \uart_inst|inst2|txd_done~2_combout\);

-- Location: LCCOMB_X25_Y8_N28
\uart_inst|inst2|txd_done~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_done~feeder_combout\ = \uart_inst|inst2|txd_done~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst2|txd_done~2_combout\,
	combout => \uart_inst|inst2|txd_done~feeder_combout\);

-- Location: FF_X25_Y8_N29
\uart_inst|inst2|txd_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|txd_done~feeder_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_done~q\);

-- Location: LCCOMB_X25_Y17_N20
\uart_inst|inst7|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|pulse~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_inst|inst7|pulse~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N26
\uart_inst|inst7|counter[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[0]~37_combout\ = (\uart_inst|inst7|Equal0~10_combout\ & !\uart_inst|inst7|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|inst7|Equal0~10_combout\,
	datad => \uart_inst|inst7|counter\(0),
	combout => \uart_inst|inst7|counter[0]~37_combout\);

-- Location: FF_X26_Y17_N1
\uart_inst|inst7|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	asdata => \uart_inst|inst7|counter[0]~37_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(0));

-- Location: LCCOMB_X26_Y17_N2
\uart_inst|inst7|counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[1]~31_combout\ = (\uart_inst|inst7|counter\(0) & (\uart_inst|inst7|counter\(1) $ (VCC))) # (!\uart_inst|inst7|counter\(0) & (\uart_inst|inst7|counter\(1) & VCC))
-- \uart_inst|inst7|counter[1]~32\ = CARRY((\uart_inst|inst7|counter\(0) & \uart_inst|inst7|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(0),
	datab => \uart_inst|inst7|counter\(1),
	datad => VCC,
	combout => \uart_inst|inst7|counter[1]~31_combout\,
	cout => \uart_inst|inst7|counter[1]~32\);

-- Location: FF_X26_Y17_N3
\uart_inst|inst7|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[1]~31_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(1));

-- Location: LCCOMB_X26_Y17_N4
\uart_inst|inst7|counter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[2]~33_combout\ = (\uart_inst|inst7|counter\(2) & (!\uart_inst|inst7|counter[1]~32\)) # (!\uart_inst|inst7|counter\(2) & ((\uart_inst|inst7|counter[1]~32\) # (GND)))
-- \uart_inst|inst7|counter[2]~34\ = CARRY((!\uart_inst|inst7|counter[1]~32\) # (!\uart_inst|inst7|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(2),
	datad => VCC,
	cin => \uart_inst|inst7|counter[1]~32\,
	combout => \uart_inst|inst7|counter[2]~33_combout\,
	cout => \uart_inst|inst7|counter[2]~34\);

-- Location: FF_X26_Y17_N5
\uart_inst|inst7|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[2]~33_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(2));

-- Location: LCCOMB_X26_Y17_N6
\uart_inst|inst7|counter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[3]~35_combout\ = (\uart_inst|inst7|counter\(3) & (\uart_inst|inst7|counter[2]~34\ $ (GND))) # (!\uart_inst|inst7|counter\(3) & (!\uart_inst|inst7|counter[2]~34\ & VCC))
-- \uart_inst|inst7|counter[3]~36\ = CARRY((\uart_inst|inst7|counter\(3) & !\uart_inst|inst7|counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(3),
	datad => VCC,
	cin => \uart_inst|inst7|counter[2]~34\,
	combout => \uart_inst|inst7|counter[3]~35_combout\,
	cout => \uart_inst|inst7|counter[3]~36\);

-- Location: FF_X26_Y17_N7
\uart_inst|inst7|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[3]~35_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(3));

-- Location: LCCOMB_X26_Y17_N8
\uart_inst|inst7|counter[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[4]~38_combout\ = (\uart_inst|inst7|counter\(4) & (!\uart_inst|inst7|counter[3]~36\)) # (!\uart_inst|inst7|counter\(4) & ((\uart_inst|inst7|counter[3]~36\) # (GND)))
-- \uart_inst|inst7|counter[4]~39\ = CARRY((!\uart_inst|inst7|counter[3]~36\) # (!\uart_inst|inst7|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(4),
	datad => VCC,
	cin => \uart_inst|inst7|counter[3]~36\,
	combout => \uart_inst|inst7|counter[4]~38_combout\,
	cout => \uart_inst|inst7|counter[4]~39\);

-- Location: FF_X26_Y17_N9
\uart_inst|inst7|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[4]~38_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(4));

-- Location: LCCOMB_X26_Y17_N10
\uart_inst|inst7|counter[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[5]~40_combout\ = (\uart_inst|inst7|counter\(5) & (\uart_inst|inst7|counter[4]~39\ $ (GND))) # (!\uart_inst|inst7|counter\(5) & (!\uart_inst|inst7|counter[4]~39\ & VCC))
-- \uart_inst|inst7|counter[5]~41\ = CARRY((\uart_inst|inst7|counter\(5) & !\uart_inst|inst7|counter[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(5),
	datad => VCC,
	cin => \uart_inst|inst7|counter[4]~39\,
	combout => \uart_inst|inst7|counter[5]~40_combout\,
	cout => \uart_inst|inst7|counter[5]~41\);

-- Location: FF_X26_Y17_N11
\uart_inst|inst7|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[5]~40_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(5));

-- Location: LCCOMB_X26_Y17_N12
\uart_inst|inst7|counter[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[6]~42_combout\ = (\uart_inst|inst7|counter\(6) & (!\uart_inst|inst7|counter[5]~41\)) # (!\uart_inst|inst7|counter\(6) & ((\uart_inst|inst7|counter[5]~41\) # (GND)))
-- \uart_inst|inst7|counter[6]~43\ = CARRY((!\uart_inst|inst7|counter[5]~41\) # (!\uart_inst|inst7|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(6),
	datad => VCC,
	cin => \uart_inst|inst7|counter[5]~41\,
	combout => \uart_inst|inst7|counter[6]~42_combout\,
	cout => \uart_inst|inst7|counter[6]~43\);

-- Location: FF_X26_Y17_N13
\uart_inst|inst7|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[6]~42_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(6));

-- Location: LCCOMB_X26_Y17_N14
\uart_inst|inst7|counter[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[7]~44_combout\ = (\uart_inst|inst7|counter\(7) & (\uart_inst|inst7|counter[6]~43\ $ (GND))) # (!\uart_inst|inst7|counter\(7) & (!\uart_inst|inst7|counter[6]~43\ & VCC))
-- \uart_inst|inst7|counter[7]~45\ = CARRY((\uart_inst|inst7|counter\(7) & !\uart_inst|inst7|counter[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(7),
	datad => VCC,
	cin => \uart_inst|inst7|counter[6]~43\,
	combout => \uart_inst|inst7|counter[7]~44_combout\,
	cout => \uart_inst|inst7|counter[7]~45\);

-- Location: FF_X26_Y17_N15
\uart_inst|inst7|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[7]~44_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(7));

-- Location: LCCOMB_X26_Y17_N16
\uart_inst|inst7|counter[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[8]~46_combout\ = (\uart_inst|inst7|counter\(8) & (!\uart_inst|inst7|counter[7]~45\)) # (!\uart_inst|inst7|counter\(8) & ((\uart_inst|inst7|counter[7]~45\) # (GND)))
-- \uart_inst|inst7|counter[8]~47\ = CARRY((!\uart_inst|inst7|counter[7]~45\) # (!\uart_inst|inst7|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(8),
	datad => VCC,
	cin => \uart_inst|inst7|counter[7]~45\,
	combout => \uart_inst|inst7|counter[8]~46_combout\,
	cout => \uart_inst|inst7|counter[8]~47\);

-- Location: FF_X26_Y17_N17
\uart_inst|inst7|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[8]~46_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(8));

-- Location: LCCOMB_X26_Y17_N18
\uart_inst|inst7|counter[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[9]~48_combout\ = (\uart_inst|inst7|counter\(9) & (\uart_inst|inst7|counter[8]~47\ $ (GND))) # (!\uart_inst|inst7|counter\(9) & (!\uart_inst|inst7|counter[8]~47\ & VCC))
-- \uart_inst|inst7|counter[9]~49\ = CARRY((\uart_inst|inst7|counter\(9) & !\uart_inst|inst7|counter[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(9),
	datad => VCC,
	cin => \uart_inst|inst7|counter[8]~47\,
	combout => \uart_inst|inst7|counter[9]~48_combout\,
	cout => \uart_inst|inst7|counter[9]~49\);

-- Location: FF_X26_Y17_N19
\uart_inst|inst7|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[9]~48_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(9));

-- Location: LCCOMB_X26_Y17_N20
\uart_inst|inst7|counter[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[10]~50_combout\ = (\uart_inst|inst7|counter\(10) & (!\uart_inst|inst7|counter[9]~49\)) # (!\uart_inst|inst7|counter\(10) & ((\uart_inst|inst7|counter[9]~49\) # (GND)))
-- \uart_inst|inst7|counter[10]~51\ = CARRY((!\uart_inst|inst7|counter[9]~49\) # (!\uart_inst|inst7|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(10),
	datad => VCC,
	cin => \uart_inst|inst7|counter[9]~49\,
	combout => \uart_inst|inst7|counter[10]~50_combout\,
	cout => \uart_inst|inst7|counter[10]~51\);

-- Location: FF_X26_Y17_N21
\uart_inst|inst7|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[10]~50_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(10));

-- Location: LCCOMB_X26_Y17_N22
\uart_inst|inst7|counter[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[11]~52_combout\ = (\uart_inst|inst7|counter\(11) & (\uart_inst|inst7|counter[10]~51\ $ (GND))) # (!\uart_inst|inst7|counter\(11) & (!\uart_inst|inst7|counter[10]~51\ & VCC))
-- \uart_inst|inst7|counter[11]~53\ = CARRY((\uart_inst|inst7|counter\(11) & !\uart_inst|inst7|counter[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(11),
	datad => VCC,
	cin => \uart_inst|inst7|counter[10]~51\,
	combout => \uart_inst|inst7|counter[11]~52_combout\,
	cout => \uart_inst|inst7|counter[11]~53\);

-- Location: FF_X26_Y17_N23
\uart_inst|inst7|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[11]~52_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(11));

-- Location: LCCOMB_X26_Y17_N24
\uart_inst|inst7|counter[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[12]~54_combout\ = (\uart_inst|inst7|counter\(12) & (!\uart_inst|inst7|counter[11]~53\)) # (!\uart_inst|inst7|counter\(12) & ((\uart_inst|inst7|counter[11]~53\) # (GND)))
-- \uart_inst|inst7|counter[12]~55\ = CARRY((!\uart_inst|inst7|counter[11]~53\) # (!\uart_inst|inst7|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(12),
	datad => VCC,
	cin => \uart_inst|inst7|counter[11]~53\,
	combout => \uart_inst|inst7|counter[12]~54_combout\,
	cout => \uart_inst|inst7|counter[12]~55\);

-- Location: FF_X26_Y17_N25
\uart_inst|inst7|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[12]~54_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(12));

-- Location: LCCOMB_X26_Y17_N26
\uart_inst|inst7|counter[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[13]~56_combout\ = (\uart_inst|inst7|counter\(13) & (\uart_inst|inst7|counter[12]~55\ $ (GND))) # (!\uart_inst|inst7|counter\(13) & (!\uart_inst|inst7|counter[12]~55\ & VCC))
-- \uart_inst|inst7|counter[13]~57\ = CARRY((\uart_inst|inst7|counter\(13) & !\uart_inst|inst7|counter[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(13),
	datad => VCC,
	cin => \uart_inst|inst7|counter[12]~55\,
	combout => \uart_inst|inst7|counter[13]~56_combout\,
	cout => \uart_inst|inst7|counter[13]~57\);

-- Location: FF_X26_Y17_N27
\uart_inst|inst7|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[13]~56_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(13));

-- Location: LCCOMB_X26_Y17_N28
\uart_inst|inst7|counter[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[14]~58_combout\ = (\uart_inst|inst7|counter\(14) & (!\uart_inst|inst7|counter[13]~57\)) # (!\uart_inst|inst7|counter\(14) & ((\uart_inst|inst7|counter[13]~57\) # (GND)))
-- \uart_inst|inst7|counter[14]~59\ = CARRY((!\uart_inst|inst7|counter[13]~57\) # (!\uart_inst|inst7|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(14),
	datad => VCC,
	cin => \uart_inst|inst7|counter[13]~57\,
	combout => \uart_inst|inst7|counter[14]~58_combout\,
	cout => \uart_inst|inst7|counter[14]~59\);

-- Location: FF_X26_Y17_N29
\uart_inst|inst7|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[14]~58_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(14));

-- Location: LCCOMB_X26_Y17_N30
\uart_inst|inst7|counter[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[15]~60_combout\ = (\uart_inst|inst7|counter\(15) & (\uart_inst|inst7|counter[14]~59\ $ (GND))) # (!\uart_inst|inst7|counter\(15) & (!\uart_inst|inst7|counter[14]~59\ & VCC))
-- \uart_inst|inst7|counter[15]~61\ = CARRY((\uart_inst|inst7|counter\(15) & !\uart_inst|inst7|counter[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(15),
	datad => VCC,
	cin => \uart_inst|inst7|counter[14]~59\,
	combout => \uart_inst|inst7|counter[15]~60_combout\,
	cout => \uart_inst|inst7|counter[15]~61\);

-- Location: FF_X26_Y17_N31
\uart_inst|inst7|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[15]~60_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(15));

-- Location: LCCOMB_X26_Y16_N0
\uart_inst|inst7|counter[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[16]~62_combout\ = (\uart_inst|inst7|counter\(16) & (!\uart_inst|inst7|counter[15]~61\)) # (!\uart_inst|inst7|counter\(16) & ((\uart_inst|inst7|counter[15]~61\) # (GND)))
-- \uart_inst|inst7|counter[16]~63\ = CARRY((!\uart_inst|inst7|counter[15]~61\) # (!\uart_inst|inst7|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(16),
	datad => VCC,
	cin => \uart_inst|inst7|counter[15]~61\,
	combout => \uart_inst|inst7|counter[16]~62_combout\,
	cout => \uart_inst|inst7|counter[16]~63\);

-- Location: FF_X26_Y16_N1
\uart_inst|inst7|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[16]~62_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(16));

-- Location: LCCOMB_X26_Y16_N2
\uart_inst|inst7|counter[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[17]~64_combout\ = (\uart_inst|inst7|counter\(17) & (\uart_inst|inst7|counter[16]~63\ $ (GND))) # (!\uart_inst|inst7|counter\(17) & (!\uart_inst|inst7|counter[16]~63\ & VCC))
-- \uart_inst|inst7|counter[17]~65\ = CARRY((\uart_inst|inst7|counter\(17) & !\uart_inst|inst7|counter[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(17),
	datad => VCC,
	cin => \uart_inst|inst7|counter[16]~63\,
	combout => \uart_inst|inst7|counter[17]~64_combout\,
	cout => \uart_inst|inst7|counter[17]~65\);

-- Location: FF_X26_Y16_N3
\uart_inst|inst7|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[17]~64_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(17));

-- Location: LCCOMB_X26_Y16_N4
\uart_inst|inst7|counter[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[18]~66_combout\ = (\uart_inst|inst7|counter\(18) & (!\uart_inst|inst7|counter[17]~65\)) # (!\uart_inst|inst7|counter\(18) & ((\uart_inst|inst7|counter[17]~65\) # (GND)))
-- \uart_inst|inst7|counter[18]~67\ = CARRY((!\uart_inst|inst7|counter[17]~65\) # (!\uart_inst|inst7|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(18),
	datad => VCC,
	cin => \uart_inst|inst7|counter[17]~65\,
	combout => \uart_inst|inst7|counter[18]~66_combout\,
	cout => \uart_inst|inst7|counter[18]~67\);

-- Location: FF_X26_Y16_N5
\uart_inst|inst7|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[18]~66_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(18));

-- Location: LCCOMB_X26_Y16_N6
\uart_inst|inst7|counter[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[19]~68_combout\ = (\uart_inst|inst7|counter\(19) & (\uart_inst|inst7|counter[18]~67\ $ (GND))) # (!\uart_inst|inst7|counter\(19) & (!\uart_inst|inst7|counter[18]~67\ & VCC))
-- \uart_inst|inst7|counter[19]~69\ = CARRY((\uart_inst|inst7|counter\(19) & !\uart_inst|inst7|counter[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(19),
	datad => VCC,
	cin => \uart_inst|inst7|counter[18]~67\,
	combout => \uart_inst|inst7|counter[19]~68_combout\,
	cout => \uart_inst|inst7|counter[19]~69\);

-- Location: FF_X26_Y16_N7
\uart_inst|inst7|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[19]~68_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(19));

-- Location: LCCOMB_X26_Y16_N8
\uart_inst|inst7|counter[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[20]~70_combout\ = (\uart_inst|inst7|counter\(20) & (!\uart_inst|inst7|counter[19]~69\)) # (!\uart_inst|inst7|counter\(20) & ((\uart_inst|inst7|counter[19]~69\) # (GND)))
-- \uart_inst|inst7|counter[20]~71\ = CARRY((!\uart_inst|inst7|counter[19]~69\) # (!\uart_inst|inst7|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(20),
	datad => VCC,
	cin => \uart_inst|inst7|counter[19]~69\,
	combout => \uart_inst|inst7|counter[20]~70_combout\,
	cout => \uart_inst|inst7|counter[20]~71\);

-- Location: FF_X26_Y16_N9
\uart_inst|inst7|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[20]~70_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(20));

-- Location: LCCOMB_X26_Y16_N10
\uart_inst|inst7|counter[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[21]~72_combout\ = (\uart_inst|inst7|counter\(21) & (\uart_inst|inst7|counter[20]~71\ $ (GND))) # (!\uart_inst|inst7|counter\(21) & (!\uart_inst|inst7|counter[20]~71\ & VCC))
-- \uart_inst|inst7|counter[21]~73\ = CARRY((\uart_inst|inst7|counter\(21) & !\uart_inst|inst7|counter[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(21),
	datad => VCC,
	cin => \uart_inst|inst7|counter[20]~71\,
	combout => \uart_inst|inst7|counter[21]~72_combout\,
	cout => \uart_inst|inst7|counter[21]~73\);

-- Location: FF_X26_Y16_N11
\uart_inst|inst7|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[21]~72_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(21));

-- Location: LCCOMB_X26_Y16_N12
\uart_inst|inst7|counter[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[22]~74_combout\ = (\uart_inst|inst7|counter\(22) & (!\uart_inst|inst7|counter[21]~73\)) # (!\uart_inst|inst7|counter\(22) & ((\uart_inst|inst7|counter[21]~73\) # (GND)))
-- \uart_inst|inst7|counter[22]~75\ = CARRY((!\uart_inst|inst7|counter[21]~73\) # (!\uart_inst|inst7|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(22),
	datad => VCC,
	cin => \uart_inst|inst7|counter[21]~73\,
	combout => \uart_inst|inst7|counter[22]~74_combout\,
	cout => \uart_inst|inst7|counter[22]~75\);

-- Location: FF_X26_Y16_N13
\uart_inst|inst7|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[22]~74_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(22));

-- Location: LCCOMB_X26_Y16_N14
\uart_inst|inst7|counter[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[23]~76_combout\ = (\uart_inst|inst7|counter\(23) & (\uart_inst|inst7|counter[22]~75\ $ (GND))) # (!\uart_inst|inst7|counter\(23) & (!\uart_inst|inst7|counter[22]~75\ & VCC))
-- \uart_inst|inst7|counter[23]~77\ = CARRY((\uart_inst|inst7|counter\(23) & !\uart_inst|inst7|counter[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(23),
	datad => VCC,
	cin => \uart_inst|inst7|counter[22]~75\,
	combout => \uart_inst|inst7|counter[23]~76_combout\,
	cout => \uart_inst|inst7|counter[23]~77\);

-- Location: FF_X26_Y16_N15
\uart_inst|inst7|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[23]~76_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(23));

-- Location: LCCOMB_X26_Y16_N16
\uart_inst|inst7|counter[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[24]~78_combout\ = (\uart_inst|inst7|counter\(24) & (!\uart_inst|inst7|counter[23]~77\)) # (!\uart_inst|inst7|counter\(24) & ((\uart_inst|inst7|counter[23]~77\) # (GND)))
-- \uart_inst|inst7|counter[24]~79\ = CARRY((!\uart_inst|inst7|counter[23]~77\) # (!\uart_inst|inst7|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(24),
	datad => VCC,
	cin => \uart_inst|inst7|counter[23]~77\,
	combout => \uart_inst|inst7|counter[24]~78_combout\,
	cout => \uart_inst|inst7|counter[24]~79\);

-- Location: FF_X26_Y16_N17
\uart_inst|inst7|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[24]~78_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(24));

-- Location: LCCOMB_X26_Y16_N18
\uart_inst|inst7|counter[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[25]~80_combout\ = (\uart_inst|inst7|counter\(25) & (\uart_inst|inst7|counter[24]~79\ $ (GND))) # (!\uart_inst|inst7|counter\(25) & (!\uart_inst|inst7|counter[24]~79\ & VCC))
-- \uart_inst|inst7|counter[25]~81\ = CARRY((\uart_inst|inst7|counter\(25) & !\uart_inst|inst7|counter[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(25),
	datad => VCC,
	cin => \uart_inst|inst7|counter[24]~79\,
	combout => \uart_inst|inst7|counter[25]~80_combout\,
	cout => \uart_inst|inst7|counter[25]~81\);

-- Location: FF_X26_Y16_N19
\uart_inst|inst7|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[25]~80_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(25));

-- Location: LCCOMB_X26_Y16_N20
\uart_inst|inst7|counter[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[26]~82_combout\ = (\uart_inst|inst7|counter\(26) & (!\uart_inst|inst7|counter[25]~81\)) # (!\uart_inst|inst7|counter\(26) & ((\uart_inst|inst7|counter[25]~81\) # (GND)))
-- \uart_inst|inst7|counter[26]~83\ = CARRY((!\uart_inst|inst7|counter[25]~81\) # (!\uart_inst|inst7|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(26),
	datad => VCC,
	cin => \uart_inst|inst7|counter[25]~81\,
	combout => \uart_inst|inst7|counter[26]~82_combout\,
	cout => \uart_inst|inst7|counter[26]~83\);

-- Location: FF_X26_Y16_N21
\uart_inst|inst7|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[26]~82_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(26));

-- Location: LCCOMB_X26_Y16_N22
\uart_inst|inst7|counter[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[27]~84_combout\ = (\uart_inst|inst7|counter\(27) & (\uart_inst|inst7|counter[26]~83\ $ (GND))) # (!\uart_inst|inst7|counter\(27) & (!\uart_inst|inst7|counter[26]~83\ & VCC))
-- \uart_inst|inst7|counter[27]~85\ = CARRY((\uart_inst|inst7|counter\(27) & !\uart_inst|inst7|counter[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(27),
	datad => VCC,
	cin => \uart_inst|inst7|counter[26]~83\,
	combout => \uart_inst|inst7|counter[27]~84_combout\,
	cout => \uart_inst|inst7|counter[27]~85\);

-- Location: FF_X26_Y16_N23
\uart_inst|inst7|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[27]~84_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(27));

-- Location: LCCOMB_X26_Y16_N24
\uart_inst|inst7|counter[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[28]~86_combout\ = (\uart_inst|inst7|counter\(28) & (!\uart_inst|inst7|counter[27]~85\)) # (!\uart_inst|inst7|counter\(28) & ((\uart_inst|inst7|counter[27]~85\) # (GND)))
-- \uart_inst|inst7|counter[28]~87\ = CARRY((!\uart_inst|inst7|counter[27]~85\) # (!\uart_inst|inst7|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(28),
	datad => VCC,
	cin => \uart_inst|inst7|counter[27]~85\,
	combout => \uart_inst|inst7|counter[28]~86_combout\,
	cout => \uart_inst|inst7|counter[28]~87\);

-- Location: FF_X26_Y16_N25
\uart_inst|inst7|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[28]~86_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(28));

-- Location: LCCOMB_X26_Y16_N26
\uart_inst|inst7|counter[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[29]~88_combout\ = (\uart_inst|inst7|counter\(29) & (\uart_inst|inst7|counter[28]~87\ $ (GND))) # (!\uart_inst|inst7|counter\(29) & (!\uart_inst|inst7|counter[28]~87\ & VCC))
-- \uart_inst|inst7|counter[29]~89\ = CARRY((\uart_inst|inst7|counter\(29) & !\uart_inst|inst7|counter[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(29),
	datad => VCC,
	cin => \uart_inst|inst7|counter[28]~87\,
	combout => \uart_inst|inst7|counter[29]~88_combout\,
	cout => \uart_inst|inst7|counter[29]~89\);

-- Location: FF_X26_Y16_N27
\uart_inst|inst7|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[29]~88_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(29));

-- Location: LCCOMB_X26_Y16_N28
\uart_inst|inst7|counter[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[30]~90_combout\ = (\uart_inst|inst7|counter\(30) & (!\uart_inst|inst7|counter[29]~89\)) # (!\uart_inst|inst7|counter\(30) & ((\uart_inst|inst7|counter[29]~89\) # (GND)))
-- \uart_inst|inst7|counter[30]~91\ = CARRY((!\uart_inst|inst7|counter[29]~89\) # (!\uart_inst|inst7|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(30),
	datad => VCC,
	cin => \uart_inst|inst7|counter[29]~89\,
	combout => \uart_inst|inst7|counter[30]~90_combout\,
	cout => \uart_inst|inst7|counter[30]~91\);

-- Location: FF_X26_Y16_N29
\uart_inst|inst7|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[30]~90_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(30));

-- Location: LCCOMB_X26_Y16_N30
\uart_inst|inst7|counter[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|counter[31]~92_combout\ = \uart_inst|inst7|counter\(31) $ (!\uart_inst|inst7|counter[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(31),
	cin => \uart_inst|inst7|counter[30]~91\,
	combout => \uart_inst|inst7|counter[31]~92_combout\);

-- Location: FF_X26_Y16_N31
\uart_inst|inst7|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|counter[31]~92_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	ena => \uart_inst|inst7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|counter\(31));

-- Location: LCCOMB_X25_Y17_N12
\uart_inst|inst7|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~9_combout\ = (!\uart_inst|inst7|counter\(28) & (!\uart_inst|inst7|counter\(30) & (!\uart_inst|inst7|counter\(29) & !\uart_inst|inst7|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(28),
	datab => \uart_inst|inst7|counter\(30),
	datac => \uart_inst|inst7|counter\(29),
	datad => \uart_inst|inst7|counter\(31),
	combout => \uart_inst|inst7|Equal0~9_combout\);

-- Location: LCCOMB_X25_Y17_N2
\uart_inst|inst7|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~8_combout\ = (!\uart_inst|inst7|counter\(25) & (!\uart_inst|inst7|counter\(24) & (!\uart_inst|inst7|counter\(27) & !\uart_inst|inst7|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(25),
	datab => \uart_inst|inst7|counter\(24),
	datac => \uart_inst|inst7|counter\(27),
	datad => \uart_inst|inst7|counter\(26),
	combout => \uart_inst|inst7|Equal0~8_combout\);

-- Location: LCCOMB_X25_Y17_N30
\uart_inst|inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~2_combout\ = (!\uart_inst|inst7|counter\(10) & (!\uart_inst|inst7|counter\(8) & (!\uart_inst|inst7|counter\(9) & !\uart_inst|inst7|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(10),
	datab => \uart_inst|inst7|counter\(8),
	datac => \uart_inst|inst7|counter\(9),
	datad => \uart_inst|inst7|counter\(11),
	combout => \uart_inst|inst7|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y17_N4
\uart_inst|inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~1_combout\ = (!\uart_inst|inst7|counter\(4) & (!\uart_inst|inst7|counter\(7) & (!\uart_inst|inst7|counter\(6) & !\uart_inst|inst7|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(4),
	datab => \uart_inst|inst7|counter\(7),
	datac => \uart_inst|inst7|counter\(6),
	datad => \uart_inst|inst7|counter\(5),
	combout => \uart_inst|inst7|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y17_N0
\uart_inst|inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~0_combout\ = (\uart_inst|inst7|counter\(3) & (!\uart_inst|inst7|counter\(2) & (!\uart_inst|inst7|counter\(0) & \uart_inst|inst7|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(3),
	datab => \uart_inst|inst7|counter\(2),
	datac => \uart_inst|inst7|counter\(0),
	datad => \uart_inst|inst7|counter\(1),
	combout => \uart_inst|inst7|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\uart_inst|inst7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~3_combout\ = (!\uart_inst|inst7|counter\(15) & (!\uart_inst|inst7|counter\(13) & (!\uart_inst|inst7|counter\(14) & !\uart_inst|inst7|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(15),
	datab => \uart_inst|inst7|counter\(13),
	datac => \uart_inst|inst7|counter\(14),
	datad => \uart_inst|inst7|counter\(12),
	combout => \uart_inst|inst7|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y17_N22
\uart_inst|inst7|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~4_combout\ = (\uart_inst|inst7|Equal0~2_combout\ & (\uart_inst|inst7|Equal0~1_combout\ & (\uart_inst|inst7|Equal0~0_combout\ & \uart_inst|inst7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|Equal0~2_combout\,
	datab => \uart_inst|inst7|Equal0~1_combout\,
	datac => \uart_inst|inst7|Equal0~0_combout\,
	datad => \uart_inst|inst7|Equal0~3_combout\,
	combout => \uart_inst|inst7|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y17_N8
\uart_inst|inst7|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~5_combout\ = (!\uart_inst|inst7|counter\(16) & !\uart_inst|inst7|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|inst7|counter\(16),
	datad => \uart_inst|inst7|counter\(17),
	combout => \uart_inst|inst7|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y17_N6
\uart_inst|inst7|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~6_combout\ = (!\uart_inst|inst7|counter\(21) & (!\uart_inst|inst7|counter\(20) & (!\uart_inst|inst7|counter\(23) & !\uart_inst|inst7|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(21),
	datab => \uart_inst|inst7|counter\(20),
	datac => \uart_inst|inst7|counter\(23),
	datad => \uart_inst|inst7|counter\(22),
	combout => \uart_inst|inst7|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y17_N0
\uart_inst|inst7|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~7_combout\ = (!\uart_inst|inst7|counter\(19) & (!\uart_inst|inst7|counter\(18) & (\uart_inst|inst7|Equal0~5_combout\ & \uart_inst|inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|counter\(19),
	datab => \uart_inst|inst7|counter\(18),
	datac => \uart_inst|inst7|Equal0~5_combout\,
	datad => \uart_inst|inst7|Equal0~6_combout\,
	combout => \uart_inst|inst7|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y17_N14
\uart_inst|inst7|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|Equal0~10_combout\ = (((!\uart_inst|inst7|Equal0~7_combout\) # (!\uart_inst|inst7|Equal0~4_combout\)) # (!\uart_inst|inst7|Equal0~8_combout\)) # (!\uart_inst|inst7|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|Equal0~9_combout\,
	datab => \uart_inst|inst7|Equal0~8_combout\,
	datac => \uart_inst|inst7|Equal0~4_combout\,
	datad => \uart_inst|inst7|Equal0~7_combout\,
	combout => \uart_inst|inst7|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y17_N24
\uart_inst|inst7|stop_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|stop_counter~0_combout\ = (\uart_inst|inst7|stop_counter~q\) # (!\uart_inst|inst7|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|stop_counter~q\,
	datac => \uart_inst|inst7|Equal0~10_combout\,
	combout => \uart_inst|inst7|stop_counter~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\uart_inst|inst7|stop_counter~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst7|stop_counter~feeder_combout\ = \uart_inst|inst7|stop_counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|inst7|stop_counter~0_combout\,
	combout => \uart_inst|inst7|stop_counter~feeder_combout\);

-- Location: FF_X25_Y17_N19
\uart_inst|inst7|stop_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \uart_inst|inst7|stop_counter~feeder_combout\,
	clrn => \uart_inst|inst7|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|stop_counter~q\);

-- Location: FF_X25_Y17_N21
\uart_inst|inst7|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst2|txd_done~q\,
	d => \uart_inst|inst7|pulse~feeder_combout\,
	clrn => \uart_inst|inst7|ALT_INV_stop_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst7|pulse~q\);

-- Location: LCCOMB_X24_Y10_N22
\U14|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector22~0_combout\ = (\U6|Mux0~5_combout\ & (\uart_inst|inst7|pulse~q\ & (\U14|current_state.t17~q\))) # (!\U6|Mux0~5_combout\ & (((\U14|current_state.t11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst7|pulse~q\,
	datab => \U14|current_state.t17~q\,
	datac => \U6|Mux0~5_combout\,
	datad => \U14|current_state.t11~q\,
	combout => \U14|Selector22~0_combout\);

-- Location: FF_X24_Y10_N23
\U14|next_state.t12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t12~q\);

-- Location: FF_X24_Y10_N9
\U14|current_state.t12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t12~q\);

-- Location: LCCOMB_X21_Y9_N24
\U6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux4~0_combout\ = (\U5|instruction\(15) & (!\U5|instruction\(11) & (\U5|instruction\(12) & \U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(12),
	datad => \U6|Mux3~0_combout\,
	combout => \U6|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y12_N20
\U14|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector26~0_combout\ = (\U6|Mux4~0_combout\ & (!\U14|current_state.t12~q\ & ((\U14|current_state.t11~q\) # (\U14|enled_latch~q\)))) # (!\U6|Mux4~0_combout\ & (((\U14|enled_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|current_state.t11~q\,
	datac => \U6|Mux4~0_combout\,
	datad => \U14|enled_latch~q\,
	combout => \U14|Selector26~0_combout\);

-- Location: LCCOMB_X29_Y12_N30
\U14|enled_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|enled_latch~feeder_combout\ = \U14|Selector26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector26~0_combout\,
	combout => \U14|enled_latch~feeder_combout\);

-- Location: FF_X29_Y12_N31
\U14|enled_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|enled_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enled_latch~q\);

-- Location: CLKCTRL_G8
\U14|enled_latch~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U14|enled_latch~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U14|enled_latch~clkctrl_outclk\);

-- Location: M9K_X27_Y9_N0
\U13|Ram0_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000A49292000A49299000A492B0000A492A4000A492F9000A492C0000A49990000A49980000A499F8000A49982000A49992000A49999000A499B0000A499A4000A499F9000A499C0000A4B090000A4B080000A4B0F8000A4B082000A4B092000A4B099000A4B0B0000A4B0A4000A4B0F9000A4B0C0000A4A490000A4A480000A",
	mem_init3 => X"4A4F8000A4A482000A4A492000A4A499000A4A4B0000A4A4A4000A4A4F9000A4A4C0000A4F990000A4F980000A4F9F8000A4F982000A4F992000A4F999000A4F9B0000A4F9A4000A4F9F9000A4F9C0000A4C090000A4C080000A4C0F8000A4C082000A4C092000A4C099000A4C0B0000A4C0A4000A4C0F9000A4C0C0000F99090000F99080000F990F8000F99082000F99092000F99099000F990B0000F990A4000F990F9000F990C0000F98090000F98080000F980F8000F98082000F98092000F98099000F980B0000F980A4000F980F9000F980C0000F9F890000F9F880000F9F8F8000F9F882000F9F892000F9F899000F9F8B0000F9F8A4000F9F8F9000",
	mem_init2 => X"F9F8C0000F98290000F98280000F982F8000F98282000F98292000F98299000F982B0000F982A4000F982F9000F982C0000F99290000F99280000F992F8000F99282000F99292000F99299000F992B0000F992A4000F992F9000F992C0000F99990000F99980000F999F8000F99982000F99992000F99999000F999B0000F999A4000F999F9000F999C0000F9B090000F9B080000F9B0F8000F9B082000F9B092000F9B099000F9B0B0000F9B0A4000F9B0F9000F9B0C0000F9A490000F9A480000F9A4F8000F9A482000F9A492000F9A499000F9A4B0000F9A4A4000F9A4F9000F9A4C0000F9F990000F9F980000F9F9F8000F9F982000F9F992000F9F99900",
	mem_init1 => X"0F9F9B0000F9F9A4000F9F9F9000F9F9C0000F9C090000F9C080000F9C0F8000F9C082000F9C092000F9C099000F9C0B0000F9C0A4000F9C0F9000F9C0C0000C09090000C09080000C090F8000C09082000C09092000C09099000C090B0000C090A4000C090F9000C090C0000C08090000C08080000C080F8000C08082000C08092000C08099000C080B0000C080A4000C080F9000C080C0000C0F890000C0F880000C0F8F8000C0F882000C0F892000C0F899000C0F8B0000C0F8A4000C0F8F9000C0F8C0000C08290000C08280000C082F8000C08282000C08292000C08299000C082B0000C082A4000C082F9000C082C0000C09290000C09280000C092F80",
	mem_init0 => X"00C09282000C09292000C09299000C092B0000C092A4000C092F9000C092C0000C09990000C09980000C099F8000C09982000C09992000C09999000C099B0000C099A4000C099F9000C099C0000C0B090000C0B080000C0B0F8000C0B082000C0B092000C0B099000C0B0B0000C0B0A4000C0B0F9000C0B0C0000C0A490000C0A480000C0A4F8000C0A482000C0A492000C0A499000C0A4B0000C0A4A4000C0A4F9000C0A4C0000C0F990000C0F980000C0F9F8000C0F982000C0F992000C0F999000C0F9B0000C0F9A4000C0F9F9000C0F9C0000C0C090000C0C080000C0C0F8000C0C082000C0C092000C0C099000C0C0B0000C0C0A4000C0C0F9000C0C0C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/2073_II.rom0_led_encoder_ae1e0bd6.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "led_encoder:U13|altsyncram:Ram0_rtl_0|altsyncram_r771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U14|enled_latch~clkctrl_outclk\,
	portaaddr => \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y9_N6
\U13|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux8~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a8\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a8\,
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y9_N26
\U13|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux8~1_combout\ = (!\U13|Mux8~0_combout\ & ((!\U13|current_led_sel\(1)) # (!\U13|Ram0_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|Ram0_rtl_0|auto_generated|ram_block1a16\,
	datac => \U13|current_led_sel\(1),
	datad => \U13|Mux8~0_combout\,
	combout => \U13|Mux8~1_combout\);

-- Location: FF_X28_Y9_N27
\U13|led_dig_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(0));

-- Location: LCCOMB_X28_Y9_N16
\U13|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux7~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a9\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a9\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a1\,
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y9_N12
\U13|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux7~1_combout\ = (!\U13|Mux7~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a17\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a17\,
	datad => \U13|Mux7~0_combout\,
	combout => \U13|Mux7~1_combout\);

-- Location: FF_X28_Y9_N13
\U13|led_dig_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(1));

-- Location: LCCOMB_X28_Y9_N18
\U13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux6~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a10\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a2\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a10\,
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y9_N10
\U13|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux6~1_combout\ = (!\U13|Mux6~0_combout\ & ((!\U13|current_led_sel\(1)) # (!\U13|Ram0_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a18\,
	datab => \U13|current_led_sel\(1),
	datad => \U13|Mux6~0_combout\,
	combout => \U13|Mux6~1_combout\);

-- Location: FF_X28_Y9_N11
\U13|led_dig_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(2));

-- Location: LCCOMB_X28_Y9_N24
\U13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux5~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a11\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a3\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a11\,
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y9_N0
\U13|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux5~1_combout\ = (!\U13|Mux5~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a19\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a19\,
	datad => \U13|Mux5~0_combout\,
	combout => \U13|Mux5~1_combout\);

-- Location: FF_X28_Y9_N1
\U13|led_dig_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(3));

-- Location: LCCOMB_X29_Y9_N12
\U13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux4~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a12\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a4\,
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a12\,
	combout => \U13|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y9_N16
\U13|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux4~1_combout\ = (!\U13|Mux4~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a20\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a20\,
	datad => \U13|Mux4~0_combout\,
	combout => \U13|Mux4~1_combout\);

-- Location: FF_X29_Y9_N17
\U13|led_dig_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(4));

-- Location: LCCOMB_X29_Y9_N18
\U13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux3~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a13\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a5\,
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a13\,
	combout => \U13|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y9_N14
\U13|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux3~1_combout\ = (!\U13|Mux3~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a21\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a21\,
	datad => \U13|Mux3~0_combout\,
	combout => \U13|Mux3~1_combout\);

-- Location: FF_X29_Y9_N15
\U13|led_dig_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(5));

-- Location: LCCOMB_X29_Y9_N0
\U13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux2~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a14\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a6\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|current_led_sel\(0),
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a14\,
	combout => \U13|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y9_N28
\U13|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux2~1_combout\ = (!\U13|Mux2~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a22\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a22\,
	datad => \U13|Mux2~0_combout\,
	combout => \U13|Mux2~1_combout\);

-- Location: FF_X29_Y9_N29
\U13|led_dig_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(6));

-- Location: LCCOMB_X28_Y9_N2
\U13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux1~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a15\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a15\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a7\,
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y9_N30
\U13|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux1~1_combout\ = (!\U13|Mux1~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a23\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a23\,
	datad => \U13|Mux1~0_combout\,
	combout => \U13|Mux1~1_combout\);

-- Location: FF_X28_Y9_N31
\U13|led_dig_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	d => \U13|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|led_dig_temp\(7));

-- Location: LCCOMB_X25_Y8_N0
\uart_inst|inst2|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector11~2_combout\ = (\uart_inst|inst2|Selector3~0_combout\) # ((\uart_inst|inst2|state.x_stop~q\) # ((\uart_inst|inst2|state.x_wait~q\) # (!\uart_inst|inst2|state.x_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Selector3~0_combout\,
	datab => \uart_inst|inst2|state.x_stop~q\,
	datac => \uart_inst|inst2|state.x_wait~q\,
	datad => \uart_inst|inst2|state.x_idle~q\,
	combout => \uart_inst|inst2|Selector11~2_combout\);

-- Location: LCCOMB_X26_Y7_N28
\uart_inst|inst2|txd_content[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_content[2]~feeder_combout\ = \data_out[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[2]~35_combout\,
	combout => \uart_inst|inst2|txd_content[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y8_N14
\uart_inst|inst2|txd_content[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_content[7]~1_combout\ = (!\U14|txd_cmd_latch~q\ & (\U14|uart_reset_latch~q\ & !\uart_inst|inst2|state.x_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|txd_cmd_latch~q\,
	datac => \U14|uart_reset_latch~q\,
	datad => \uart_inst|inst2|state.x_idle~q\,
	combout => \uart_inst|inst2|txd_content[7]~1_combout\);

-- Location: FF_X26_Y7_N29
\uart_inst|inst2|txd_content[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|txd_content[2]~feeder_combout\,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(2));

-- Location: FF_X26_Y7_N15
\uart_inst|inst2|txd_content[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	asdata => \data_out[3]~42_combout\,
	sload => VCC,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(3));

-- Location: LCCOMB_X26_Y7_N6
\uart_inst|inst2|txd_content[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_content[1]~feeder_combout\ = \data_out[1]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[1]~28_combout\,
	combout => \uart_inst|inst2|txd_content[1]~feeder_combout\);

-- Location: FF_X26_Y7_N7
\uart_inst|inst2|txd_content[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|txd_content[1]~feeder_combout\,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(1));

-- Location: FF_X26_Y7_N13
\uart_inst|inst2|txd_content[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	asdata => \data_out[0]~21_combout\,
	sload => VCC,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(0));

-- Location: LCCOMB_X26_Y7_N12
\uart_inst|inst2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Mux0~2_combout\ = (\uart_inst|inst2|xbitcnt\(0) & ((\uart_inst|inst2|txd_content\(1)) # ((\uart_inst|inst2|xbitcnt\(1))))) # (!\uart_inst|inst2|xbitcnt\(0) & (((\uart_inst|inst2|txd_content\(0) & !\uart_inst|inst2|xbitcnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|txd_content\(1),
	datab => \uart_inst|inst2|xbitcnt\(0),
	datac => \uart_inst|inst2|txd_content\(0),
	datad => \uart_inst|inst2|xbitcnt\(1),
	combout => \uart_inst|inst2|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y7_N14
\uart_inst|inst2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Mux0~3_combout\ = (\uart_inst|inst2|xbitcnt\(1) & ((\uart_inst|inst2|Mux0~2_combout\ & ((\uart_inst|inst2|txd_content\(3)))) # (!\uart_inst|inst2|Mux0~2_combout\ & (\uart_inst|inst2|txd_content\(2))))) # (!\uart_inst|inst2|xbitcnt\(1) & 
-- (((\uart_inst|inst2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(1),
	datab => \uart_inst|inst2|txd_content\(2),
	datac => \uart_inst|inst2|txd_content\(3),
	datad => \uart_inst|inst2|Mux0~2_combout\,
	combout => \uart_inst|inst2|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y8_N6
\uart_inst|inst2|txd_content[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_content[5]~feeder_combout\ = \data_out[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~56_combout\,
	combout => \uart_inst|inst2|txd_content[5]~feeder_combout\);

-- Location: FF_X25_Y8_N7
\uart_inst|inst2|txd_content[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|txd_content[5]~feeder_combout\,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(5));

-- Location: FF_X25_Y7_N25
\uart_inst|inst2|txd_content[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	asdata => \data_out[7]~70_combout\,
	sload => VCC,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(7));

-- Location: LCCOMB_X25_Y8_N8
\uart_inst|inst2|txd_content[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|txd_content[6]~feeder_combout\ = \data_out[6]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[6]~63_combout\,
	combout => \uart_inst|inst2|txd_content[6]~feeder_combout\);

-- Location: FF_X25_Y8_N9
\uart_inst|inst2|txd_content[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|txd_content[6]~feeder_combout\,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(6));

-- Location: FF_X25_Y7_N19
\uart_inst|inst2|txd_content[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	asdata => \data_out[4]~49_combout\,
	sload => VCC,
	ena => \uart_inst|inst2|txd_content[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txd_content\(4));

-- Location: LCCOMB_X25_Y7_N18
\uart_inst|inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Mux0~0_combout\ = (\uart_inst|inst2|xbitcnt\(0) & (((\uart_inst|inst2|xbitcnt\(1))))) # (!\uart_inst|inst2|xbitcnt\(0) & ((\uart_inst|inst2|xbitcnt\(1) & (\uart_inst|inst2|txd_content\(6))) # (!\uart_inst|inst2|xbitcnt\(1) & 
-- ((\uart_inst|inst2|txd_content\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(0),
	datab => \uart_inst|inst2|txd_content\(6),
	datac => \uart_inst|inst2|txd_content\(4),
	datad => \uart_inst|inst2|xbitcnt\(1),
	combout => \uart_inst|inst2|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y7_N24
\uart_inst|inst2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Mux0~1_combout\ = (\uart_inst|inst2|xbitcnt\(0) & ((\uart_inst|inst2|Mux0~0_combout\ & ((\uart_inst|inst2|txd_content\(7)))) # (!\uart_inst|inst2|Mux0~0_combout\ & (\uart_inst|inst2|txd_content\(5))))) # (!\uart_inst|inst2|xbitcnt\(0) & 
-- (((\uart_inst|inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|xbitcnt\(0),
	datab => \uart_inst|inst2|txd_content\(5),
	datac => \uart_inst|inst2|txd_content\(7),
	datad => \uart_inst|inst2|Mux0~0_combout\,
	combout => \uart_inst|inst2|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y7_N2
\uart_inst|inst2|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector11~1_combout\ = (\uart_inst|inst2|state.x_shift~q\ & ((\uart_inst|inst2|xbitcnt\(2) & ((\uart_inst|inst2|Mux0~1_combout\))) # (!\uart_inst|inst2|xbitcnt\(2) & (\uart_inst|inst2|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|state.x_shift~q\,
	datab => \uart_inst|inst2|xbitcnt\(2),
	datac => \uart_inst|inst2|Mux0~3_combout\,
	datad => \uart_inst|inst2|Mux0~1_combout\,
	combout => \uart_inst|inst2|Selector11~1_combout\);

-- Location: LCCOMB_X25_Y8_N2
\uart_inst|inst2|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|inst2|Selector11~3_combout\ = (!\uart_inst|inst2|Selector11~0_combout\ & (!\uart_inst|inst2|Selector11~1_combout\ & ((\uart_inst|inst2|txds~q\) # (!\uart_inst|inst2|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|inst2|Selector11~0_combout\,
	datab => \uart_inst|inst2|Selector11~2_combout\,
	datac => \uart_inst|inst2|txds~q\,
	datad => \uart_inst|inst2|Selector11~1_combout\,
	combout => \uart_inst|inst2|Selector11~3_combout\);

-- Location: FF_X25_Y8_N3
\uart_inst|inst2|txds\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_inst|inst|bclk~clkctrl_outclk\,
	d => \uart_inst|inst2|Selector11~3_combout\,
	clrn => \U14|uart_reset_latch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|inst2|txds~q\);

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(3) <= \sel[3]~output_o\;

ww_sel(4) <= \sel[4]~output_o\;

ww_sel(5) <= \sel[5]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(5) <= \dig[5]~output_o\;

ww_dig(6) <= \dig[6]~output_o\;

ww_dig(7) <= \dig[7]~output_o\;

ww_txd <= \txd~output_o\;
END structure;


