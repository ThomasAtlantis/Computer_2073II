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

-- DATE "10/13/2018 15:53:25"

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
	sel : BUFFER std_logic_vector(5 DOWNTO 0);
	dig : BUFFER std_logic_vector(7 DOWNTO 0)
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
-- clk_input	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U14|enirin_latch~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|clk_led~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U14|enled_latch~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_input~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U10|data_latch[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U11|grc_grwt[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \U13|Mux9~0_combout\ : std_logic;
SIGNAL \U13|led_sel[1]~0_combout\ : std_logic;
SIGNAL \U13|led_sel[2]~1_combout\ : std_logic;
SIGNAL \U1|clk_out~feeder_combout\ : std_logic;
SIGNAL \U1|clk_out~q\ : std_logic;
SIGNAL \U1|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \U14|next_state.t9~q\ : std_logic;
SIGNAL \U14|current_state.t9~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t9~q\ : std_logic;
SIGNAL \U14|next_state.t10~q\ : std_logic;
SIGNAL \U14|current_state.t10~q\ : std_logic;
SIGNAL \U14|next_state.t_rst_1~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t_rst_1~q\ : std_logic;
SIGNAL \U14|current_state.t_rst_1~q\ : std_logic;
SIGNAL \U14|next_state.t_rst_2~0_combout\ : std_logic;
SIGNAL \U14|next_state.t_rst_2~q\ : std_logic;
SIGNAL \U14|current_state.t_rst_2~q\ : std_logic;
SIGNAL \U14|Selector1~0_combout\ : std_logic;
SIGNAL \U6|Mux0~0_combout\ : std_logic;
SIGNAL \U7|addr_latch[0]~8_combout\ : std_logic;
SIGNAL \U14|Selector3~1_combout\ : std_logic;
SIGNAL \U6|Mux6~0_combout\ : std_logic;
SIGNAL \U14|Selector3~0_combout\ : std_logic;
SIGNAL \U14|Selector3~2_combout\ : std_logic;
SIGNAL \U14|enpcout_latch~q\ : std_logic;
SIGNAL \data_out[0]~5_combout\ : std_logic;
SIGNAL \U14|Selector4~0_combout\ : std_logic;
SIGNAL \U14|Selector12~2_combout\ : std_logic;
SIGNAL \U14|enrom_latch~q\ : std_logic;
SIGNAL \U14|Selector20~0_combout\ : std_logic;
SIGNAL \U14|Selector20~1_combout\ : std_logic;
SIGNAL \U14|romin_latch~feeder_combout\ : std_logic;
SIGNAL \U14|romin_latch~q\ : std_logic;
SIGNAL \U4|inst3|pulse~feeder_combout\ : std_logic;
SIGNAL \U4|inst3|counter[0]~1_combout\ : std_logic;
SIGNAL \U4|inst3|counter[1]~0_combout\ : std_logic;
SIGNAL \U4|inst3|stop_counter~0_combout\ : std_logic;
SIGNAL \U4|inst3|stop_counter~feeder_combout\ : std_logic;
SIGNAL \U4|inst3|stop_counter~q\ : std_logic;
SIGNAL \U4|inst3|pulse~q\ : std_logic;
SIGNAL \U4|inst2~combout\ : std_logic;
SIGNAL \U5|instruction[1]~feeder_combout\ : std_logic;
SIGNAL \U5|state~0_combout\ : std_logic;
SIGNAL \U5|state~feeder_combout\ : std_logic;
SIGNAL \U5|state~q\ : std_logic;
SIGNAL \data_out[1]~15_combout\ : std_logic;
SIGNAL \U14|next_state.t12~q\ : std_logic;
SIGNAL \U14|current_state.t12~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t12~q\ : std_logic;
SIGNAL \U14|Selector13~2_combout\ : std_logic;
SIGNAL \U14|Selector13~4_combout\ : std_logic;
SIGNAL \U14|Selector13~3_combout\ : std_logic;
SIGNAL \U14|ramin_latch~feeder_combout\ : std_logic;
SIGNAL \U14|ramin_latch~q\ : std_logic;
SIGNAL \U3|ram_address_latch[2]~feeder_combout\ : std_logic;
SIGNAL \U3|ram_data~223_combout\ : std_logic;
SIGNAL \U14|next_state~26_combout\ : std_logic;
SIGNAL \U14|next_state.t13~q\ : std_logic;
SIGNAL \U14|current_state.t13~q\ : std_logic;
SIGNAL \U14|next_state.t14~q\ : std_logic;
SIGNAL \U14|current_state.t14~q\ : std_logic;
SIGNAL \U14|Selector15~2_combout\ : std_logic;
SIGNAL \U14|Selector15~1_combout\ : std_logic;
SIGNAL \U14|Selector9~1_combout\ : std_logic;
SIGNAL \U14|Selector15~3_combout\ : std_logic;
SIGNAL \U14|ramwt_latch~q\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \U3|ram_data~121_combout\ : std_logic;
SIGNAL \U3|ram_data~215_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \U3|ram_data~57_combout\ : std_logic;
SIGNAL \U3|ram_data~216_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \U3|ram_data~25_combout\ : std_logic;
SIGNAL \U3|ram_data~145_combout\ : std_logic;
SIGNAL \U3|ram_data~211_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \U3|ram_data~89_combout\ : std_logic;
SIGNAL \U3|ram_data~146_combout\ : std_logic;
SIGNAL \U3|ram_data~213_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \U3|ram_data~49_combout\ : std_logic;
SIGNAL \U3|ram_data~218_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \U3|ram_data~17_combout\ : std_logic;
SIGNAL \U3|ram_data~208_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \U3|ram_data~81_combout\ : std_logic;
SIGNAL \U3|ram_data~138_combout\ : std_logic;
SIGNAL \U3|ram_data~221_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \U3|ram_data~113_combout\ : std_logic;
SIGNAL \U3|ram_data~139_combout\ : std_logic;
SIGNAL \U3|ram_data~210_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \U3|ram_data~65_combout\ : std_logic;
SIGNAL \U3|ram_data~219_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \U3|ram_data~1_combout\ : std_logic;
SIGNAL \U3|ram_data~142_combout\ : std_logic;
SIGNAL \U3|ram_data~222_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \U3|ram_data~97_combout\ : std_logic;
SIGNAL \U3|ram_data~214_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \U3|ram_data~33_combout\ : std_logic;
SIGNAL \U3|ram_data~143_combout\ : std_logic;
SIGNAL \U3|ram_data~212_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \U3|ram_data~41_combout\ : std_logic;
SIGNAL \U3|ram_data~217_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \U3|ram_data~9_combout\ : std_logic;
SIGNAL \U3|ram_data~140_combout\ : std_logic;
SIGNAL \U3|ram_data~209_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \U3|ram_data~73_combout\ : std_logic;
SIGNAL \U3|ram_data~220_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \U3|ram_data~105_combout\ : std_logic;
SIGNAL \U3|ram_data~141_combout\ : std_logic;
SIGNAL \U3|ram_data~144_combout\ : std_logic;
SIGNAL \U3|ram_data~147_combout\ : std_logic;
SIGNAL \U7|addr_latch[2]~13\ : std_logic;
SIGNAL \U7|addr_latch[3]~14_combout\ : std_logic;
SIGNAL \U5|instruction[3]~feeder_combout\ : std_logic;
SIGNAL \U14|Selector0~0_combout\ : std_logic;
SIGNAL \U14|rstpc_latch~feeder_combout\ : std_logic;
SIGNAL \U14|rstpc_latch~q\ : std_logic;
SIGNAL \U14|Selector2~1_combout\ : std_logic;
SIGNAL \U14|Selector2~2_combout\ : std_logic;
SIGNAL \U14|Selector2~3_combout\ : std_logic;
SIGNAL \U14|ldpc_latch~q\ : std_logic;
SIGNAL \U7|addr_latch[3]~15\ : std_logic;
SIGNAL \U7|addr_latch[4]~16_combout\ : std_logic;
SIGNAL \U7|addr_latch[4]~17\ : std_logic;
SIGNAL \U7|addr_latch[5]~19\ : std_logic;
SIGNAL \U7|addr_latch[6]~20_combout\ : std_logic;
SIGNAL \U5|instruction[6]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[6]~21\ : std_logic;
SIGNAL \U7|addr_latch[7]~22_combout\ : std_logic;
SIGNAL \U5|instruction[7]~feeder_combout\ : std_logic;
SIGNAL \data_out[7]~57_combout\ : std_logic;
SIGNAL \data_out[7]~56_combout\ : std_logic;
SIGNAL \U3|ram_data~127_combout\ : std_logic;
SIGNAL \U3|ram_data~63_combout\ : std_logic;
SIGNAL \U3|ram_data~95_combout\ : std_logic;
SIGNAL \U3|ram_data~31_combout\ : std_logic;
SIGNAL \U3|ram_data~205_combout\ : std_logic;
SIGNAL \U3|ram_data~206_combout\ : std_logic;
SIGNAL \U3|ram_data~47_combout\ : std_logic;
SIGNAL \U3|ram_data~111_combout\ : std_logic;
SIGNAL \U3|ram_data~79_combout\ : std_logic;
SIGNAL \U3|ram_data~15_combout\ : std_logic;
SIGNAL \U3|ram_data~198_combout\ : std_logic;
SIGNAL \U3|ram_data~199_combout\ : std_logic;
SIGNAL \U3|ram_data~71_combout\ : std_logic;
SIGNAL \U3|ram_data~103_combout\ : std_logic;
SIGNAL \U3|ram_data~7_combout\ : std_logic;
SIGNAL \U3|ram_data~39_combout\ : std_logic;
SIGNAL \U3|ram_data~202_combout\ : std_logic;
SIGNAL \U3|ram_data~203_combout\ : std_logic;
SIGNAL \U3|ram_data~87_combout\ : std_logic;
SIGNAL \U3|ram_data~119_combout\ : std_logic;
SIGNAL \U3|ram_data~55_combout\ : std_logic;
SIGNAL \U3|ram_data~23_combout\ : std_logic;
SIGNAL \U3|ram_data~200_combout\ : std_logic;
SIGNAL \U3|ram_data~201_combout\ : std_logic;
SIGNAL \U3|ram_data~204_combout\ : std_logic;
SIGNAL \U3|ram_data~207_combout\ : std_logic;
SIGNAL \data_out[7]~58_combout\ : std_logic;
SIGNAL \U14|regrd2_latch~0_combout\ : std_logic;
SIGNAL \U14|Selector10~0_combout\ : std_logic;
SIGNAL \U14|Selector10~1_combout\ : std_logic;
SIGNAL \U14|Selector9~0_combout\ : std_logic;
SIGNAL \U14|Selector10~2_combout\ : std_logic;
SIGNAL \U6|Mux5~0_combout\ : std_logic;
SIGNAL \U6|Mux5~1_combout\ : std_logic;
SIGNAL \U14|Selector10~3_combout\ : std_logic;
SIGNAL \U14|Selector10~4_combout\ : std_logic;
SIGNAL \U14|regrd2_latch~q\ : std_logic;
SIGNAL \U5|ir_grcode[5]~1_combout\ : std_logic;
SIGNAL \U5|ir_grcode[1]~0_combout\ : std_logic;
SIGNAL \data_out[6]~10_combout\ : std_logic;
SIGNAL \U14|next_state~24_combout\ : std_logic;
SIGNAL \U14|next_state.t15~q\ : std_logic;
SIGNAL \U14|current_state.t15~q\ : std_logic;
SIGNAL \U14|Selector11~0_combout\ : std_logic;
SIGNAL \U6|Mux4~1_combout\ : std_logic;
SIGNAL \U14|Selector11~1_combout\ : std_logic;
SIGNAL \U14|Selector11~2_combout\ : std_logic;
SIGNAL \U14|Selector5~2_combout\ : std_logic;
SIGNAL \U14|next_state.t16~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t16~q\ : std_logic;
SIGNAL \U14|current_state.t16~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t16~q\ : std_logic;
SIGNAL \U14|Selector8~2_combout\ : std_logic;
SIGNAL \U14|Selector9~8_combout\ : std_logic;
SIGNAL \U14|Selector11~3_combout\ : std_logic;
SIGNAL \U14|Selector11~4_combout\ : std_logic;
SIGNAL \U14|regwt_latch~q\ : std_logic;
SIGNAL \U5|instruction[2]~feeder_combout\ : std_logic;
SIGNAL \U11|grc_grwt[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U11|grc_grwt[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U12|gra_latch[7]~feeder_combout\ : std_logic;
SIGNAL \data_out[6]~8_combout\ : std_logic;
SIGNAL \data_out[6]~9_combout\ : std_logic;
SIGNAL \data_out[6]~63_combout\ : std_logic;
SIGNAL \U11|grc_grwt[3]~clkctrl_outclk\ : std_logic;
SIGNAL \U11|grc_grwt[2]~clkctrl_outclk\ : std_logic;
SIGNAL \data_out[7]~60_combout\ : std_logic;
SIGNAL \data_out[7]~61_combout\ : std_logic;
SIGNAL \U14|Selector8~0_combout\ : std_logic;
SIGNAL \U14|Selector8~1_combout\ : std_logic;
SIGNAL \U14|Selector8~3_combout\ : std_logic;
SIGNAL \U14|dbfbout_latch~q\ : std_logic;
SIGNAL \U14|dbfbin_latch~0_combout\ : std_logic;
SIGNAL \U14|Selector7~0_combout\ : std_logic;
SIGNAL \U14|Selector7~1_combout\ : std_logic;
SIGNAL \U14|dbfbin_latch~q\ : std_logic;
SIGNAL \U14|Selector5~1_combout\ : std_logic;
SIGNAL \U14|Selector5~0_combout\ : std_logic;
SIGNAL \U14|Selector5~3_combout\ : std_logic;
SIGNAL \U14|Selector5~4_combout\ : std_logic;
SIGNAL \U14|Selector5~5_combout\ : std_logic;
SIGNAL \U14|enalu_latch~q\ : std_logic;
SIGNAL \U8|Mux0~14_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~7_combout\ : std_logic;
SIGNAL \U10|data_latch[7]~1_combout\ : std_logic;
SIGNAL \U10|data_latch[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \U8|Mux0~10_combout\ : std_logic;
SIGNAL \U8|result~12_combout\ : std_logic;
SIGNAL \U8|Add1~1\ : std_logic;
SIGNAL \U8|Add1~3\ : std_logic;
SIGNAL \U8|Add1~5\ : std_logic;
SIGNAL \U8|Add1~7\ : std_logic;
SIGNAL \U8|Add1~8_combout\ : std_logic;
SIGNAL \U8|Add1~6_combout\ : std_logic;
SIGNAL \U8|Mux0~7_combout\ : std_logic;
SIGNAL \U8|Add1~4_combout\ : std_logic;
SIGNAL \U8|result~5_combout\ : std_logic;
SIGNAL \U8|Mux0~2_combout\ : std_logic;
SIGNAL \U8|Add1~2_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \U8|Mux7~2_combout\ : std_logic;
SIGNAL \U8|result~0_combout\ : std_logic;
SIGNAL \U8|Add1~0_combout\ : std_logic;
SIGNAL \U8|Mux7~3_combout\ : std_logic;
SIGNAL \U8|Mux7~7_combout\ : std_logic;
SIGNAL \U8|result~1_combout\ : std_logic;
SIGNAL \U8|result~2_combout\ : std_logic;
SIGNAL \U8|result~3_combout\ : std_logic;
SIGNAL \U8|Mux7~4_combout\ : std_logic;
SIGNAL \U8|div8~3_combout\ : std_logic;
SIGNAL \U8|divider~2_combout\ : std_logic;
SIGNAL \U8|divider~0_combout\ : std_logic;
SIGNAL \U8|Add8~3\ : std_logic;
SIGNAL \U8|Add8~5_combout\ : std_logic;
SIGNAL \U8|Equal0~0_combout\ : std_logic;
SIGNAL \U8|divider~1_combout\ : std_logic;
SIGNAL \U8|LessThan0~0_combout\ : std_logic;
SIGNAL \U8|LessThan0~1_combout\ : std_logic;
SIGNAL \U8|LessThan0~2_combout\ : std_logic;
SIGNAL \U8|Add8~11_combout\ : std_logic;
SIGNAL \U8|Add8~2_combout\ : std_logic;
SIGNAL \U8|Add8~4_combout\ : std_logic;
SIGNAL \U8|Add11~1\ : std_logic;
SIGNAL \U8|Add11~2_combout\ : std_logic;
SIGNAL \U8|Add8~6\ : std_logic;
SIGNAL \U8|Add8~7_combout\ : std_logic;
SIGNAL \U8|LessThan1~0_combout\ : std_logic;
SIGNAL \U8|LessThan1~1_combout\ : std_logic;
SIGNAL \U8|LessThan1~2_combout\ : std_logic;
SIGNAL \U8|LessThan1~3_combout\ : std_logic;
SIGNAL \U8|Add8~8\ : std_logic;
SIGNAL \U8|Add8~9_combout\ : std_logic;
SIGNAL \U8|Add8~13_combout\ : std_logic;
SIGNAL \U8|LessThan1~4_combout\ : std_logic;
SIGNAL \U8|divided~1_combout\ : std_logic;
SIGNAL \U8|Add11~0_combout\ : std_logic;
SIGNAL \U8|divided~0_combout\ : std_logic;
SIGNAL \U8|Add14~1\ : std_logic;
SIGNAL \U8|Add14~2_combout\ : std_logic;
SIGNAL \U8|Add8~12_combout\ : std_logic;
SIGNAL \U8|Add11~3\ : std_logic;
SIGNAL \U8|Add11~4_combout\ : std_logic;
SIGNAL \U8|divided~3_combout\ : std_logic;
SIGNAL \U8|Add14~3\ : std_logic;
SIGNAL \U8|Add14~4_combout\ : std_logic;
SIGNAL \U8|Add11~5\ : std_logic;
SIGNAL \U8|Add11~6_combout\ : std_logic;
SIGNAL \U8|LessThan2~1_combout\ : std_logic;
SIGNAL \U8|LessThan2~0_combout\ : std_logic;
SIGNAL \U8|LessThan2~2_combout\ : std_logic;
SIGNAL \U8|LessThan3~0_combout\ : std_logic;
SIGNAL \U8|Add14~0_combout\ : std_logic;
SIGNAL \U8|divided~2_combout\ : std_logic;
SIGNAL \U8|Add14~5\ : std_logic;
SIGNAL \U8|Add14~6_combout\ : std_logic;
SIGNAL \U8|LessThan3~1_combout\ : std_logic;
SIGNAL \U8|Add18~6_combout\ : std_logic;
SIGNAL \U8|Add18~5_combout\ : std_logic;
SIGNAL \U8|div8~2_combout\ : std_logic;
SIGNAL \U8|Add18~3_combout\ : std_logic;
SIGNAL \U8|Add18~2_combout\ : std_logic;
SIGNAL \U8|div8~4_combout\ : std_logic;
SIGNAL \U8|Add18~4_combout\ : std_logic;
SIGNAL \U8|Add17~0_combout\ : std_logic;
SIGNAL \U8|Add18~7_combout\ : std_logic;
SIGNAL \U8|Mux7~5_combout\ : std_logic;
SIGNAL \U8|Mux7~6_combout\ : std_logic;
SIGNAL \U10|data_latch[0]~0_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~0_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \U8|Mux6~2_combout\ : std_logic;
SIGNAL \U8|Mux6~3_combout\ : std_logic;
SIGNAL \U8|Mux6~7_combout\ : std_logic;
SIGNAL \U8|Mux0~6_combout\ : std_logic;
SIGNAL \U8|result~4_combout\ : std_logic;
SIGNAL \U8|Add5~4_combout\ : std_logic;
SIGNAL \U8|Mux0~4_combout\ : std_logic;
SIGNAL \U8|Mux0~5_combout\ : std_logic;
SIGNAL \U8|Mux6~4_combout\ : std_logic;
SIGNAL \U8|Mux0~3_combout\ : std_logic;
SIGNAL \U8|Add18~9_cout\ : std_logic;
SIGNAL \U8|Add18~10_combout\ : std_logic;
SIGNAL \U8|Add18~12_combout\ : std_logic;
SIGNAL \U8|divided~4_combout\ : std_logic;
SIGNAL \U8|Add17~1\ : std_logic;
SIGNAL \U8|Add17~2_combout\ : std_logic;
SIGNAL \U8|Add18~13_combout\ : std_logic;
SIGNAL \U8|Add18~14_combout\ : std_logic;
SIGNAL \U8|Add18~15_combout\ : std_logic;
SIGNAL \U8|Mux6~5_combout\ : std_logic;
SIGNAL \U8|Mux6~6_combout\ : std_logic;
SIGNAL \U10|data_latch[1]~2_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~1_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \U8|Mux5~2_combout\ : std_logic;
SIGNAL \U8|Mux5~3_combout\ : std_logic;
SIGNAL \U8|Mux5~7_combout\ : std_logic;
SIGNAL \U8|result~6_combout\ : std_logic;
SIGNAL \U8|Add5~5\ : std_logic;
SIGNAL \U8|Add5~6_combout\ : std_logic;
SIGNAL \U8|Add5~16_combout\ : std_logic;
SIGNAL \U8|Add6~4_combout\ : std_logic;
SIGNAL \U8|result~7_combout\ : std_logic;
SIGNAL \U8|result~8_combout\ : std_logic;
SIGNAL \U8|result~10_combout\ : std_logic;
SIGNAL \U8|result~9_combout\ : std_logic;
SIGNAL \U8|Mux5~4_combout\ : std_logic;
SIGNAL \U8|Add18~11\ : std_logic;
SIGNAL \U8|Add18~17_combout\ : std_logic;
SIGNAL \U8|Add18~19_combout\ : std_logic;
SIGNAL \U8|Equal0~1_combout\ : std_logic;
SIGNAL \U8|Add18~48_combout\ : std_logic;
SIGNAL \U8|divided~5_combout\ : std_logic;
SIGNAL \U8|Add18~16_combout\ : std_logic;
SIGNAL \U8|Add17~3\ : std_logic;
SIGNAL \U8|Add17~4_combout\ : std_logic;
SIGNAL \U8|Add18~20_combout\ : std_logic;
SIGNAL \U8|Mux5~5_combout\ : std_logic;
SIGNAL \U8|Mux5~6_combout\ : std_logic;
SIGNAL \U10|data_latch[2]~3_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~2_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \U8|Mux4~2_combout\ : std_logic;
SIGNAL \U8|Mux4~3_combout\ : std_logic;
SIGNAL \U8|Mux4~16_combout\ : std_logic;
SIGNAL \U8|Add17~5\ : std_logic;
SIGNAL \U8|Add17~6_combout\ : std_logic;
SIGNAL \U8|Mux4~10_combout\ : std_logic;
SIGNAL \U8|Mux4~9_combout\ : std_logic;
SIGNAL \U8|Mux4~11_combout\ : std_logic;
SIGNAL \U8|Mux4~12_combout\ : std_logic;
SIGNAL \U8|result~11_combout\ : std_logic;
SIGNAL \U8|Add5~7\ : std_logic;
SIGNAL \U8|Add5~8_combout\ : std_logic;
SIGNAL \U8|Add5~17_combout\ : std_logic;
SIGNAL \U8|Add6~5\ : std_logic;
SIGNAL \U8|Add6~6_combout\ : std_logic;
SIGNAL \U8|Add6~8_combout\ : std_logic;
SIGNAL \U8|Mux4~8_combout\ : std_logic;
SIGNAL \U8|Add7~0_combout\ : std_logic;
SIGNAL \U8|Mux4~13_combout\ : std_logic;
SIGNAL \U8|Mux0~8_combout\ : std_logic;
SIGNAL \U8|Mux0~9_combout\ : std_logic;
SIGNAL \U8|Mux4~4_combout\ : std_logic;
SIGNAL \U8|Add18~18\ : std_logic;
SIGNAL \U8|Add18~21_combout\ : std_logic;
SIGNAL \U8|Add18~23_combout\ : std_logic;
SIGNAL \U8|Add18~24_combout\ : std_logic;
SIGNAL \U8|Mux4~5_combout\ : std_logic;
SIGNAL \U8|Mux4~6_combout\ : std_logic;
SIGNAL \U8|Mux4~7_combout\ : std_logic;
SIGNAL \U8|Mux4~14_combout\ : std_logic;
SIGNAL \U8|Mux4~15_combout\ : std_logic;
SIGNAL \U10|data_latch[3]~4_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~3_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \U8|Mux3~2_combout\ : std_logic;
SIGNAL \U8|Mux3~3_combout\ : std_logic;
SIGNAL \U8|Mux3~7_combout\ : std_logic;
SIGNAL \U8|result~14_combout\ : std_logic;
SIGNAL \U8|result~13_combout\ : std_logic;
SIGNAL \U8|Mux3~4_combout\ : std_logic;
SIGNAL \U8|Equal0~2_combout\ : std_logic;
SIGNAL \U8|Add18~31_combout\ : std_logic;
SIGNAL \U8|Add18~30_combout\ : std_logic;
SIGNAL \U8|Add18~22\ : std_logic;
SIGNAL \U8|Add18~25_combout\ : std_logic;
SIGNAL \U8|Add18~27_combout\ : std_logic;
SIGNAL \U8|Add18~28_combout\ : std_logic;
SIGNAL \U8|Add18~29_combout\ : std_logic;
SIGNAL \U8|Add18~32_combout\ : std_logic;
SIGNAL \U8|Add5~9\ : std_logic;
SIGNAL \U8|Add5~10_combout\ : std_logic;
SIGNAL \U8|Add5~12_combout\ : std_logic;
SIGNAL \U8|Add6~7\ : std_logic;
SIGNAL \U8|Add6~9_combout\ : std_logic;
SIGNAL \U8|Add6~16_combout\ : std_logic;
SIGNAL \U8|Add7~1\ : std_logic;
SIGNAL \U8|Add7~2_combout\ : std_logic;
SIGNAL \U8|Add7~4_combout\ : std_logic;
SIGNAL \U8|Add7~5_combout\ : std_logic;
SIGNAL \U8|Mux3~5_combout\ : std_logic;
SIGNAL \U8|Mux3~6_combout\ : std_logic;
SIGNAL \U10|data_latch[4]~5_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~4_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \U8|Mux2~2_combout\ : std_logic;
SIGNAL \U8|Add1~9\ : std_logic;
SIGNAL \U8|Add1~10_combout\ : std_logic;
SIGNAL \U8|Mux2~3_combout\ : std_logic;
SIGNAL \U8|Mux2~7_combout\ : std_logic;
SIGNAL \U8|Mux0~12_combout\ : std_logic;
SIGNAL \U8|Mux0~11_combout\ : std_logic;
SIGNAL \U8|Mux2~4_combout\ : std_logic;
SIGNAL \U8|Add18~26\ : std_logic;
SIGNAL \U8|Add18~36_combout\ : std_logic;
SIGNAL \U8|Add18~33_combout\ : std_logic;
SIGNAL \U8|Add18~34_combout\ : std_logic;
SIGNAL \U8|Add18~35_combout\ : std_logic;
SIGNAL \U8|Add18~38_combout\ : std_logic;
SIGNAL \U8|Add5~11\ : std_logic;
SIGNAL \U8|Add5~13_combout\ : std_logic;
SIGNAL \U8|Add5~15_combout\ : std_logic;
SIGNAL \U8|Add6~10\ : std_logic;
SIGNAL \U8|Add6~11_combout\ : std_logic;
SIGNAL \U8|Add6~17_combout\ : std_logic;
SIGNAL \U8|Add7~3\ : std_logic;
SIGNAL \U8|Add7~6_combout\ : std_logic;
SIGNAL \U8|Add7~8_combout\ : std_logic;
SIGNAL \U8|Add7~9_combout\ : std_logic;
SIGNAL \U8|Mux2~5_combout\ : std_logic;
SIGNAL \U8|Mux2~6_combout\ : std_logic;
SIGNAL \U10|data_latch[5]~6_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~5_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \U8|Mux1~2_combout\ : std_logic;
SIGNAL \U8|result~15_combout\ : std_logic;
SIGNAL \U8|Add1~11\ : std_logic;
SIGNAL \U8|Add1~12_combout\ : std_logic;
SIGNAL \U8|Mux1~3_combout\ : std_logic;
SIGNAL \U8|Mux1~7_combout\ : std_logic;
SIGNAL \U8|result~17_combout\ : std_logic;
SIGNAL \U8|result~16_combout\ : std_logic;
SIGNAL \U8|Mux1~4_combout\ : std_logic;
SIGNAL \U8|Add18~37\ : std_logic;
SIGNAL \U8|Add18~41_combout\ : std_logic;
SIGNAL \U8|Add18~39_combout\ : std_logic;
SIGNAL \U8|Add18~40_combout\ : std_logic;
SIGNAL \U8|Add18~43_combout\ : std_logic;
SIGNAL \U8|Add6~12\ : std_logic;
SIGNAL \U8|Add6~13_combout\ : std_logic;
SIGNAL \U8|Add6~15_combout\ : std_logic;
SIGNAL \U8|Add7~7\ : std_logic;
SIGNAL \U8|Add7~10_combout\ : std_logic;
SIGNAL \U8|Add7~12_combout\ : std_logic;
SIGNAL \U8|Add7~13_combout\ : std_logic;
SIGNAL \U8|Mux1~5_combout\ : std_logic;
SIGNAL \U8|Mux1~6_combout\ : std_logic;
SIGNAL \U10|data_latch[6]~7_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|_~6_combout\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \U8|Add2|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \U8|Mux0~13_combout\ : std_logic;
SIGNAL \U8|Add1~13\ : std_logic;
SIGNAL \U8|Add1~14_combout\ : std_logic;
SIGNAL \U8|Mux0~15_combout\ : std_logic;
SIGNAL \U8|Mux0~20_combout\ : std_logic;
SIGNAL \U8|Add18~42\ : std_logic;
SIGNAL \U8|Add18~44_combout\ : std_logic;
SIGNAL \U8|Add18~46_combout\ : std_logic;
SIGNAL \U8|Add18~47_combout\ : std_logic;
SIGNAL \U8|Mux0~16_combout\ : std_logic;
SIGNAL \U8|Mux0~17_combout\ : std_logic;
SIGNAL \U8|Add7~16_combout\ : std_logic;
SIGNAL \U8|Add7~11\ : std_logic;
SIGNAL \U8|Add7~14_combout\ : std_logic;
SIGNAL \U8|Add7~17_combout\ : std_logic;
SIGNAL \U8|Mux0~18_combout\ : std_logic;
SIGNAL \U8|Mux0~19_combout\ : std_logic;
SIGNAL \U10|data_latch[7]~8_combout\ : std_logic;
SIGNAL \data_out[7]~59_combout\ : std_logic;
SIGNAL \data_out[7]~62_combout\ : std_logic;
SIGNAL \data_out[1]~14_combout\ : std_logic;
SIGNAL \data_out[1]~16_combout\ : std_logic;
SIGNAL \U12|grc_latch[1]~feeder_combout\ : std_logic;
SIGNAL \data_out[1]~18_combout\ : std_logic;
SIGNAL \data_out[1]~19_combout\ : std_logic;
SIGNAL \data_out[1]~17_combout\ : std_logic;
SIGNAL \data_out[1]~20_combout\ : std_logic;
SIGNAL \data_out[0]~4_combout\ : std_logic;
SIGNAL \U3|ram_data~80_combout\ : std_logic;
SIGNAL \U3|ram_data~88_combout\ : std_logic;
SIGNAL \U3|ram_data~64_combout\ : std_logic;
SIGNAL \U3|ram_data~72_combout\ : std_logic;
SIGNAL \U3|ram_data~128_combout\ : std_logic;
SIGNAL \U3|ram_data~129_combout\ : std_logic;
SIGNAL \U3|ram_data~104_combout\ : std_logic;
SIGNAL \U3|ram_data~120_combout\ : std_logic;
SIGNAL \U3|ram_data~112_combout\ : std_logic;
SIGNAL \U3|ram_data~96_combout\ : std_logic;
SIGNAL \U3|ram_data~135_combout\ : std_logic;
SIGNAL \U3|ram_data~136_combout\ : std_logic;
SIGNAL \U3|ram_data~56_combout\ : std_logic;
SIGNAL \U3|ram_data~40_combout\ : std_logic;
SIGNAL \U3|ram_data~48_combout\ : std_logic;
SIGNAL \U3|ram_data~32_combout\ : std_logic;
SIGNAL \U3|ram_data~130_combout\ : std_logic;
SIGNAL \U3|ram_data~131_combout\ : std_logic;
SIGNAL \U3|ram_data~24_combout\ : std_logic;
SIGNAL \U3|ram_data~8_combout\ : std_logic;
SIGNAL \U3|ram_data~0_combout\ : std_logic;
SIGNAL \U3|ram_data~16_combout\ : std_logic;
SIGNAL \U3|ram_data~132_combout\ : std_logic;
SIGNAL \U3|ram_data~133_combout\ : std_logic;
SIGNAL \U3|ram_data~134_combout\ : std_logic;
SIGNAL \U3|ram_data~137_combout\ : std_logic;
SIGNAL \data_out[0]~6_combout\ : std_logic;
SIGNAL \data_out[0]~11_combout\ : std_logic;
SIGNAL \U12|grc_latch[0]~feeder_combout\ : std_logic;
SIGNAL \data_out[0]~12_combout\ : std_logic;
SIGNAL \data_out[0]~7_combout\ : std_logic;
SIGNAL \data_out[0]~13_combout\ : std_logic;
SIGNAL \U5|instruction[0]~feeder_combout\ : std_logic;
SIGNAL \U7|addr_latch[0]~9\ : std_logic;
SIGNAL \U7|addr_latch[1]~10_combout\ : std_logic;
SIGNAL \U7|addr_latch[1]~11\ : std_logic;
SIGNAL \U7|addr_latch[2]~12_combout\ : std_logic;
SIGNAL \data_out[2]~22_combout\ : std_logic;
SIGNAL \U3|ram_data~50_combout\ : std_logic;
SIGNAL \U3|ram_data~34_combout\ : std_logic;
SIGNAL \U3|ram_data~42_combout\ : std_logic;
SIGNAL \U3|ram_data~148_combout\ : std_logic;
SIGNAL \U3|ram_data~58_combout\ : std_logic;
SIGNAL \U3|ram_data~149_combout\ : std_logic;
SIGNAL \U3|ram_data~26_combout\ : std_logic;
SIGNAL \U3|ram_data~10_combout\ : std_logic;
SIGNAL \U3|ram_data~2_combout\ : std_logic;
SIGNAL \U3|ram_data~18_combout\ : std_logic;
SIGNAL \U3|ram_data~152_combout\ : std_logic;
SIGNAL \U3|ram_data~153_combout\ : std_logic;
SIGNAL \U3|ram_data~66_combout\ : std_logic;
SIGNAL \U3|ram_data~82_combout\ : std_logic;
SIGNAL \U3|ram_data~150_combout\ : std_logic;
SIGNAL \U3|ram_data~90_combout\ : std_logic;
SIGNAL \U3|ram_data~74_combout\ : std_logic;
SIGNAL \U3|ram_data~151_combout\ : std_logic;
SIGNAL \U3|ram_data~154_combout\ : std_logic;
SIGNAL \U3|ram_data~114_combout\ : std_logic;
SIGNAL \U3|ram_data~106_combout\ : std_logic;
SIGNAL \U3|ram_data~98_combout\ : std_logic;
SIGNAL \U3|ram_data~155_combout\ : std_logic;
SIGNAL \U3|ram_data~122_combout\ : std_logic;
SIGNAL \U3|ram_data~156_combout\ : std_logic;
SIGNAL \U3|ram_data~157_combout\ : std_logic;
SIGNAL \data_out[2]~21_combout\ : std_logic;
SIGNAL \data_out[2]~23_combout\ : std_logic;
SIGNAL \U12|grc_latch[2]~feeder_combout\ : std_logic;
SIGNAL \data_out[2]~25_combout\ : std_logic;
SIGNAL \data_out[2]~26_combout\ : std_logic;
SIGNAL \data_out[2]~24_combout\ : std_logic;
SIGNAL \data_out[2]~27_combout\ : std_logic;
SIGNAL \U14|Selector9~2_combout\ : std_logic;
SIGNAL \U14|Selector9~3_combout\ : std_logic;
SIGNAL \U14|Selector9~4_combout\ : std_logic;
SIGNAL \U14|Selector9~5_combout\ : std_logic;
SIGNAL \U14|Selector9~6_combout\ : std_logic;
SIGNAL \U14|Selector9~7_combout\ : std_logic;
SIGNAL \U14|regrd1_latch~q\ : std_logic;
SIGNAL \U12|gr_data_out[7]~0_combout\ : std_logic;
SIGNAL \data_out[4]~36_combout\ : std_logic;
SIGNAL \U3|ram_data~84_combout\ : std_logic;
SIGNAL \U3|ram_data~68_combout\ : std_logic;
SIGNAL \U3|ram_data~76_combout\ : std_logic;
SIGNAL \U3|ram_data~168_combout\ : std_logic;
SIGNAL \U3|ram_data~92_combout\ : std_logic;
SIGNAL \U3|ram_data~169_combout\ : std_logic;
SIGNAL \U3|ram_data~52_combout\ : std_logic;
SIGNAL \U3|ram_data~36_combout\ : std_logic;
SIGNAL \U3|ram_data~170_combout\ : std_logic;
SIGNAL \U3|ram_data~44_combout\ : std_logic;
SIGNAL \U3|ram_data~60_combout\ : std_logic;
SIGNAL \U3|ram_data~171_combout\ : std_logic;
SIGNAL \U3|ram_data~20_combout\ : std_logic;
SIGNAL \U3|ram_data~12_combout\ : std_logic;
SIGNAL \U3|ram_data~4_combout\ : std_logic;
SIGNAL \U3|ram_data~172_combout\ : std_logic;
SIGNAL \U3|ram_data~28_combout\ : std_logic;
SIGNAL \U3|ram_data~173_combout\ : std_logic;
SIGNAL \U3|ram_data~174_combout\ : std_logic;
SIGNAL \U3|ram_data~116_combout\ : std_logic;
SIGNAL \U3|ram_data~100_combout\ : std_logic;
SIGNAL \U3|ram_data~175_combout\ : std_logic;
SIGNAL \U3|ram_data~108_combout\ : std_logic;
SIGNAL \U3|ram_data~124_combout\ : std_logic;
SIGNAL \U3|ram_data~176_combout\ : std_logic;
SIGNAL \U3|ram_data~177_combout\ : std_logic;
SIGNAL \data_out[4]~35_combout\ : std_logic;
SIGNAL \data_out[4]~37_combout\ : std_logic;
SIGNAL \U12|gra_latch[4]~feeder_combout\ : std_logic;
SIGNAL \data_out[4]~39_combout\ : std_logic;
SIGNAL \data_out[4]~40_combout\ : std_logic;
SIGNAL \data_out[4]~38_combout\ : std_logic;
SIGNAL \data_out[4]~41_combout\ : std_logic;
SIGNAL \U6|Mux1~4_combout\ : std_logic;
SIGNAL \U14|Selector17~0_combout\ : std_logic;
SIGNAL \U14|Selector2~0_combout\ : std_logic;
SIGNAL \U14|Selector6~6_combout\ : std_logic;
SIGNAL \U14|Selector6~0_combout\ : std_logic;
SIGNAL \U14|Selector6~1_combout\ : std_logic;
SIGNAL \U14|Selector6~2_combout\ : std_logic;
SIGNAL \U14|Selector6~3_combout\ : std_logic;
SIGNAL \U14|Selector6~4_combout\ : std_logic;
SIGNAL \U14|Selector6~5_combout\ : std_logic;
SIGNAL \U14|Selector6~7_combout\ : std_logic;
SIGNAL \U14|dbfaout_latch~q\ : std_logic;
SIGNAL \data_out[6]~50_combout\ : std_logic;
SIGNAL \U3|ram_data~38_combout\ : std_logic;
SIGNAL \U3|ram_data~46_combout\ : std_logic;
SIGNAL \U3|ram_data~188_combout\ : std_logic;
SIGNAL \U3|ram_data~54_combout\ : std_logic;
SIGNAL \U3|ram_data~62_combout\ : std_logic;
SIGNAL \U3|ram_data~189_combout\ : std_logic;
SIGNAL \U3|ram_data~126_combout\ : std_logic;
SIGNAL \U3|ram_data~118_combout\ : std_logic;
SIGNAL \U3|ram_data~102_combout\ : std_logic;
SIGNAL \U3|ram_data~110_combout\ : std_logic;
SIGNAL \U3|ram_data~195_combout\ : std_logic;
SIGNAL \U3|ram_data~196_combout\ : std_logic;
SIGNAL \U3|ram_data~30_combout\ : std_logic;
SIGNAL \U3|ram_data~22_combout\ : std_logic;
SIGNAL \U3|ram_data~6_combout\ : std_logic;
SIGNAL \U3|ram_data~192_combout\ : std_logic;
SIGNAL \U3|ram_data~14_combout\ : std_logic;
SIGNAL \U3|ram_data~193_combout\ : std_logic;
SIGNAL \U3|ram_data~78_combout\ : std_logic;
SIGNAL \U3|ram_data~70_combout\ : std_logic;
SIGNAL \U3|ram_data~86_combout\ : std_logic;
SIGNAL \U3|ram_data~190_combout\ : std_logic;
SIGNAL \U3|ram_data~94_combout\ : std_logic;
SIGNAL \U3|ram_data~191_combout\ : std_logic;
SIGNAL \U3|ram_data~194_combout\ : std_logic;
SIGNAL \U3|ram_data~197_combout\ : std_logic;
SIGNAL \data_out[6]~49_combout\ : std_logic;
SIGNAL \data_out[6]~51_combout\ : std_logic;
SIGNAL \U12|grb_latch[6]~feeder_combout\ : std_logic;
SIGNAL \data_out[6]~53_combout\ : std_logic;
SIGNAL \data_out[6]~54_combout\ : std_logic;
SIGNAL \data_out[6]~52_combout\ : std_logic;
SIGNAL \data_out[6]~55_combout\ : std_logic;
SIGNAL \U6|Mux4~0_combout\ : std_logic;
SIGNAL \U14|Selector15~0_combout\ : std_logic;
SIGNAL \U14|Selector1~2_combout\ : std_logic;
SIGNAL \U14|Selector1~3_combout\ : std_logic;
SIGNAL \U14|Selector1~1_combout\ : std_logic;
SIGNAL \U14|Selector1~4_combout\ : std_logic;
SIGNAL \U14|nextn_latch~feeder_combout\ : std_logic;
SIGNAL \U14|nextn_latch~q\ : std_logic;
SIGNAL \U7|addr_latch[5]~18_combout\ : std_logic;
SIGNAL \U5|instruction[5]~feeder_combout\ : std_logic;
SIGNAL \data_out[5]~43_combout\ : std_logic;
SIGNAL \U3|ram_data~53_combout\ : std_logic;
SIGNAL \U3|ram_data~117_combout\ : std_logic;
SIGNAL \U3|ram_data~85_combout\ : std_logic;
SIGNAL \U3|ram_data~21_combout\ : std_logic;
SIGNAL \U3|ram_data~178_combout\ : std_logic;
SIGNAL \U3|ram_data~179_combout\ : std_logic;
SIGNAL \U3|ram_data~93_combout\ : std_logic;
SIGNAL \U3|ram_data~125_combout\ : std_logic;
SIGNAL \U3|ram_data~61_combout\ : std_logic;
SIGNAL \U3|ram_data~29_combout\ : std_logic;
SIGNAL \U3|ram_data~185_combout\ : std_logic;
SIGNAL \U3|ram_data~186_combout\ : std_logic;
SIGNAL \U3|ram_data~77_combout\ : std_logic;
SIGNAL \U3|ram_data~13_combout\ : std_logic;
SIGNAL \U3|ram_data~45_combout\ : std_logic;
SIGNAL \U3|ram_data~180_combout\ : std_logic;
SIGNAL \U3|ram_data~109_combout\ : std_logic;
SIGNAL \U3|ram_data~181_combout\ : std_logic;
SIGNAL \U3|ram_data~37_combout\ : std_logic;
SIGNAL \U3|ram_data~101_combout\ : std_logic;
SIGNAL \U3|ram_data~5_combout\ : std_logic;
SIGNAL \U3|ram_data~69_combout\ : std_logic;
SIGNAL \U3|ram_data~182_combout\ : std_logic;
SIGNAL \U3|ram_data~183_combout\ : std_logic;
SIGNAL \U3|ram_data~184_combout\ : std_logic;
SIGNAL \U3|ram_data~187_combout\ : std_logic;
SIGNAL \data_out[5]~42_combout\ : std_logic;
SIGNAL \data_out[5]~44_combout\ : std_logic;
SIGNAL \data_out[5]~46_combout\ : std_logic;
SIGNAL \data_out[5]~47_combout\ : std_logic;
SIGNAL \data_out[5]~45_combout\ : std_logic;
SIGNAL \data_out[5]~48_combout\ : std_logic;
SIGNAL \U6|Mux7~0_combout\ : std_logic;
SIGNAL \U6|Mux7~1_combout\ : std_logic;
SIGNAL \U14|Selector14~0_combout\ : std_logic;
SIGNAL \U14|Selector14~1_combout\ : std_logic;
SIGNAL \U14|ramrd_latch~q\ : std_logic;
SIGNAL \data_out[3]~29_combout\ : std_logic;
SIGNAL \data_out[3]~28_combout\ : std_logic;
SIGNAL \U3|ram_data~107_combout\ : std_logic;
SIGNAL \U3|ram_data~43_combout\ : std_logic;
SIGNAL \U3|ram_data~11_combout\ : std_logic;
SIGNAL \U3|ram_data~75_combout\ : std_logic;
SIGNAL \U3|ram_data~158_combout\ : std_logic;
SIGNAL \U3|ram_data~159_combout\ : std_logic;
SIGNAL \U3|ram_data~115_combout\ : std_logic;
SIGNAL \U3|ram_data~83_combout\ : std_logic;
SIGNAL \U3|ram_data~19_combout\ : std_logic;
SIGNAL \U3|ram_data~51_combout\ : std_logic;
SIGNAL \U3|ram_data~160_combout\ : std_logic;
SIGNAL \U3|ram_data~161_combout\ : std_logic;
SIGNAL \U3|ram_data~99_combout\ : std_logic;
SIGNAL \U3|ram_data~67_combout\ : std_logic;
SIGNAL \U3|ram_data~3_combout\ : std_logic;
SIGNAL \U3|ram_data~35_combout\ : std_logic;
SIGNAL \U3|ram_data~162_combout\ : std_logic;
SIGNAL \U3|ram_data~163_combout\ : std_logic;
SIGNAL \U3|ram_data~164_combout\ : std_logic;
SIGNAL \U3|ram_data~59_combout\ : std_logic;
SIGNAL \U3|ram_data~123_combout\ : std_logic;
SIGNAL \U3|ram_data~27_combout\ : std_logic;
SIGNAL \U3|ram_data~91_combout\ : std_logic;
SIGNAL \U3|ram_data~165_combout\ : std_logic;
SIGNAL \U3|ram_data~166_combout\ : std_logic;
SIGNAL \U3|ram_data~167_combout\ : std_logic;
SIGNAL \data_out[3]~30_combout\ : std_logic;
SIGNAL \U12|gra_latch[3]~feeder_combout\ : std_logic;
SIGNAL \U12|grc_latch[3]~feeder_combout\ : std_logic;
SIGNAL \data_out[3]~32_combout\ : std_logic;
SIGNAL \data_out[3]~33_combout\ : std_logic;
SIGNAL \data_out[3]~31_combout\ : std_logic;
SIGNAL \data_out[3]~34_combout\ : std_logic;
SIGNAL \U14|next_state~25_combout\ : std_logic;
SIGNAL \U6|Mux0~1_combout\ : std_logic;
SIGNAL \U14|counter[0]~20_combout\ : std_logic;
SIGNAL \U14|counter[0]~21\ : std_logic;
SIGNAL \U14|counter[1]~22_combout\ : std_logic;
SIGNAL \U14|counter[1]~23\ : std_logic;
SIGNAL \U14|counter[2]~24_combout\ : std_logic;
SIGNAL \U14|counter[2]~25\ : std_logic;
SIGNAL \U14|counter[3]~26_combout\ : std_logic;
SIGNAL \U14|counter[3]~27\ : std_logic;
SIGNAL \U14|counter[4]~28_combout\ : std_logic;
SIGNAL \U14|counter[4]~29\ : std_logic;
SIGNAL \U14|counter[5]~30_combout\ : std_logic;
SIGNAL \U14|counter[5]~31\ : std_logic;
SIGNAL \U14|counter[6]~32_combout\ : std_logic;
SIGNAL \U14|counter[6]~33\ : std_logic;
SIGNAL \U14|counter[7]~34_combout\ : std_logic;
SIGNAL \U14|counter[7]~35\ : std_logic;
SIGNAL \U14|counter[8]~36_combout\ : std_logic;
SIGNAL \U14|counter[8]~37\ : std_logic;
SIGNAL \U14|counter[9]~38_combout\ : std_logic;
SIGNAL \U14|counter[9]~39\ : std_logic;
SIGNAL \U14|counter[10]~40_combout\ : std_logic;
SIGNAL \U14|counter[10]~41\ : std_logic;
SIGNAL \U14|counter[11]~42_combout\ : std_logic;
SIGNAL \U14|counter[11]~43\ : std_logic;
SIGNAL \U14|counter[12]~44_combout\ : std_logic;
SIGNAL \U14|counter[12]~45\ : std_logic;
SIGNAL \U14|counter[13]~46_combout\ : std_logic;
SIGNAL \U14|counter[13]~47\ : std_logic;
SIGNAL \U14|counter[14]~48_combout\ : std_logic;
SIGNAL \U14|counter[14]~49\ : std_logic;
SIGNAL \U14|counter[15]~50_combout\ : std_logic;
SIGNAL \U14|counter[15]~51\ : std_logic;
SIGNAL \U14|counter[16]~52_combout\ : std_logic;
SIGNAL \U14|counter[16]~53\ : std_logic;
SIGNAL \U14|counter[17]~54_combout\ : std_logic;
SIGNAL \U14|counter[17]~55\ : std_logic;
SIGNAL \U14|counter[18]~56_combout\ : std_logic;
SIGNAL \U14|counter[18]~57\ : std_logic;
SIGNAL \U14|counter[19]~58_combout\ : std_logic;
SIGNAL \U14|Selector19~0_combout\ : std_logic;
SIGNAL \U14|process_0~0_combout\ : std_logic;
SIGNAL \U14|Selector19~1_combout\ : std_logic;
SIGNAL \U14|next_state.t18~q\ : std_logic;
SIGNAL \U14|current_state.t18~q\ : std_logic;
SIGNAL \U14|Selector16~1_combout\ : std_logic;
SIGNAL \U14|Selector16~0_combout\ : std_logic;
SIGNAL \U14|Selector16~2_combout\ : std_logic;
SIGNAL \U14|Selector16~3_combout\ : std_logic;
SIGNAL \U14|next_state.t1~q\ : std_logic;
SIGNAL \U14|current_state.t1~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t1~q\ : std_logic;
SIGNAL \U14|Selector17~1_combout\ : std_logic;
SIGNAL \U14|next_state.t2~q\ : std_logic;
SIGNAL \U14|current_state.t2~q\ : std_logic;
SIGNAL \U14|next_state.t3~q\ : std_logic;
SIGNAL \U14|current_state.t3~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t3~q\ : std_logic;
SIGNAL \U14|next_state.t4~q\ : std_logic;
SIGNAL \U14|current_state.t4~q\ : std_logic;
SIGNAL \U14|next_state.t5~q\ : std_logic;
SIGNAL \U14|current_state.t5~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t5~q\ : std_logic;
SIGNAL \U14|next_state.t6~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t6~q\ : std_logic;
SIGNAL \U14|current_state.t6~q\ : std_logic;
SIGNAL \U14|next_state.t7~q\ : std_logic;
SIGNAL \U14|current_state.t7~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t7~q\ : std_logic;
SIGNAL \U14|next_state.t8~feeder_combout\ : std_logic;
SIGNAL \U14|next_state.t8~q\ : std_logic;
SIGNAL \U14|current_state.t8~feeder_combout\ : std_logic;
SIGNAL \U14|current_state.t8~q\ : std_logic;
SIGNAL \U14|Selector4~1_combout\ : std_logic;
SIGNAL \U14|enirin_latch~feeder_combout\ : std_logic;
SIGNAL \U14|enirin_latch~q\ : std_logic;
SIGNAL \U14|enirin_latch~clkctrl_outclk\ : std_logic;
SIGNAL \U6|Mux3~0_combout\ : std_logic;
SIGNAL \U14|next_state~27_combout\ : std_logic;
SIGNAL \U14|next_state.t11~q\ : std_logic;
SIGNAL \U14|current_state.t11~q\ : std_logic;
SIGNAL \U6|Mux1~5_combout\ : std_logic;
SIGNAL \U14|Selector21~0_combout\ : std_logic;
SIGNAL \U14|enled_latch~feeder_combout\ : std_logic;
SIGNAL \U14|enled_latch~q\ : std_logic;
SIGNAL \U14|enled_latch~clkctrl_outclk\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \U13|Mux8~0_combout\ : std_logic;
SIGNAL \U13|Mux8~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \U13|Mux7~0_combout\ : std_logic;
SIGNAL \U13|Mux7~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
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
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \U13|Mux3~0_combout\ : std_logic;
SIGNAL \U13|Mux3~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \U13|Mux2~0_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \U13|Mux2~1_combout\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \U13|Ram0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \U13|Mux1~0_combout\ : std_logic;
SIGNAL \U13|Mux1~1_combout\ : std_logic;
SIGNAL \U1|counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U12|grc_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U13|current_led_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U5|instruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U7|addr_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|grb_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U14|counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \U13|led_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U5|ir_grcode\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U13|led_dig_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|ram_address_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|grd_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U12|gra_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U8|alu_result_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U11|grc_grwt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|inst3|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U10|data_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|inst3|ALT_INV_stop_counter~q\ : std_logic;
SIGNAL \U5|ALT_INV_state~q\ : std_logic;
SIGNAL \U13|ALT_INV_led_dig_temp\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk_input <= clk_input;
sel <= ww_sel;
dig <= ww_dig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U13|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_out[7]~62_combout\ & \data_out[6]~55_combout\ & \data_out[5]~48_combout\ & \data_out[4]~41_combout\ & \data_out[3]~34_combout\ & \data_out[2]~27_combout\ & \data_out[1]~20_combout\ & 
\data_out[0]~13_combout\);

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

\U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_out[7]~62_combout\ & \data_out[6]~55_combout\ & \data_out[5]~48_combout\ & \data_out[4]~41_combout\ & \data_out[3]~34_combout\ & \data_out[2]~27_combout\ & 
\data_out[1]~20_combout\ & \data_out[0]~13_combout\);

\U4|inst|altsyncram_component|auto_generated|q_a\(0) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U4|inst|altsyncram_component|auto_generated|q_a\(1) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U4|inst|altsyncram_component|auto_generated|q_a\(2) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U4|inst|altsyncram_component|auto_generated|q_a\(3) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U4|inst|altsyncram_component|auto_generated|q_a\(4) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U4|inst|altsyncram_component|auto_generated|q_a\(5) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U4|inst|altsyncram_component|auto_generated|q_a\(6) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U4|inst|altsyncram_component|auto_generated|q_a\(7) <= \U4|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\U14|enirin_latch~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U14|enirin_latch~q\);

\U1|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|clk_out~q\);

\U1|clk_led~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|clk_led~q\);

\U14|enled_latch~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U14|enled_latch~q\);

\clk_input~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_input~input_o\);

\U11|grc_grwt[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(0));

\U10|data_latch[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U10|data_latch[7]~1_combout\);

\U11|grc_grwt[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(3));

\U11|grc_grwt[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(2));

\U11|grc_grwt[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U11|grc_grwt\(1));
\U4|inst3|ALT_INV_stop_counter~q\ <= NOT \U4|inst3|stop_counter~q\;
\U5|ALT_INV_state~q\ <= NOT \U5|state~q\;
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

-- Location: LCCOMB_X5_Y11_N12
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

-- Location: FF_X5_Y11_N13
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

-- Location: LCCOMB_X5_Y11_N16
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

-- Location: FF_X5_Y11_N17
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

-- Location: LCCOMB_X5_Y11_N18
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

-- Location: FF_X5_Y11_N19
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

-- Location: LCCOMB_X5_Y11_N20
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

-- Location: FF_X5_Y11_N21
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

-- Location: LCCOMB_X5_Y11_N22
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

-- Location: FF_X5_Y11_N23
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

-- Location: LCCOMB_X5_Y11_N24
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

-- Location: FF_X5_Y11_N25
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

-- Location: LCCOMB_X5_Y11_N26
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

-- Location: FF_X5_Y11_N27
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

-- Location: LCCOMB_X5_Y11_N28
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

-- Location: FF_X5_Y11_N29
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

-- Location: LCCOMB_X5_Y11_N30
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

-- Location: FF_X5_Y11_N31
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

-- Location: LCCOMB_X5_Y10_N0
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

-- Location: FF_X5_Y10_N1
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

-- Location: LCCOMB_X5_Y10_N2
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

-- Location: FF_X5_Y10_N3
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

-- Location: LCCOMB_X5_Y10_N4
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

-- Location: FF_X5_Y10_N5
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

-- Location: LCCOMB_X5_Y10_N6
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

-- Location: FF_X5_Y10_N7
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

-- Location: LCCOMB_X5_Y10_N8
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

-- Location: FF_X5_Y10_N9
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

-- Location: LCCOMB_X5_Y10_N10
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

-- Location: FF_X5_Y10_N11
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

-- Location: LCCOMB_X5_Y10_N12
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

-- Location: FF_X5_Y10_N13
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

-- Location: LCCOMB_X5_Y10_N14
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

-- Location: FF_X5_Y10_N15
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

-- Location: LCCOMB_X5_Y10_N16
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

-- Location: FF_X5_Y10_N17
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

-- Location: LCCOMB_X13_Y9_N22
\U13|current_led_sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|current_led_sel[0]~0_combout\ = !\U13|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|Mux9~0_combout\,
	combout => \U13|current_led_sel[0]~0_combout\);

-- Location: FF_X13_Y9_N23
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

-- Location: FF_X13_Y9_N11
\U13|current_led_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_led~clkctrl_outclk\,
	asdata => \U13|current_led_sel\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U13|current_led_sel\(1));

-- Location: LCCOMB_X13_Y9_N26
\U13|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux9~0_combout\ = (\U13|current_led_sel\(0)) # (\U13|current_led_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datad => \U13|current_led_sel\(1),
	combout => \U13|Mux9~0_combout\);

-- Location: FF_X13_Y9_N27
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

-- Location: LCCOMB_X13_Y9_N30
\U13|led_sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|led_sel[1]~0_combout\ = !\U13|current_led_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U13|current_led_sel\(0),
	combout => \U13|led_sel[1]~0_combout\);

-- Location: FF_X13_Y9_N31
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

-- Location: LCCOMB_X13_Y9_N6
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

-- Location: FF_X13_Y9_N7
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

-- Location: LCCOMB_X12_Y11_N30
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

-- Location: FF_X12_Y11_N31
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

-- Location: FF_X13_Y11_N21
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

-- Location: LCCOMB_X13_Y11_N18
\U14|current_state.t9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t9~feeder_combout\ = \U14|next_state.t9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t9~q\,
	combout => \U14|current_state.t9~feeder_combout\);

-- Location: FF_X13_Y11_N19
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

-- Location: FF_X13_Y10_N31
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

-- Location: FF_X13_Y10_N25
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

-- Location: LCCOMB_X13_Y10_N28
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

-- Location: FF_X13_Y10_N29
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

-- Location: FF_X14_Y10_N25
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

-- Location: LCCOMB_X19_Y10_N22
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

-- Location: FF_X19_Y10_N23
\U14|next_state.t_rst_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t_rst_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t_rst_2~q\);

-- Location: FF_X19_Y10_N11
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

-- Location: LCCOMB_X13_Y11_N4
\U14|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~0_combout\ = (\U14|current_state.t8~q\) # ((\U14|current_state.t4~q\) # (\U14|current_state.t_rst_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t8~q\,
	datac => \U14|current_state.t4~q\,
	datad => \U14|current_state.t_rst_2~q\,
	combout => \U14|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y11_N26
\U6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux0~0_combout\ = (!\U5|instruction\(13) & \U5|instruction\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|instruction\(13),
	datad => \U5|instruction\(15),
	combout => \U6|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y11_N10
\U7|addr_latch[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[0]~8_combout\ = \U7|addr_latch\(0) $ (VCC)
-- \U7|addr_latch[0]~9\ = CARRY(\U7|addr_latch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(0),
	datad => VCC,
	combout => \U7|addr_latch[0]~8_combout\,
	cout => \U7|addr_latch[0]~9\);

-- Location: LCCOMB_X17_Y12_N18
\U14|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector3~1_combout\ = (!\U14|current_state.t3~q\ & (\U14|current_state.t_rst_1~q\ & (\U14|enpcout_latch~q\ & !\U14|current_state.t7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t3~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U14|enpcout_latch~q\,
	datad => \U14|current_state.t7~q\,
	combout => \U14|Selector3~1_combout\);

-- Location: LCCOMB_X14_Y10_N2
\U6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux6~0_combout\ = (\U5|instruction\(15)) # ((!\U6|Mux1~4_combout\) # (!\U5|instruction\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(15),
	datac => \U5|instruction\(13),
	datad => \U6|Mux1~4_combout\,
	combout => \U6|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y12_N24
\U14|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector3~0_combout\ = (\U14|current_state.t11~q\ & ((\U14|enpcout_latch~q\) # ((\U14|Selector15~0_combout\ & !\U6|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|enpcout_latch~q\,
	datac => \U14|Selector15~0_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y12_N22
\U14|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector3~2_combout\ = (\U14|current_state.t5~q\) # ((\U14|Selector3~1_combout\) # ((\U14|current_state.t1~q\) # (\U14|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t5~q\,
	datab => \U14|Selector3~1_combout\,
	datac => \U14|current_state.t1~q\,
	datad => \U14|Selector3~0_combout\,
	combout => \U14|Selector3~2_combout\);

-- Location: FF_X17_Y12_N23
\U14|enpcout_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enpcout_latch~q\);

-- Location: LCCOMB_X16_Y11_N28
\data_out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~5_combout\ = (\U7|addr_latch\(0) & ((\U14|enpcout_latch~q\) # ((\U14|dbfaout_latch~q\ & \U5|instruction\(0))))) # (!\U7|addr_latch\(0) & (\U14|dbfaout_latch~q\ & (\U5|instruction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(0),
	datab => \U14|dbfaout_latch~q\,
	datac => \U5|instruction\(0),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[0]~5_combout\);

-- Location: LCCOMB_X13_Y11_N12
\U14|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector4~0_combout\ = (!\U14|current_state.t5~q\ & (!\U14|current_state.t9~q\ & \U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t5~q\,
	datab => \U14|current_state.t9~q\,
	datad => \U14|current_state.t_rst_1~q\,
	combout => \U14|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y11_N6
\U14|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector12~2_combout\ = (\U14|current_state.t7~q\) # ((\U14|current_state.t3~q\) # ((\U14|Selector4~0_combout\ & \U14|enrom_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector4~0_combout\,
	datab => \U14|current_state.t7~q\,
	datac => \U14|enrom_latch~q\,
	datad => \U14|current_state.t3~q\,
	combout => \U14|Selector12~2_combout\);

-- Location: FF_X13_Y11_N7
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

-- Location: LCCOMB_X17_Y12_N20
\U14|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector20~0_combout\ = (!\U14|current_state.t3~q\ & !\U14|current_state.t7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|current_state.t3~q\,
	datad => \U14|current_state.t7~q\,
	combout => \U14|Selector20~0_combout\);

-- Location: LCCOMB_X17_Y12_N26
\U14|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector20~1_combout\ = (\U14|current_state.t6~q\) # ((\U14|current_state.t2~q\) # ((\U14|Selector20~0_combout\ & \U14|romin_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t6~q\,
	datab => \U14|Selector20~0_combout\,
	datac => \U14|current_state.t2~q\,
	datad => \U14|romin_latch~q\,
	combout => \U14|Selector20~1_combout\);

-- Location: LCCOMB_X17_Y12_N16
\U14|romin_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|romin_latch~feeder_combout\ = \U14|Selector20~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|Selector20~1_combout\,
	combout => \U14|romin_latch~feeder_combout\);

-- Location: FF_X17_Y12_N17
\U14|romin_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|romin_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|romin_latch~q\);

-- Location: LCCOMB_X19_Y8_N28
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

-- Location: LCCOMB_X19_Y8_N18
\U4|inst3|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[0]~1_combout\ = (\U4|inst3|counter\(1)) # (!\U4|inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|inst3|counter\(0),
	datad => \U4|inst3|counter\(1),
	combout => \U4|inst3|counter[0]~1_combout\);

-- Location: FF_X19_Y8_N19
\U4|inst3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[0]~1_combout\,
	clrn => \U4|inst3|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(0));

-- Location: LCCOMB_X19_Y8_N30
\U4|inst3|counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|counter[1]~0_combout\ = (\U4|inst3|counter\(1)) # (\U4|inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|inst3|counter\(1),
	datad => \U4|inst3|counter\(0),
	combout => \U4|inst3|counter[1]~0_combout\);

-- Location: FF_X19_Y8_N31
\U4|inst3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_input~inputclkctrl_outclk\,
	d => \U4|inst3|counter[1]~0_combout\,
	clrn => \U4|inst3|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|inst3|counter\(1));

-- Location: LCCOMB_X19_Y8_N24
\U4|inst3|stop_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|inst3|stop_counter~0_combout\ = (\U4|inst3|stop_counter~q\) # ((\U4|inst3|counter\(1) & \U4|inst3|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst3|counter\(1),
	datac => \U4|inst3|stop_counter~q\,
	datad => \U4|inst3|counter\(0),
	combout => \U4|inst3|stop_counter~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
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

-- Location: FF_X19_Y8_N15
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

-- Location: FF_X19_Y8_N29
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

-- Location: LCCOMB_X19_Y8_N20
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

-- Location: LCCOMB_X19_Y11_N24
\U5|instruction[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[1]~feeder_combout\ = \data_out[1]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[1]~20_combout\,
	combout => \U5|instruction[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N26
\U5|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|state~0_combout\ = !\U5|state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|state~q\,
	combout => \U5|state~0_combout\);

-- Location: LCCOMB_X18_Y7_N20
\U5|state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|state~feeder_combout\ = \U5|state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|state~0_combout\,
	combout => \U5|state~feeder_combout\);

-- Location: FF_X18_Y7_N21
\U5|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	d => \U5|state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|state~q\);

-- Location: FF_X19_Y11_N25
\U5|instruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	d => \U5|instruction[1]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(1));

-- Location: LCCOMB_X16_Y11_N6
\data_out[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~15_combout\ = (\U7|addr_latch\(1) & ((\U14|enpcout_latch~q\) # ((\U5|instruction\(1) & \U14|dbfaout_latch~q\)))) # (!\U7|addr_latch\(1) & (((\U5|instruction\(1) & \U14|dbfaout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(1),
	datab => \U14|enpcout_latch~q\,
	datac => \U5|instruction\(1),
	datad => \U14|dbfaout_latch~q\,
	combout => \data_out[1]~15_combout\);

-- Location: FF_X14_Y12_N19
\U14|next_state.t12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t12~q\);

-- Location: LCCOMB_X14_Y12_N0
\U14|current_state.t12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t12~feeder_combout\ = \U14|next_state.t12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|next_state.t12~q\,
	combout => \U14|current_state.t12~feeder_combout\);

-- Location: FF_X14_Y12_N1
\U14|current_state.t12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t12~q\);

-- Location: LCCOMB_X18_Y11_N30
\U14|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector13~2_combout\ = (\U14|current_state.t11~q\) # ((\U14|current_state.t12~q\ & (!\U6|Mux7~0_combout\)) # (!\U14|current_state.t12~q\ & ((\U14|current_state.t_rst_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux7~0_combout\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U14|current_state.t12~q\,
	datad => \U14|current_state.t11~q\,
	combout => \U14|Selector13~2_combout\);

-- Location: LCCOMB_X13_Y10_N14
\U14|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector13~4_combout\ = ((\U5|instruction\(14)) # ((\U5|instruction\(12)) # (\U5|instruction\(13)))) # (!\U5|instruction\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(13),
	combout => \U14|Selector13~4_combout\);

-- Location: LCCOMB_X18_Y11_N16
\U14|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector13~3_combout\ = (\U14|ramin_latch~q\ & ((\U14|Selector13~2_combout\) # ((\U14|current_state.t11~q\ & !\U14|Selector13~4_combout\)))) # (!\U14|ramin_latch~q\ & (\U14|current_state.t11~q\ & ((!\U14|Selector13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramin_latch~q\,
	datab => \U14|current_state.t11~q\,
	datac => \U14|Selector13~2_combout\,
	datad => \U14|Selector13~4_combout\,
	combout => \U14|Selector13~3_combout\);

-- Location: LCCOMB_X18_Y11_N14
\U14|ramin_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|ramin_latch~feeder_combout\ = \U14|Selector13~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector13~3_combout\,
	combout => \U14|ramin_latch~feeder_combout\);

-- Location: FF_X18_Y11_N15
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

-- Location: FF_X17_Y7_N1
\U3|ram_address_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	asdata => \data_out[1]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ram_address_latch\(1));

-- Location: FF_X18_Y9_N21
\U3|ram_address_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	asdata => \data_out[3]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ram_address_latch\(3));

-- Location: LCCOMB_X16_Y7_N30
\U3|ram_address_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_address_latch[2]~feeder_combout\ = \data_out[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_address_latch[2]~feeder_combout\);

-- Location: FF_X16_Y7_N31
\U3|ram_address_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	d => \U3|ram_address_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ram_address_latch\(2));

-- Location: FF_X19_Y9_N27
\U3|ram_address_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|ramin_latch~q\,
	asdata => \data_out[0]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|ram_address_latch\(0));

-- Location: LCCOMB_X19_Y9_N26
\U3|ram_data~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~223_combout\ = (\U3|ram_address_latch\(3) & (\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(0) & \U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~223_combout\);

-- Location: LCCOMB_X13_Y10_N26
\U14|next_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state~26_combout\ = (\U14|Selector17~0_combout\ & (\U14|current_state.t12~q\ & \U6|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|Selector17~0_combout\,
	datac => \U14|current_state.t12~q\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|next_state~26_combout\);

-- Location: FF_X13_Y10_N27
\U14|next_state.t13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t13~q\);

-- Location: FF_X14_Y12_N15
\U14|current_state.t13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t13~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t13~q\);

-- Location: FF_X14_Y10_N23
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

-- Location: FF_X14_Y10_N9
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

-- Location: LCCOMB_X14_Y10_N26
\U14|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~2_combout\ = (\U14|current_state.t13~q\) # ((!\U14|current_state.t14~q\ & \U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|current_state.t14~q\,
	datac => \U14|current_state.t13~q\,
	datad => \U14|current_state.t_rst_1~q\,
	combout => \U14|Selector15~2_combout\);

-- Location: LCCOMB_X14_Y10_N14
\U14|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~1_combout\ = (\U5|instruction\(11) & (\U14|current_state.t13~q\ & (\U14|Selector15~0_combout\ & \U6|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U14|current_state.t13~q\,
	datac => \U14|Selector15~0_combout\,
	datad => \U6|Mux7~0_combout\,
	combout => \U14|Selector15~1_combout\);

-- Location: LCCOMB_X14_Y10_N12
\U14|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~1_combout\ = (\U14|current_state.t14~q\ & (((!\U6|Mux7~0_combout\) # (!\U14|Selector15~0_combout\)) # (!\U5|instruction\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U14|current_state.t14~q\,
	datac => \U14|Selector15~0_combout\,
	datad => \U6|Mux7~0_combout\,
	combout => \U14|Selector9~1_combout\);

-- Location: LCCOMB_X14_Y10_N30
\U14|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~3_combout\ = (\U14|Selector15~1_combout\) # ((\U14|ramwt_latch~q\ & ((\U14|Selector15~2_combout\) # (\U14|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector15~2_combout\,
	datab => \U14|Selector15~1_combout\,
	datac => \U14|ramwt_latch~q\,
	datad => \U14|Selector9~1_combout\,
	combout => \U14|Selector15~3_combout\);

-- Location: FF_X14_Y10_N31
\U14|ramwt_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~q\,
	d => \U14|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ramwt_latch~q\);

-- Location: LCCOMB_X14_Y7_N12
\rtl~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\U3|ram_data~223_combout\ & (!\U14|ramrd_latch~q\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~223_combout\,
	datac => \U14|ramrd_latch~q\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~15_combout\);

-- Location: LCCOMB_X14_Y10_N22
\U3|ram_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~121_combout\ = (\rtl~15_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~121_combout\,
	datab => \rtl~15_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~121_combout\);

-- Location: LCCOMB_X17_Y8_N26
\U3|ram_data~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~215_combout\ = (\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(3) & \U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~215_combout\);

-- Location: LCCOMB_X17_Y8_N10
\rtl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\U14|ramwt_latch~q\ & (\U3|ram_data~215_combout\ & !\U14|ramrd_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|ramwt_latch~q\,
	datac => \U3|ram_data~215_combout\,
	datad => \U14|ramrd_latch~q\,
	combout => \rtl~7_combout\);

-- Location: LCCOMB_X17_Y8_N8
\U3|ram_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~57_combout\ = (\rtl~7_combout\ & (\data_out[1]~20_combout\)) # (!\rtl~7_combout\ & ((\U3|ram_data~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datac => \data_out[1]~20_combout\,
	datad => \U3|ram_data~57_combout\,
	combout => \U3|ram_data~57_combout\);

-- Location: LCCOMB_X17_Y8_N22
\U3|ram_data~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~216_combout\ = (!\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(3) & \U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~216_combout\);

-- Location: LCCOMB_X17_Y8_N20
\rtl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\U14|ramwt_latch~q\ & (\U3|ram_data~216_combout\ & !\U14|ramrd_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|ramwt_latch~q\,
	datac => \U3|ram_data~216_combout\,
	datad => \U14|ramrd_latch~q\,
	combout => \rtl~11_combout\);

-- Location: LCCOMB_X17_Y8_N4
\U3|ram_data~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~25_combout\ = (\rtl~11_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~11_combout\ & (\U3|ram_data~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~11_combout\,
	datab => \U3|ram_data~25_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~25_combout\);

-- Location: LCCOMB_X17_Y10_N22
\U3|ram_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~145_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~57_combout\) # ((\U3|ram_address_latch\(3))))) # (!\U3|ram_address_latch\(2) & (((!\U3|ram_address_latch\(3) & \U3|ram_data~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~57_combout\,
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_data~25_combout\,
	combout => \U3|ram_data~145_combout\);

-- Location: LCCOMB_X18_Y6_N10
\U3|ram_data~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~211_combout\ = (\U3|ram_address_latch\(3) & (!\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(1) & \U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~211_combout\);

-- Location: LCCOMB_X18_Y6_N16
\rtl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\U3|ram_data~211_combout\ & (!\U14|ramrd_latch~q\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~211_combout\,
	datac => \U14|ramrd_latch~q\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~3_combout\);

-- Location: LCCOMB_X18_Y6_N2
\U3|ram_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~89_combout\ = (\rtl~3_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~3_combout\ & (\U3|ram_data~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datab => \U3|ram_data~89_combout\,
	datac => \data_out[1]~20_combout\,
	combout => \U3|ram_data~89_combout\);

-- Location: LCCOMB_X17_Y10_N20
\U3|ram_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~146_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~145_combout\ & (\U3|ram_data~121_combout\)) # (!\U3|ram_data~145_combout\ & ((\U3|ram_data~89_combout\))))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~121_combout\,
	datac => \U3|ram_data~145_combout\,
	datad => \U3|ram_data~89_combout\,
	combout => \U3|ram_data~146_combout\);

-- Location: LCCOMB_X17_Y8_N6
\U3|ram_data~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~213_combout\ = (\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(3) & !\U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~213_combout\);

-- Location: LCCOMB_X17_Y8_N30
\rtl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\U14|ramwt_latch~q\ & (!\U14|ramrd_latch~q\ & \U3|ram_data~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|ramwt_latch~q\,
	datac => \U14|ramrd_latch~q\,
	datad => \U3|ram_data~213_combout\,
	combout => \rtl~5_combout\);

-- Location: LCCOMB_X17_Y10_N12
\U3|ram_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~49_combout\ = (\rtl~5_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~5_combout\ & (\U3|ram_data~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~49_combout\,
	datab => \rtl~5_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~49_combout\);

-- Location: LCCOMB_X18_Y7_N2
\U3|ram_data~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~218_combout\ = (!\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(3) & \U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~218_combout\);

-- Location: LCCOMB_X18_Y7_N28
\rtl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\U3|ram_data~218_combout\ & (\U14|ramwt_latch~q\ & !\U14|ramrd_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~218_combout\,
	datac => \U14|ramwt_latch~q\,
	datad => \U14|ramrd_latch~q\,
	combout => \rtl~8_combout\);

-- Location: LCCOMB_X17_Y10_N2
\U3|ram_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~17_combout\ = (\rtl~8_combout\ & (\data_out[1]~20_combout\)) # (!\rtl~8_combout\ & ((\U3|ram_data~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~8_combout\,
	datac => \data_out[1]~20_combout\,
	datad => \U3|ram_data~17_combout\,
	combout => \U3|ram_data~17_combout\);

-- Location: LCCOMB_X18_Y6_N24
\U3|ram_data~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~208_combout\ = (!\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(1) & \U3|ram_address_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_address_latch\(3),
	combout => \U3|ram_data~208_combout\);

-- Location: LCCOMB_X17_Y6_N0
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\U14|ramwt_latch~q\ & (!\U14|ramrd_latch~q\ & \U3|ram_data~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramwt_latch~q\,
	datac => \U14|ramrd_latch~q\,
	datad => \U3|ram_data~208_combout\,
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X17_Y6_N22
\U3|ram_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~81_combout\ = (\rtl~0_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~81_combout\,
	datac => \rtl~0_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~81_combout\);

-- Location: LCCOMB_X17_Y10_N4
\U3|ram_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~138_combout\ = (\U3|ram_address_latch\(2) & (((\U3|ram_address_latch\(3))))) # (!\U3|ram_address_latch\(2) & ((\U3|ram_address_latch\(3) & ((\U3|ram_data~81_combout\))) # (!\U3|ram_address_latch\(3) & (\U3|ram_data~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~17_combout\,
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_data~81_combout\,
	combout => \U3|ram_data~138_combout\);

-- Location: LCCOMB_X16_Y7_N20
\U3|ram_data~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~221_combout\ = (\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(0) & (\U3|ram_address_latch\(2) & \U3|ram_address_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_address_latch\(3),
	combout => \U3|ram_data~221_combout\);

-- Location: LCCOMB_X18_Y7_N30
\rtl~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (!\U14|ramrd_latch~q\ & (\U3|ram_data~221_combout\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|ramrd_latch~q\,
	datac => \U3|ram_data~221_combout\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~13_combout\);

-- Location: LCCOMB_X18_Y9_N0
\U3|ram_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~113_combout\ = (\rtl~13_combout\ & (\data_out[1]~20_combout\)) # (!\rtl~13_combout\ & ((\U3|ram_data~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datab => \U3|ram_data~113_combout\,
	datad => \rtl~13_combout\,
	combout => \U3|ram_data~113_combout\);

-- Location: LCCOMB_X17_Y10_N14
\U3|ram_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~139_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~138_combout\ & ((\U3|ram_data~113_combout\))) # (!\U3|ram_data~138_combout\ & (\U3|ram_data~49_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~49_combout\,
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~138_combout\,
	datad => \U3|ram_data~113_combout\,
	combout => \U3|ram_data~139_combout\);

-- Location: LCCOMB_X18_Y6_N28
\U3|ram_data~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~210_combout\ = (\U3|ram_address_latch\(3) & (!\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(1) & !\U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~210_combout\);

-- Location: LCCOMB_X18_Y6_N12
\rtl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\U3|ram_data~210_combout\ & (!\U14|ramrd_latch~q\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~210_combout\,
	datac => \U14|ramrd_latch~q\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~2_combout\);

-- Location: LCCOMB_X17_Y10_N16
\U3|ram_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~65_combout\ = (\rtl~2_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~2_combout\,
	datac => \U3|ram_data~65_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~65_combout\);

-- Location: LCCOMB_X14_Y7_N14
\U3|ram_data~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~219_combout\ = (!\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(3) & !\U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~219_combout\);

-- Location: LCCOMB_X14_Y7_N0
\rtl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (!\U14|ramrd_latch~q\ & (\U3|ram_data~219_combout\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datac => \U3|ram_data~219_combout\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~10_combout\);

-- Location: LCCOMB_X17_Y10_N18
\U3|ram_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~1_combout\ = (\rtl~10_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~10_combout\ & (\U3|ram_data~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~1_combout\,
	datac => \rtl~10_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~1_combout\);

-- Location: LCCOMB_X17_Y10_N8
\U3|ram_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~142_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2)) # ((\U3|ram_data~65_combout\)))) # (!\U3|ram_address_latch\(3) & (!\U3|ram_address_latch\(2) & ((\U3|ram_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~65_combout\,
	datad => \U3|ram_data~1_combout\,
	combout => \U3|ram_data~142_combout\);

-- Location: LCCOMB_X17_Y7_N0
\U3|ram_data~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~222_combout\ = (\U3|ram_address_latch\(3) & (\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(1) & !\U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~222_combout\);

-- Location: LCCOMB_X17_Y9_N2
\rtl~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (\U14|ramwt_latch~q\ & (\U3|ram_data~222_combout\ & !\U14|ramrd_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramwt_latch~q\,
	datac => \U3|ram_data~222_combout\,
	datad => \U14|ramrd_latch~q\,
	combout => \rtl~14_combout\);

-- Location: LCCOMB_X17_Y9_N20
\U3|ram_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~97_combout\ = (\rtl~14_combout\ & (\data_out[1]~20_combout\)) # (!\rtl~14_combout\ & ((\U3|ram_data~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~14_combout\,
	datac => \data_out[1]~20_combout\,
	datad => \U3|ram_data~97_combout\,
	combout => \U3|ram_data~97_combout\);

-- Location: LCCOMB_X18_Y7_N0
\U3|ram_data~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~214_combout\ = (\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(3) & !\U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~214_combout\);

-- Location: LCCOMB_X18_Y10_N30
\rtl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\U14|ramwt_latch~q\ & (\U3|ram_data~214_combout\ & !\U14|ramrd_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramwt_latch~q\,
	datab => \U3|ram_data~214_combout\,
	datad => \U14|ramrd_latch~q\,
	combout => \rtl~6_combout\);

-- Location: LCCOMB_X17_Y9_N8
\U3|ram_data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~33_combout\ = (\rtl~6_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~6_combout\ & (\U3|ram_data~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~33_combout\,
	datac => \data_out[1]~20_combout\,
	datad => \rtl~6_combout\,
	combout => \U3|ram_data~33_combout\);

-- Location: LCCOMB_X17_Y10_N26
\U3|ram_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~143_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~142_combout\ & (\U3|ram_data~97_combout\)) # (!\U3|ram_data~142_combout\ & ((\U3|ram_data~33_combout\))))) # (!\U3|ram_address_latch\(2) & (\U3|ram_data~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~142_combout\,
	datac => \U3|ram_data~97_combout\,
	datad => \U3|ram_data~33_combout\,
	combout => \U3|ram_data~143_combout\);

-- Location: LCCOMB_X18_Y7_N8
\U3|ram_data~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~212_combout\ = (\U3|ram_address_latch\(2) & (\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(3) & !\U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~212_combout\);

-- Location: LCCOMB_X18_Y7_N6
\rtl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (!\U14|ramrd_latch~q\ & (\U3|ram_data~212_combout\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|ramrd_latch~q\,
	datac => \U3|ram_data~212_combout\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~4_combout\);

-- Location: LCCOMB_X17_Y10_N24
\U3|ram_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~41_combout\ = (\rtl~4_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~4_combout\ & (\U3|ram_data~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~41_combout\,
	datac => \rtl~4_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~41_combout\);

-- Location: LCCOMB_X17_Y8_N28
\U3|ram_data~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~217_combout\ = (!\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(3) & \U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~217_combout\);

-- Location: LCCOMB_X17_Y8_N18
\rtl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\U3|ram_data~217_combout\ & (!\U14|ramrd_latch~q\ & \U14|ramwt_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~217_combout\,
	datac => \U14|ramrd_latch~q\,
	datad => \U14|ramwt_latch~q\,
	combout => \rtl~9_combout\);

-- Location: LCCOMB_X17_Y10_N10
\U3|ram_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~9_combout\ = (\rtl~9_combout\ & (\data_out[1]~20_combout\)) # (!\rtl~9_combout\ & ((\U3|ram_data~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datac => \U3|ram_data~9_combout\,
	datad => \rtl~9_combout\,
	combout => \U3|ram_data~9_combout\);

-- Location: LCCOMB_X17_Y10_N28
\U3|ram_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~140_combout\ = (\U3|ram_address_latch\(3) & (((\U3|ram_address_latch\(2))))) # (!\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2) & (\U3|ram_data~41_combout\)) # (!\U3|ram_address_latch\(2) & ((\U3|ram_data~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~41_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_data~9_combout\,
	combout => \U3|ram_data~140_combout\);

-- Location: LCCOMB_X18_Y6_N4
\U3|ram_data~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~209_combout\ = (!\U3|ram_address_latch\(1) & (\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(2) & \U3|ram_address_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_address_latch\(3),
	combout => \U3|ram_data~209_combout\);

-- Location: LCCOMB_X17_Y6_N6
\rtl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\U14|ramwt_latch~q\ & (!\U14|ramrd_latch~q\ & \U3|ram_data~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramwt_latch~q\,
	datac => \U14|ramrd_latch~q\,
	datad => \U3|ram_data~209_combout\,
	combout => \rtl~1_combout\);

-- Location: LCCOMB_X17_Y6_N26
\U3|ram_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~73_combout\ = (\rtl~1_combout\ & ((\data_out[1]~20_combout\))) # (!\rtl~1_combout\ & (\U3|ram_data~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~1_combout\,
	datac => \U3|ram_data~73_combout\,
	datad => \data_out[1]~20_combout\,
	combout => \U3|ram_data~73_combout\);

-- Location: LCCOMB_X19_Y7_N30
\U3|ram_data~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~220_combout\ = (!\U3|ram_address_latch\(1) & (\U3|ram_address_latch\(3) & (\U3|ram_address_latch\(0) & \U3|ram_address_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(3),
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_address_latch\(2),
	combout => \U3|ram_data~220_combout\);

-- Location: LCCOMB_X19_Y7_N18
\rtl~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (\U14|ramwt_latch~q\ & (\U3|ram_data~220_combout\ & !\U14|ramrd_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|ramwt_latch~q\,
	datac => \U3|ram_data~220_combout\,
	datad => \U14|ramrd_latch~q\,
	combout => \rtl~12_combout\);

-- Location: LCCOMB_X18_Y8_N16
\U3|ram_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~105_combout\ = (\rtl~12_combout\ & (\data_out[1]~20_combout\)) # (!\rtl~12_combout\ & ((\U3|ram_data~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[1]~20_combout\,
	datac => \U3|ram_data~105_combout\,
	datad => \rtl~12_combout\,
	combout => \U3|ram_data~105_combout\);

-- Location: LCCOMB_X17_Y10_N6
\U3|ram_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~141_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~140_combout\ & ((\U3|ram_data~105_combout\))) # (!\U3|ram_data~140_combout\ & (\U3|ram_data~73_combout\)))) # (!\U3|ram_address_latch\(3) & (\U3|ram_data~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~140_combout\,
	datac => \U3|ram_data~73_combout\,
	datad => \U3|ram_data~105_combout\,
	combout => \U3|ram_data~141_combout\);

-- Location: LCCOMB_X17_Y10_N0
\U3|ram_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~144_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1)) # ((\U3|ram_data~141_combout\)))) # (!\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(1) & (\U3|ram_data~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~143_combout\,
	datad => \U3|ram_data~141_combout\,
	combout => \U3|ram_data~144_combout\);

-- Location: LCCOMB_X17_Y10_N30
\U3|ram_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~147_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~144_combout\ & (\U3|ram_data~146_combout\)) # (!\U3|ram_data~144_combout\ & ((\U3|ram_data~139_combout\))))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_data~146_combout\,
	datac => \U3|ram_data~139_combout\,
	datad => \U3|ram_data~144_combout\,
	combout => \U3|ram_data~147_combout\);

-- Location: LCCOMB_X16_Y11_N14
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

-- Location: LCCOMB_X16_Y11_N16
\U7|addr_latch[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[3]~14_combout\ = (\U7|addr_latch\(3) & (!\U7|addr_latch[2]~13\)) # (!\U7|addr_latch\(3) & ((\U7|addr_latch[2]~13\) # (GND)))
-- \U7|addr_latch[3]~15\ = CARRY((!\U7|addr_latch[2]~13\) # (!\U7|addr_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|addr_latch\(3),
	datad => VCC,
	cin => \U7|addr_latch[2]~13\,
	combout => \U7|addr_latch[3]~14_combout\,
	cout => \U7|addr_latch[3]~15\);

-- Location: LCCOMB_X14_Y9_N14
\U5|instruction[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[3]~feeder_combout\ = \data_out[3]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[3]~34_combout\,
	combout => \U5|instruction[3]~feeder_combout\);

-- Location: FF_X14_Y9_N15
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

-- Location: LCCOMB_X17_Y12_N30
\U14|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector0~0_combout\ = ((!\U14|current_state.t3~q\ & \U14|rstpc_latch~q\)) # (!\U14|current_state.t_rst_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t3~q\,
	datab => \U14|rstpc_latch~q\,
	datad => \U14|current_state.t_rst_1~q\,
	combout => \U14|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y12_N10
\U14|rstpc_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|rstpc_latch~feeder_combout\ = \U14|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector0~0_combout\,
	combout => \U14|rstpc_latch~feeder_combout\);

-- Location: FF_X16_Y12_N11
\U14|rstpc_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|rstpc_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|rstpc_latch~q\);

-- Location: LCCOMB_X14_Y10_N0
\U14|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~1_combout\ = (\U14|current_state.t10~q\) # ((!\U14|current_state.t12~q\ & \U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|current_state.t10~q\,
	datad => \U14|current_state.t_rst_1~q\,
	combout => \U14|Selector2~1_combout\);

-- Location: LCCOMB_X14_Y10_N16
\U14|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~2_combout\ = (\U14|Selector2~1_combout\) # ((\U14|current_state.t12~q\ & ((\U6|Mux6~0_combout\) # (!\U14|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U6|Mux6~0_combout\,
	datac => \U14|Selector15~0_combout\,
	datad => \U14|Selector2~1_combout\,
	combout => \U14|Selector2~2_combout\);

-- Location: LCCOMB_X14_Y10_N10
\U14|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~3_combout\ = (\U14|ldpc_latch~q\ & ((\U14|Selector2~2_combout\) # ((!\U6|Mux6~0_combout\ & \U14|Selector2~0_combout\)))) # (!\U14|ldpc_latch~q\ & (!\U6|Mux6~0_combout\ & (\U14|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ldpc_latch~q\,
	datab => \U6|Mux6~0_combout\,
	datac => \U14|Selector2~0_combout\,
	datad => \U14|Selector2~2_combout\,
	combout => \U14|Selector2~3_combout\);

-- Location: FF_X14_Y10_N1
\U14|ldpc_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|Selector2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ldpc_latch~q\);

-- Location: FF_X16_Y11_N17
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

-- Location: LCCOMB_X16_Y11_N18
\U7|addr_latch[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[4]~16_combout\ = (\U7|addr_latch\(4) & (\U7|addr_latch[3]~15\ $ (GND))) # (!\U7|addr_latch\(4) & (!\U7|addr_latch[3]~15\ & VCC))
-- \U7|addr_latch[4]~17\ = CARRY((\U7|addr_latch\(4) & !\U7|addr_latch[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|addr_latch\(4),
	datad => VCC,
	cin => \U7|addr_latch[3]~15\,
	combout => \U7|addr_latch[4]~16_combout\,
	cout => \U7|addr_latch[4]~17\);

-- Location: FF_X17_Y11_N1
\U5|instruction[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[4]~41_combout\,
	sload => VCC,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(4));

-- Location: FF_X16_Y11_N19
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

-- Location: LCCOMB_X16_Y11_N20
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

-- Location: LCCOMB_X16_Y11_N22
\U7|addr_latch[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|addr_latch[6]~20_combout\ = (\U7|addr_latch\(6) & (\U7|addr_latch[5]~19\ $ (GND))) # (!\U7|addr_latch\(6) & (!\U7|addr_latch[5]~19\ & VCC))
-- \U7|addr_latch[6]~21\ = CARRY((\U7|addr_latch\(6) & !\U7|addr_latch[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(6),
	datad => VCC,
	cin => \U7|addr_latch[5]~19\,
	combout => \U7|addr_latch[6]~20_combout\,
	cout => \U7|addr_latch[6]~21\);

-- Location: LCCOMB_X17_Y11_N8
\U5|instruction[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[6]~feeder_combout\ = \data_out[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[6]~55_combout\,
	combout => \U5|instruction[6]~feeder_combout\);

-- Location: FF_X17_Y11_N9
\U5|instruction[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	d => \U5|instruction[6]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(6));

-- Location: FF_X16_Y11_N23
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

-- Location: LCCOMB_X16_Y11_N24
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

-- Location: LCCOMB_X17_Y11_N14
\U5|instruction[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[7]~feeder_combout\ = \data_out[7]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~62_combout\,
	combout => \U5|instruction[7]~feeder_combout\);

-- Location: FF_X17_Y11_N15
\U5|instruction[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	d => \U5|instruction[7]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(7));

-- Location: FF_X16_Y11_N25
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

-- Location: LCCOMB_X16_Y11_N30
\data_out[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~57_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(7)) # ((\U7|addr_latch\(7) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (\U7|addr_latch\(7) & ((\U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U7|addr_latch\(7),
	datac => \U5|instruction\(7),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[7]~57_combout\);

-- Location: M9K_X15_Y8_N0
\U4|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040094000000081000000088000240008",
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

-- Location: LCCOMB_X14_Y9_N26
\data_out[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~56_combout\ = (\U4|inst|altsyncram_component|auto_generated|q_a\(7) & \U14|enrom_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \U14|enrom_latch~q\,
	combout => \data_out[7]~56_combout\);

-- Location: LCCOMB_X14_Y8_N30
\U3|ram_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~127_combout\ = (\rtl~15_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~127_combout\,
	datac => \data_out[7]~62_combout\,
	datad => \rtl~15_combout\,
	combout => \U3|ram_data~127_combout\);

-- Location: LCCOMB_X14_Y8_N12
\U3|ram_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~63_combout\ = (\rtl~7_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~7_combout\ & (\U3|ram_data~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~63_combout\,
	datac => \data_out[7]~62_combout\,
	datad => \rtl~7_combout\,
	combout => \U3|ram_data~63_combout\);

-- Location: LCCOMB_X14_Y8_N10
\U3|ram_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~95_combout\ = (\rtl~3_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~3_combout\ & ((\U3|ram_data~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datac => \rtl~3_combout\,
	datad => \U3|ram_data~95_combout\,
	combout => \U3|ram_data~95_combout\);

-- Location: LCCOMB_X14_Y8_N24
\U3|ram_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~31_combout\ = (\rtl~11_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~11_combout\ & (\U3|ram_data~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~31_combout\,
	datac => \data_out[7]~62_combout\,
	datad => \rtl~11_combout\,
	combout => \U3|ram_data~31_combout\);

-- Location: LCCOMB_X14_Y8_N6
\U3|ram_data~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~205_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~95_combout\) # ((\U3|ram_address_latch\(2))))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~31_combout\ & !\U3|ram_address_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~95_combout\,
	datab => \U3|ram_data~31_combout\,
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_address_latch\(2),
	combout => \U3|ram_data~205_combout\);

-- Location: LCCOMB_X14_Y8_N0
\U3|ram_data~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~206_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~205_combout\ & (\U3|ram_data~127_combout\)) # (!\U3|ram_data~205_combout\ & ((\U3|ram_data~63_combout\))))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~127_combout\,
	datac => \U3|ram_data~63_combout\,
	datad => \U3|ram_data~205_combout\,
	combout => \U3|ram_data~206_combout\);

-- Location: LCCOMB_X14_Y7_N30
\U3|ram_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~47_combout\ = (\rtl~4_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~4_combout\ & ((\U3|ram_data~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datac => \U3|ram_data~47_combout\,
	datad => \rtl~4_combout\,
	combout => \U3|ram_data~47_combout\);

-- Location: LCCOMB_X14_Y7_N16
\U3|ram_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~111_combout\ = (\rtl~12_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12_combout\,
	datab => \U3|ram_data~111_combout\,
	datac => \data_out[7]~62_combout\,
	combout => \U3|ram_data~111_combout\);

-- Location: LCCOMB_X14_Y7_N4
\U3|ram_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~79_combout\ = (\rtl~1_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~1_combout\ & ((\U3|ram_data~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datab => \U3|ram_data~79_combout\,
	datac => \rtl~1_combout\,
	combout => \U3|ram_data~79_combout\);

-- Location: LCCOMB_X14_Y7_N18
\U3|ram_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~15_combout\ = (\rtl~9_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~9_combout\ & ((\U3|ram_data~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datab => \U3|ram_data~15_combout\,
	datac => \rtl~9_combout\,
	combout => \U3|ram_data~15_combout\);

-- Location: LCCOMB_X14_Y7_N6
\U3|ram_data~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~198_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2)) # ((\U3|ram_data~79_combout\)))) # (!\U3|ram_address_latch\(3) & (!\U3|ram_address_latch\(2) & ((\U3|ram_data~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~79_combout\,
	datad => \U3|ram_data~15_combout\,
	combout => \U3|ram_data~198_combout\);

-- Location: LCCOMB_X14_Y7_N28
\U3|ram_data~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~199_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~198_combout\ & ((\U3|ram_data~111_combout\))) # (!\U3|ram_data~198_combout\ & (\U3|ram_data~47_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~47_combout\,
	datab => \U3|ram_data~111_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_data~198_combout\,
	combout => \U3|ram_data~199_combout\);

-- Location: LCCOMB_X14_Y9_N0
\U3|ram_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~71_combout\ = (\rtl~2_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~2_combout\ & ((\U3|ram_data~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datab => \U3|ram_data~71_combout\,
	datad => \rtl~2_combout\,
	combout => \U3|ram_data~71_combout\);

-- Location: LCCOMB_X14_Y9_N12
\U3|ram_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~103_combout\ = (\rtl~14_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~14_combout\ & ((\U3|ram_data~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datac => \rtl~14_combout\,
	datad => \U3|ram_data~103_combout\,
	combout => \U3|ram_data~103_combout\);

-- Location: LCCOMB_X14_Y7_N22
\U3|ram_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~7_combout\ = (\rtl~10_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~10_combout\ & (\U3|ram_data~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~7_combout\,
	datab => \rtl~10_combout\,
	datac => \data_out[7]~62_combout\,
	combout => \U3|ram_data~7_combout\);

-- Location: LCCOMB_X14_Y9_N6
\U3|ram_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~39_combout\ = (\rtl~6_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~6_combout\ & ((\U3|ram_data~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datac => \U3|ram_data~39_combout\,
	datad => \rtl~6_combout\,
	combout => \U3|ram_data~39_combout\);

-- Location: LCCOMB_X16_Y7_N0
\U3|ram_data~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~202_combout\ = (\U3|ram_address_latch\(2) & (((\U3|ram_data~39_combout\) # (\U3|ram_address_latch\(3))))) # (!\U3|ram_address_latch\(2) & (\U3|ram_data~7_combout\ & ((!\U3|ram_address_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~7_combout\,
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~39_combout\,
	datad => \U3|ram_address_latch\(3),
	combout => \U3|ram_data~202_combout\);

-- Location: LCCOMB_X16_Y7_N14
\U3|ram_data~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~203_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~202_combout\ & ((\U3|ram_data~103_combout\))) # (!\U3|ram_data~202_combout\ & (\U3|ram_data~71_combout\)))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~71_combout\,
	datac => \U3|ram_data~103_combout\,
	datad => \U3|ram_data~202_combout\,
	combout => \U3|ram_data~203_combout\);

-- Location: LCCOMB_X14_Y9_N20
\U3|ram_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~87_combout\ = (\rtl~0_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~0_combout\ & ((\U3|ram_data~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datac => \rtl~0_combout\,
	datad => \U3|ram_data~87_combout\,
	combout => \U3|ram_data~87_combout\);

-- Location: LCCOMB_X14_Y9_N4
\U3|ram_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~119_combout\ = (\rtl~13_combout\ & (\data_out[7]~62_combout\)) # (!\rtl~13_combout\ & ((\U3|ram_data~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datab => \U3|ram_data~119_combout\,
	datad => \rtl~13_combout\,
	combout => \U3|ram_data~119_combout\);

-- Location: LCCOMB_X18_Y7_N22
\U3|ram_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~55_combout\ = (\rtl~5_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~5_combout\ & (\U3|ram_data~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~5_combout\,
	datac => \U3|ram_data~55_combout\,
	datad => \data_out[7]~62_combout\,
	combout => \U3|ram_data~55_combout\);

-- Location: LCCOMB_X18_Y7_N14
\U3|ram_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~23_combout\ = (\rtl~8_combout\ & ((\data_out[7]~62_combout\))) # (!\rtl~8_combout\ & (\U3|ram_data~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~8_combout\,
	datac => \U3|ram_data~23_combout\,
	datad => \data_out[7]~62_combout\,
	combout => \U3|ram_data~23_combout\);

-- Location: LCCOMB_X17_Y7_N18
\U3|ram_data~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~200_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~55_combout\) # ((\U3|ram_address_latch\(3))))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~23_combout\ & !\U3|ram_address_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~55_combout\,
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~23_combout\,
	datad => \U3|ram_address_latch\(3),
	combout => \U3|ram_data~200_combout\);

-- Location: LCCOMB_X16_Y7_N24
\U3|ram_data~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~201_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~200_combout\ & ((\U3|ram_data~119_combout\))) # (!\U3|ram_data~200_combout\ & (\U3|ram_data~87_combout\)))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~87_combout\,
	datac => \U3|ram_data~119_combout\,
	datad => \U3|ram_data~200_combout\,
	combout => \U3|ram_data~201_combout\);

-- Location: LCCOMB_X16_Y7_N4
\U3|ram_data~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~204_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_address_latch\(0)) # ((\U3|ram_data~201_combout\)))) # (!\U3|ram_address_latch\(1) & (!\U3|ram_address_latch\(0) & (\U3|ram_data~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~203_combout\,
	datad => \U3|ram_data~201_combout\,
	combout => \U3|ram_data~204_combout\);

-- Location: LCCOMB_X14_Y9_N2
\U3|ram_data~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~207_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~204_combout\ & (\U3|ram_data~206_combout\)) # (!\U3|ram_data~204_combout\ & ((\U3|ram_data~199_combout\))))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~206_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~199_combout\,
	datad => \U3|ram_data~204_combout\,
	combout => \U3|ram_data~207_combout\);

-- Location: LCCOMB_X14_Y9_N18
\data_out[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~58_combout\ = (\data_out[7]~57_combout\) # ((\data_out[7]~56_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \data_out[7]~57_combout\,
	datac => \data_out[7]~56_combout\,
	datad => \U3|ram_data~207_combout\,
	combout => \data_out[7]~58_combout\);

-- Location: LCCOMB_X14_Y11_N2
\U14|regrd2_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|regrd2_latch~0_combout\ = (\U5|instruction\(12) & (((!\U5|instruction\(11) & \U5|instruction\(14))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13)) # ((\U5|instruction\(11) & \U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(14),
	combout => \U14|regrd2_latch~0_combout\);

-- Location: LCCOMB_X13_Y10_N20
\U14|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~0_combout\ = (!\U5|instruction\(15) & (\U14|current_state.t12~q\ & \U14|regrd2_latch~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U14|current_state.t12~q\,
	datad => \U14|regrd2_latch~0_combout\,
	combout => \U14|Selector10~0_combout\);

-- Location: LCCOMB_X13_Y10_N6
\U14|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~1_combout\ = (\U5|instruction\(10) & ((\U14|Selector10~0_combout\) # ((\U6|Mux7~0_combout\ & \U14|current_state.t10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux7~0_combout\,
	datab => \U14|current_state.t10~q\,
	datac => \U5|instruction\(10),
	datad => \U14|Selector10~0_combout\,
	combout => \U14|Selector10~1_combout\);

-- Location: LCCOMB_X13_Y10_N24
\U14|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~0_combout\ = (!\U14|current_state.t10~q\ & (((\U14|current_state.t14~q\) # (\U14|current_state.t12~q\)) # (!\U14|current_state.t_rst_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t_rst_1~q\,
	datab => \U14|current_state.t14~q\,
	datac => \U14|current_state.t10~q\,
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector9~0_combout\);

-- Location: LCCOMB_X13_Y10_N10
\U14|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~2_combout\ = (\U14|current_state.t12~q\ & ((!\U6|Mux7~0_combout\) # (!\U5|instruction\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(10),
	datac => \U14|current_state.t12~q\,
	datad => \U6|Mux7~0_combout\,
	combout => \U14|Selector10~2_combout\);

-- Location: LCCOMB_X14_Y11_N28
\U6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux5~0_combout\ = (\U5|instruction\(12) & (((!\U5|instruction\(11) & \U5|instruction\(14))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13)) # ((\U5|instruction\(11) & \U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(12),
	combout => \U6|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\U6|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux5~1_combout\ = (!\U5|instruction\(15) & \U6|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datad => \U6|Mux5~0_combout\,
	combout => \U6|Mux5~1_combout\);

-- Location: LCCOMB_X13_Y10_N18
\U14|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~3_combout\ = (\U14|Selector10~2_combout\) # ((\U14|current_state.t14~q\ & ((!\U6|Mux5~1_combout\) # (!\U5|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(10),
	datab => \U14|Selector10~2_combout\,
	datac => \U14|current_state.t14~q\,
	datad => \U6|Mux5~1_combout\,
	combout => \U14|Selector10~3_combout\);

-- Location: LCCOMB_X13_Y10_N4
\U14|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector10~4_combout\ = (\U14|Selector10~1_combout\) # ((\U14|regrd2_latch~q\ & ((\U14|Selector10~3_combout\) # (!\U14|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector10~1_combout\,
	datab => \U14|Selector9~0_combout\,
	datac => \U14|regrd2_latch~q\,
	datad => \U14|Selector10~3_combout\,
	combout => \U14|Selector10~4_combout\);

-- Location: FF_X13_Y10_N5
\U14|regrd2_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|regrd2_latch~q\);

-- Location: FF_X19_Y11_N27
\U5|instruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[1]~20_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(9));

-- Location: LCCOMB_X17_Y9_N4
\U5|ir_grcode[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode[5]~1_combout\ = (\U5|instruction\(10) & (\U5|instruction\(3))) # (!\U5|instruction\(10) & ((\U5|instruction\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(3),
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(9),
	combout => \U5|ir_grcode[5]~1_combout\);

-- Location: LCCOMB_X19_Y11_N30
\U5|ir_grcode[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode[1]~0_combout\ = (\U5|instruction\(10) & ((\U5|instruction\(1)))) # (!\U5|instruction\(10) & (\U5|instruction\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(9),
	datad => \U5|instruction\(1),
	combout => \U5|ir_grcode[1]~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\data_out[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~10_combout\ = (\U14|regrd1_latch~q\ & (((!\U5|ir_grcode[1]~0_combout\)))) # (!\U14|regrd1_latch~q\ & (\U14|regrd2_latch~q\ & (!\U5|ir_grcode[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datab => \U14|regrd2_latch~q\,
	datac => \U5|ir_grcode[5]~1_combout\,
	datad => \U5|ir_grcode[1]~0_combout\,
	combout => \data_out[6]~10_combout\);

-- Location: LCCOMB_X14_Y12_N14
\U14|next_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state~24_combout\ = (\U14|current_state.t14~q\ & (!\U5|instruction\(15) & \U6|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U5|instruction\(15),
	datad => \U6|Mux5~0_combout\,
	combout => \U14|next_state~24_combout\);

-- Location: FF_X14_Y12_N31
\U14|next_state.t15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t15~q\);

-- Location: FF_X14_Y12_N23
\U14|current_state.t15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t15~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t15~q\);

-- Location: LCCOMB_X14_Y12_N26
\U14|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~0_combout\ = (\U14|current_state.t15~q\) # ((\U5|instruction\(11) & (\U14|current_state.t11~q\ & \U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t15~q\,
	datab => \U5|instruction\(11),
	datac => \U14|current_state.t11~q\,
	datad => \U6|Mux3~0_combout\,
	combout => \U14|Selector11~0_combout\);

-- Location: LCCOMB_X14_Y12_N22
\U6|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux4~1_combout\ = (!\U5|instruction\(15) & \U6|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datad => \U6|Mux4~0_combout\,
	combout => \U6|Mux4~1_combout\);

-- Location: LCCOMB_X14_Y12_N10
\U14|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~1_combout\ = (\U14|Selector11~0_combout\) # ((\U14|current_state.t13~q\ & ((\U6|Mux7~1_combout\) # (\U6|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t13~q\,
	datab => \U6|Mux7~1_combout\,
	datac => \U14|Selector11~0_combout\,
	datad => \U6|Mux4~1_combout\,
	combout => \U14|Selector11~1_combout\);

-- Location: LCCOMB_X14_Y12_N16
\U14|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~2_combout\ = (\U14|current_state.t14~q\ & ((\U6|Mux5~1_combout\) # ((!\U6|Mux7~1_combout\ & !\U6|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U6|Mux7~1_combout\,
	datac => \U6|Mux5~1_combout\,
	datad => \U6|Mux4~1_combout\,
	combout => \U14|Selector11~2_combout\);

-- Location: LCCOMB_X14_Y12_N30
\U14|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~2_combout\ = (!\U14|current_state.t13~q\ & !\U14|current_state.t11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t13~q\,
	datad => \U14|current_state.t11~q\,
	combout => \U14|Selector5~2_combout\);

-- Location: LCCOMB_X18_Y11_N20
\U14|next_state.t16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t16~feeder_combout\ = \U14|current_state.t15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|current_state.t15~q\,
	combout => \U14|next_state.t16~feeder_combout\);

-- Location: FF_X18_Y11_N21
\U14|next_state.t16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state.t16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t16~q\);

-- Location: LCCOMB_X18_Y11_N28
\U14|current_state.t16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t16~feeder_combout\ = \U14|next_state.t16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t16~q\,
	combout => \U14|current_state.t16~feeder_combout\);

-- Location: FF_X18_Y11_N29
\U14|current_state.t16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t16~q\);

-- Location: LCCOMB_X14_Y12_N8
\U14|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~2_combout\ = (\U14|current_state.t12~q\ & ((!\U6|Mux3~0_combout\) # (!\U5|instruction\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U5|instruction\(11),
	datad => \U6|Mux3~0_combout\,
	combout => \U14|Selector8~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\U14|Selector9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~8_combout\ = (\U14|current_state.t_rst_1~q\ & (!\U14|current_state.t14~q\ & !\U14|current_state.t12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U14|current_state.t14~q\,
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector9~8_combout\);

-- Location: LCCOMB_X14_Y12_N12
\U14|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~3_combout\ = ((\U14|Selector8~2_combout\) # ((!\U14|current_state.t16~q\ & \U14|Selector9~8_combout\))) # (!\U14|Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector5~2_combout\,
	datab => \U14|current_state.t16~q\,
	datac => \U14|Selector8~2_combout\,
	datad => \U14|Selector9~8_combout\,
	combout => \U14|Selector11~3_combout\);

-- Location: LCCOMB_X14_Y12_N28
\U14|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector11~4_combout\ = (\U14|Selector11~1_combout\) # ((\U14|regwt_latch~q\ & ((\U14|Selector11~2_combout\) # (\U14|Selector11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector11~1_combout\,
	datab => \U14|Selector11~2_combout\,
	datac => \U14|regwt_latch~q\,
	datad => \U14|Selector11~3_combout\,
	combout => \U14|Selector11~4_combout\);

-- Location: FF_X14_Y12_N29
\U14|regwt_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~q\,
	d => \U14|Selector11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|regwt_latch~q\);

-- Location: LCCOMB_X16_Y12_N14
\U5|ir_grcode[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode\(3) = (\U5|instruction\(10) & ((\U5|instruction\(3)))) # (!\U5|instruction\(10) & (\U5|instruction\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(9),
	datac => \U5|instruction\(10),
	datad => \U5|instruction\(3),
	combout => \U5|ir_grcode\(3));

-- Location: FF_X19_Y9_N21
\U5|instruction[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~q\,
	asdata => \data_out[0]~13_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(8));

-- Location: LCCOMB_X16_Y7_N28
\U5|instruction[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[2]~feeder_combout\ = \data_out[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[2]~27_combout\,
	combout => \U5|instruction[2]~feeder_combout\);

-- Location: FF_X16_Y7_N29
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

-- Location: LCCOMB_X16_Y12_N18
\U5|ir_grcode[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ir_grcode\(2) = (\U5|instruction\(10) & ((\U5|instruction\(2)))) # (!\U5|instruction\(10) & (\U5|instruction\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(8),
	datad => \U5|instruction\(2),
	combout => \U5|ir_grcode\(2));

-- Location: LCCOMB_X16_Y12_N0
\U11|grc_grwt[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(1) = LCELL((\U14|regwt_latch~q\ & (!\U5|ir_grcode\(3) & \U5|ir_grcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regwt_latch~q\,
	datac => \U5|ir_grcode\(3),
	datad => \U5|ir_grcode\(2),
	combout => \U11|grc_grwt\(1));

-- Location: CLKCTRL_G5
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

-- Location: FF_X14_Y9_N29
\U12|grb_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[7]~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(7));

-- Location: LCCOMB_X16_Y12_N24
\U11|grc_grwt[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(0) = LCELL((\U14|regwt_latch~q\ & (!\U5|ir_grcode\(3) & !\U5|ir_grcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regwt_latch~q\,
	datac => \U5|ir_grcode\(3),
	datad => \U5|ir_grcode\(2),
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

-- Location: LCCOMB_X14_Y8_N22
\U12|gra_latch[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[7]~feeder_combout\ = \data_out[7]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	combout => \U12|gra_latch[7]~feeder_combout\);

-- Location: FF_X14_Y8_N23
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

-- Location: LCCOMB_X19_Y9_N24
\data_out[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~8_combout\ = (\U14|regrd1_latch~q\ & ((\U5|instruction\(0)))) # (!\U14|regrd1_latch~q\ & (\U5|instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datac => \U5|instruction\(2),
	datad => \U5|instruction\(0),
	combout => \data_out[6]~8_combout\);

-- Location: LCCOMB_X19_Y9_N20
\data_out[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~9_combout\ = (\U5|instruction\(10) & ((\data_out[6]~8_combout\))) # (!\U5|instruction\(10) & (\U5|instruction\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(10),
	datac => \U5|instruction\(8),
	datad => \data_out[6]~8_combout\,
	combout => \data_out[6]~9_combout\);

-- Location: LCCOMB_X17_Y9_N0
\data_out[6]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~63_combout\ = (!\data_out[6]~9_combout\ & ((\U14|regrd2_latch~q\) # (\U14|regrd1_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|regrd2_latch~q\,
	datac => \U14|regrd1_latch~q\,
	datad => \data_out[6]~9_combout\,
	combout => \data_out[6]~63_combout\);

-- Location: LCCOMB_X16_Y12_N12
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

-- Location: CLKCTRL_G8
\U11|grc_grwt[3]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U11|grc_grwt[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U11|grc_grwt[3]~clkctrl_outclk\);

-- Location: FF_X17_Y9_N17
\U12|grd_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[7]~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(7));

-- Location: LCCOMB_X16_Y12_N6
\U11|grc_grwt[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U11|grc_grwt\(2) = LCELL((\U14|regwt_latch~q\ & (\U5|ir_grcode\(3) & !\U5|ir_grcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regwt_latch~q\,
	datac => \U5|ir_grcode\(3),
	datad => \U5|ir_grcode\(2),
	combout => \U11|grc_grwt\(2));

-- Location: CLKCTRL_G7
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

-- Location: FF_X17_Y9_N11
\U12|grc_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[7]~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(7));

-- Location: LCCOMB_X17_Y9_N16
\data_out[7]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~60_combout\ = (\data_out[6]~10_combout\ & (\data_out[6]~63_combout\)) # (!\data_out[6]~10_combout\ & ((\data_out[6]~63_combout\ & ((\U12|grc_latch\(7)))) # (!\data_out[6]~63_combout\ & (\U12|grd_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \data_out[6]~63_combout\,
	datac => \U12|grd_latch\(7),
	datad => \U12|grc_latch\(7),
	combout => \data_out[7]~60_combout\);

-- Location: LCCOMB_X14_Y9_N22
\data_out[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~61_combout\ = (\data_out[6]~10_combout\ & ((\data_out[7]~60_combout\ & ((\U12|gra_latch\(7)))) # (!\data_out[7]~60_combout\ & (\U12|grb_latch\(7))))) # (!\data_out[6]~10_combout\ & (((\data_out[7]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \U12|grb_latch\(7),
	datac => \U12|gra_latch\(7),
	datad => \data_out[7]~60_combout\,
	combout => \data_out[7]~61_combout\);

-- Location: LCCOMB_X14_Y10_N24
\U14|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~0_combout\ = (\U14|current_state.t12~q\) # ((!\U14|current_state.t14~q\ & (\U14|current_state.t_rst_1~q\ & !\U14|current_state.t16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t12~q\,
	datab => \U14|current_state.t14~q\,
	datac => \U14|current_state.t_rst_1~q\,
	datad => \U14|current_state.t16~q\,
	combout => \U14|Selector8~0_combout\);

-- Location: LCCOMB_X14_Y12_N20
\U14|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~1_combout\ = (\U14|dbfbout_latch~q\ & ((\U14|Selector8~0_combout\) # ((\U14|current_state.t14~q\ & !\U6|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|dbfbout_latch~q\,
	datac => \U6|Mux4~1_combout\,
	datad => \U14|Selector8~0_combout\,
	combout => \U14|Selector8~1_combout\);

-- Location: LCCOMB_X14_Y12_N24
\U14|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector8~3_combout\ = (\U14|next_state~24_combout\) # ((\U14|Selector8~1_combout\) # ((\U6|Mux4~1_combout\ & \U14|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux4~1_combout\,
	datab => \U14|Selector8~2_combout\,
	datac => \U14|next_state~24_combout\,
	datad => \U14|Selector8~1_combout\,
	combout => \U14|Selector8~3_combout\);

-- Location: FF_X14_Y12_N25
\U14|dbfbout_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|dbfbout_latch~q\);

-- Location: LCCOMB_X18_Y11_N18
\U14|dbfbin_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|dbfbin_latch~0_combout\ = ((\U6|Mux4~1_combout\) # ((\U5|instruction\(11) & \U6|Mux3~0_combout\))) # (!\U6|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U6|Mux3~0_combout\,
	datac => \U6|Mux5~1_combout\,
	datad => \U6|Mux4~1_combout\,
	combout => \U14|dbfbin_latch~0_combout\);

-- Location: LCCOMB_X18_Y11_N12
\U14|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector7~0_combout\ = (\U14|current_state.t11~q\) # ((\U14|current_state.t12~q\ & ((\U14|dbfbin_latch~0_combout\))) # (!\U14|current_state.t12~q\ & (\U14|current_state.t_rst_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U14|current_state.t12~q\,
	datad => \U14|dbfbin_latch~0_combout\,
	combout => \U14|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y11_N24
\U14|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector7~1_combout\ = (\U14|current_state.t11~q\ & (((\U14|dbfbin_latch~q\ & \U14|Selector7~0_combout\)) # (!\U14|dbfbin_latch~0_combout\))) # (!\U14|current_state.t11~q\ & (((\U14|dbfbin_latch~q\ & \U14|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|dbfbin_latch~0_combout\,
	datac => \U14|dbfbin_latch~q\,
	datad => \U14|Selector7~0_combout\,
	combout => \U14|Selector7~1_combout\);

-- Location: FF_X18_Y11_N25
\U14|dbfbin_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|dbfbin_latch~q\);

-- Location: LCCOMB_X14_Y12_N6
\U14|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~1_combout\ = (\U14|current_state.t12~q\ & (((\U5|instruction\(11) & \U6|Mux3~0_combout\)) # (!\U6|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux4~1_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U5|instruction\(11),
	datad => \U6|Mux3~0_combout\,
	combout => \U14|Selector5~1_combout\);

-- Location: LCCOMB_X14_Y12_N18
\U14|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~0_combout\ = (\U6|Mux4~1_combout\ & (\U14|current_state.t11~q\ & ((!\U6|Mux3~0_combout\) # (!\U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux4~1_combout\,
	datab => \U5|instruction\(11),
	datac => \U14|current_state.t11~q\,
	datad => \U6|Mux3~0_combout\,
	combout => \U14|Selector5~0_combout\);

-- Location: LCCOMB_X13_Y12_N20
\U14|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~3_combout\ = ((\U14|Selector9~8_combout\) # ((\U14|current_state.t14~q\ & !\U6|Mux5~1_combout\))) # (!\U14|Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector5~2_combout\,
	datab => \U14|current_state.t14~q\,
	datac => \U14|Selector9~8_combout\,
	datad => \U6|Mux5~1_combout\,
	combout => \U14|Selector5~3_combout\);

-- Location: LCCOMB_X14_Y12_N2
\U14|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~4_combout\ = (\U14|Selector5~0_combout\) # ((\U14|enalu_latch~q\ & ((\U14|Selector5~1_combout\) # (\U14|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector5~1_combout\,
	datab => \U14|Selector5~0_combout\,
	datac => \U14|enalu_latch~q\,
	datad => \U14|Selector5~3_combout\,
	combout => \U14|Selector5~4_combout\);

-- Location: LCCOMB_X14_Y12_N4
\U14|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector5~5_combout\ = (\U14|Selector5~4_combout\) # ((\U14|current_state.t13~q\ & (\U6|Mux5~1_combout\ & !\U6|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t13~q\,
	datab => \U14|Selector5~4_combout\,
	datac => \U6|Mux5~1_combout\,
	datad => \U6|Mux4~0_combout\,
	combout => \U14|Selector5~5_combout\);

-- Location: FF_X14_Y12_N5
\U14|enalu_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|enalu_latch~q\);

-- Location: LCCOMB_X23_Y11_N10
\U8|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~14_combout\ = (\U5|instruction\(11) & (\data_out[6]~55_combout\)) # (!\U5|instruction\(11) & ((\U10|data_latch\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~55_combout\,
	datac => \U5|instruction\(11),
	datad => \U10|data_latch\(7),
	combout => \U8|Mux0~14_combout\);

-- Location: LCCOMB_X23_Y10_N2
\U8|Add2|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~7_combout\ = \U10|data_latch\(7) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(7),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~7_combout\);

-- Location: LCCOMB_X33_Y12_N2
\U10|data_latch[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[7]~1_combout\ = (\U14|enalu_latch~q\) # (\U14|dbfbin_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|enalu_latch~q\,
	datad => \U14|dbfbin_latch~q\,
	combout => \U10|data_latch[7]~1_combout\);

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X22_Y10_N30
\U8|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~10_combout\ = (\U5|instruction\(11) & ((\data_out[4]~41_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(5),
	datab => \data_out[4]~41_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|Mux0~10_combout\);

-- Location: LCCOMB_X21_Y10_N28
\U8|result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~12_combout\ = (\U5|instruction\(11) & ((\data_out[3]~34_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(4),
	datad => \data_out[3]~34_combout\,
	combout => \U8|result~12_combout\);

-- Location: LCCOMB_X22_Y10_N0
\U8|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~0_combout\ = \data_out[0]~13_combout\ $ (VCC)
-- \U8|Add1~1\ = CARRY(\data_out[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[0]~13_combout\,
	datad => VCC,
	combout => \U8|Add1~0_combout\,
	cout => \U8|Add1~1\);

-- Location: LCCOMB_X22_Y10_N2
\U8|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~2_combout\ = (\U5|instruction\(11) & ((\data_out[1]~20_combout\ & (\U8|Add1~1\ & VCC)) # (!\data_out[1]~20_combout\ & (!\U8|Add1~1\)))) # (!\U5|instruction\(11) & ((\data_out[1]~20_combout\ & (!\U8|Add1~1\)) # (!\data_out[1]~20_combout\ & 
-- ((\U8|Add1~1\) # (GND)))))
-- \U8|Add1~3\ = CARRY((\U5|instruction\(11) & (!\data_out[1]~20_combout\ & !\U8|Add1~1\)) # (!\U5|instruction\(11) & ((!\U8|Add1~1\) # (!\data_out[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[1]~20_combout\,
	datad => VCC,
	cin => \U8|Add1~1\,
	combout => \U8|Add1~2_combout\,
	cout => \U8|Add1~3\);

-- Location: LCCOMB_X22_Y10_N4
\U8|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~4_combout\ = ((\data_out[2]~27_combout\ $ (\U5|instruction\(11) $ (!\U8|Add1~3\)))) # (GND)
-- \U8|Add1~5\ = CARRY((\data_out[2]~27_combout\ & ((\U5|instruction\(11)) # (!\U8|Add1~3\))) # (!\data_out[2]~27_combout\ & (\U5|instruction\(11) & !\U8|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datab => \U5|instruction\(11),
	datad => VCC,
	cin => \U8|Add1~3\,
	combout => \U8|Add1~4_combout\,
	cout => \U8|Add1~5\);

-- Location: LCCOMB_X22_Y10_N6
\U8|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~6_combout\ = (\data_out[3]~34_combout\ & ((\U5|instruction\(11) & (\U8|Add1~5\ & VCC)) # (!\U5|instruction\(11) & (!\U8|Add1~5\)))) # (!\data_out[3]~34_combout\ & ((\U5|instruction\(11) & (!\U8|Add1~5\)) # (!\U5|instruction\(11) & ((\U8|Add1~5\) 
-- # (GND)))))
-- \U8|Add1~7\ = CARRY((\data_out[3]~34_combout\ & (!\U5|instruction\(11) & !\U8|Add1~5\)) # (!\data_out[3]~34_combout\ & ((!\U8|Add1~5\) # (!\U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	datab => \U5|instruction\(11),
	datad => VCC,
	cin => \U8|Add1~5\,
	combout => \U8|Add1~6_combout\,
	cout => \U8|Add1~7\);

-- Location: LCCOMB_X22_Y10_N8
\U8|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~8_combout\ = ((\U5|instruction\(11) $ (\data_out[4]~41_combout\ $ (!\U8|Add1~7\)))) # (GND)
-- \U8|Add1~9\ = CARRY((\U5|instruction\(11) & ((\data_out[4]~41_combout\) # (!\U8|Add1~7\))) # (!\U5|instruction\(11) & (\data_out[4]~41_combout\ & !\U8|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[4]~41_combout\,
	datad => VCC,
	cin => \U8|Add1~7\,
	combout => \U8|Add1~8_combout\,
	cout => \U8|Add1~9\);

-- Location: LCCOMB_X23_Y9_N26
\U8|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~7_combout\ = (\U5|instruction\(11) & ((\data_out[2]~27_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(3),
	datad => \data_out[2]~27_combout\,
	combout => \U8|Mux0~7_combout\);

-- Location: LCCOMB_X24_Y8_N4
\U8|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~5_combout\ = (\U5|instruction\(11) & ((\data_out[1]~20_combout\))) # (!\U5|instruction\(11) & (\U10|data_latch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datac => \data_out[1]~20_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|result~5_combout\);

-- Location: LCCOMB_X23_Y8_N16
\U8|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~2_combout\ = (\U5|instruction\(11) & (\data_out[0]~13_combout\)) # (!\U5|instruction\(11) & ((\U10|data_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \data_out[0]~13_combout\,
	datad => \U10|data_latch\(1),
	combout => \U8|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y10_N4
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

-- Location: LCCOMB_X23_Y10_N6
\U8|Add2|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[1]~2_combout\ = (\data_out[0]~13_combout\ & ((\U8|Add2|auto_generated|_~0_combout\ & (\U8|Add2|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\U8|Add2|auto_generated|_~0_combout\ & 
-- (!\U8|Add2|auto_generated|result_int[0]~1_cout\)))) # (!\data_out[0]~13_combout\ & ((\U8|Add2|auto_generated|_~0_combout\ & (!\U8|Add2|auto_generated|result_int[0]~1_cout\)) # (!\U8|Add2|auto_generated|_~0_combout\ & 
-- ((\U8|Add2|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \U8|Add2|auto_generated|result_int[1]~3\ = CARRY((\data_out[0]~13_combout\ & (!\U8|Add2|auto_generated|_~0_combout\ & !\U8|Add2|auto_generated|result_int[0]~1_cout\)) # (!\data_out[0]~13_combout\ & ((!\U8|Add2|auto_generated|result_int[0]~1_cout\) # 
-- (!\U8|Add2|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datab => \U8|Add2|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[0]~1_cout\,
	combout => \U8|Add2|auto_generated|result_int[1]~2_combout\,
	cout => \U8|Add2|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X23_Y9_N0
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

-- Location: LCCOMB_X24_Y9_N12
\U8|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~0_combout\ = (\U10|data_latch\(0) & !\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(0),
	datad => \U5|instruction\(11),
	combout => \U8|result~0_combout\);

-- Location: LCCOMB_X23_Y9_N2
\U8|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~3_combout\ = (\U5|instruction\(12) & ((\U8|Mux7~2_combout\ & (\U8|result~0_combout\)) # (!\U8|Mux7~2_combout\ & ((\U8|Add1~0_combout\))))) # (!\U5|instruction\(12) & (\U8|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Mux7~2_combout\,
	datac => \U8|result~0_combout\,
	datad => \U8|Add1~0_combout\,
	combout => \U8|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y9_N8
\U8|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~7_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(0) & (!\U5|instruction\(13)))) # (!\U5|instruction\(15) & (((\U8|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(15),
	datad => \U8|Mux7~3_combout\,
	combout => \U8|Mux7~7_combout\);

-- Location: LCCOMB_X22_Y11_N0
\U8|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~1_combout\ = (\U5|instruction\(11) & (!\data_out[0]~13_combout\)) # (!\U5|instruction\(11) & ((\data_out[0]~13_combout\) # (\U10|data_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \data_out[0]~13_combout\,
	datad => \U10|data_latch\(0),
	combout => \U8|result~1_combout\);

-- Location: LCCOMB_X22_Y11_N30
\U8|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~2_combout\ = (\U10|data_latch\(0) & (\U5|instruction\(11) $ (!\data_out[0]~13_combout\))) # (!\U10|data_latch\(0) & (!\U5|instruction\(11) & \data_out[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U5|instruction\(11),
	datac => \data_out[0]~13_combout\,
	combout => \U8|result~2_combout\);

-- Location: LCCOMB_X22_Y11_N20
\U8|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~3_combout\ = (\U5|instruction\(11) & (\data_out[0]~13_combout\ & (\U10|data_latch\(0)))) # (!\U5|instruction\(11) & (((\data_out[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datab => \U10|data_latch\(0),
	datac => \U5|instruction\(11),
	datad => \data_out[1]~20_combout\,
	combout => \U8|result~3_combout\);

-- Location: LCCOMB_X22_Y11_N26
\U8|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~4_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & (\U8|result~2_combout\)) # (!\U5|instruction\(13) & ((\U8|result~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~2_combout\,
	datab => \U8|result~3_combout\,
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(13),
	combout => \U8|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y11_N10
\U8|div8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~3_combout\ = (\U10|data_latch\(1)) # ((\U10|data_latch\(2)) # (\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U10|data_latch\(2),
	datad => \U10|data_latch\(3),
	combout => \U8|div8~3_combout\);

-- Location: LCCOMB_X23_Y9_N20
\U8|divider~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divider~2_combout\ = (\U10|data_latch\(3) & (((\U10|data_latch\(1))))) # (!\U10|data_latch\(3) & (\U10|data_latch\(0) & (\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(0),
	datab => \U10|data_latch\(3),
	datac => \U10|data_latch\(2),
	datad => \U10|data_latch\(1),
	combout => \U8|divider~2_combout\);

-- Location: LCCOMB_X19_Y9_N0
\U8|divider~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divider~0_combout\ = (\U10|data_latch\(0) & \U10|data_latch\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(0),
	datad => \U10|data_latch\(3),
	combout => \U8|divider~0_combout\);

-- Location: LCCOMB_X19_Y9_N12
\U8|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~2_combout\ = (\data_out[0]~13_combout\ & ((GND) # (!\U8|divider~0_combout\))) # (!\data_out[0]~13_combout\ & (\U8|divider~0_combout\ $ (GND)))
-- \U8|Add8~3\ = CARRY((\data_out[0]~13_combout\) # (!\U8|divider~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datab => \U8|divider~0_combout\,
	datad => VCC,
	combout => \U8|Add8~2_combout\,
	cout => \U8|Add8~3\);

-- Location: LCCOMB_X19_Y9_N14
\U8|Add8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~5_combout\ = (\U8|divider~2_combout\ & ((\data_out[1]~20_combout\ & (!\U8|Add8~3\)) # (!\data_out[1]~20_combout\ & ((\U8|Add8~3\) # (GND))))) # (!\U8|divider~2_combout\ & ((\data_out[1]~20_combout\ & (\U8|Add8~3\ & VCC)) # 
-- (!\data_out[1]~20_combout\ & (!\U8|Add8~3\))))
-- \U8|Add8~6\ = CARRY((\U8|divider~2_combout\ & ((!\U8|Add8~3\) # (!\data_out[1]~20_combout\))) # (!\U8|divider~2_combout\ & (!\data_out[1]~20_combout\ & !\U8|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~2_combout\,
	datab => \data_out[1]~20_combout\,
	datad => VCC,
	cin => \U8|Add8~3\,
	combout => \U8|Add8~5_combout\,
	cout => \U8|Add8~6\);

-- Location: LCCOMB_X23_Y9_N10
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

-- Location: LCCOMB_X19_Y9_N28
\U8|divider~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divider~1_combout\ = (\U10|data_latch\(3) & (((\U10|data_latch\(2))))) # (!\U10|data_latch\(3) & (\U10|data_latch\(1) & ((\U10|data_latch\(2)) # (\U10|data_latch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(2),
	datad => \U10|data_latch\(0),
	combout => \U8|divider~1_combout\);

-- Location: LCCOMB_X21_Y9_N4
\U8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan0~0_combout\ = (\data_out[1]~20_combout\ & (!\data_out[0]~13_combout\ & (\U8|divider~0_combout\ & \U8|divider~2_combout\))) # (!\data_out[1]~20_combout\ & ((\U8|divider~2_combout\) # ((!\data_out[0]~13_combout\ & \U8|divider~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datab => \U8|divider~0_combout\,
	datac => \data_out[1]~20_combout\,
	datad => \U8|divider~2_combout\,
	combout => \U8|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y9_N18
\U8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan0~1_combout\ = (\U8|divider~1_combout\ & ((\U8|LessThan0~0_combout\) # (!\data_out[2]~27_combout\))) # (!\U8|divider~1_combout\ & (\U8|LessThan0~0_combout\ & !\data_out[2]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datac => \U8|LessThan0~0_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U8|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y9_N28
\U8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan0~2_combout\ = (\U8|Equal0~0_combout\ & (!\data_out[3]~34_combout\ & \U8|LessThan0~1_combout\)) # (!\U8|Equal0~0_combout\ & ((\U8|LessThan0~1_combout\) # (!\data_out[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \U8|LessThan0~1_combout\,
	combout => \U8|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y9_N14
\U8|Add8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~11_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[1]~20_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datac => \U8|Add8~5_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add8~11_combout\);

-- Location: LCCOMB_X21_Y9_N30
\U8|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~4_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[0]~13_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datac => \U8|Add8~2_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add8~4_combout\);

-- Location: LCCOMB_X21_Y9_N20
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

-- Location: LCCOMB_X21_Y9_N22
\U8|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add11~2_combout\ = (\U8|divider~1_combout\ & ((\U8|Add8~11_combout\ & (!\U8|Add11~1\)) # (!\U8|Add8~11_combout\ & ((\U8|Add11~1\) # (GND))))) # (!\U8|divider~1_combout\ & ((\U8|Add8~11_combout\ & (\U8|Add11~1\ & VCC)) # (!\U8|Add8~11_combout\ & 
-- (!\U8|Add11~1\))))
-- \U8|Add11~3\ = CARRY((\U8|divider~1_combout\ & ((!\U8|Add11~1\) # (!\U8|Add8~11_combout\))) # (!\U8|divider~1_combout\ & (!\U8|Add8~11_combout\ & !\U8|Add11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datab => \U8|Add8~11_combout\,
	datad => VCC,
	cin => \U8|Add11~1\,
	combout => \U8|Add11~2_combout\,
	cout => \U8|Add11~3\);

-- Location: LCCOMB_X19_Y9_N16
\U8|Add8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~7_combout\ = ((\data_out[2]~27_combout\ $ (\U8|divider~1_combout\ $ (\U8|Add8~6\)))) # (GND)
-- \U8|Add8~8\ = CARRY((\data_out[2]~27_combout\ & ((!\U8|Add8~6\) # (!\U8|divider~1_combout\))) # (!\data_out[2]~27_combout\ & (!\U8|divider~1_combout\ & !\U8|Add8~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datab => \U8|divider~1_combout\,
	datad => VCC,
	cin => \U8|Add8~6\,
	combout => \U8|Add8~7_combout\,
	cout => \U8|Add8~8\);

-- Location: LCCOMB_X21_Y9_N12
\U8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~0_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[2]~27_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datab => \U8|LessThan0~2_combout\,
	datad => \U8|Add8~7_combout\,
	combout => \U8|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y9_N16
\U8|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~1_combout\ = \U8|divider~1_combout\ $ (((\U8|LessThan0~2_combout\ & (\data_out[1]~20_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datab => \U8|divider~1_combout\,
	datac => \U8|Add8~5_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y9_N10
\U8|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~2_combout\ = (\U8|divider~2_combout\ & (!\U8|Add8~4_combout\ & !\U8|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~2_combout\,
	datac => \U8|Add8~4_combout\,
	datad => \U8|LessThan1~1_combout\,
	combout => \U8|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y9_N8
\U8|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~3_combout\ = (\U8|LessThan1~2_combout\) # ((\U8|divider~1_combout\ & !\U8|Add8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datac => \U8|Add8~11_combout\,
	datad => \U8|LessThan1~2_combout\,
	combout => \U8|LessThan1~3_combout\);

-- Location: LCCOMB_X19_Y9_N18
\U8|Add8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~9_combout\ = \U8|Equal0~0_combout\ $ (\U8|Add8~8\ $ (\data_out[3]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|Equal0~0_combout\,
	datad => \data_out[3]~34_combout\,
	cin => \U8|Add8~8\,
	combout => \U8|Add8~9_combout\);

-- Location: LCCOMB_X21_Y9_N2
\U8|Add8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~13_combout\ = (\U8|Equal0~0_combout\ & (\U8|Add8~9_combout\ & ((\data_out[3]~34_combout\) # (!\U8|LessThan0~1_combout\)))) # (!\U8|Equal0~0_combout\ & (\data_out[3]~34_combout\ & ((\U8|LessThan0~1_combout\) # (\U8|Add8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \U8|LessThan0~1_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \U8|Add8~9_combout\,
	combout => \U8|Add8~13_combout\);

-- Location: LCCOMB_X21_Y9_N6
\U8|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan1~4_combout\ = (!\U8|Add8~13_combout\ & ((\U8|LessThan1~0_combout\ & (!\U8|Equal0~0_combout\ & \U8|LessThan1~3_combout\)) # (!\U8|LessThan1~0_combout\ & ((\U8|LessThan1~3_combout\) # (!\U8|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan1~0_combout\,
	datab => \U8|Equal0~0_combout\,
	datac => \U8|LessThan1~3_combout\,
	datad => \U8|Add8~13_combout\,
	combout => \U8|LessThan1~4_combout\);

-- Location: LCCOMB_X21_Y9_N0
\U8|divided~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~1_combout\ = (\U8|LessThan1~4_combout\ & (\U8|Add8~11_combout\)) # (!\U8|LessThan1~4_combout\ & ((\U8|Add11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add8~11_combout\,
	datac => \U8|Add11~2_combout\,
	datad => \U8|LessThan1~4_combout\,
	combout => \U8|divided~1_combout\);

-- Location: LCCOMB_X22_Y9_N28
\U8|divided~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~0_combout\ = (\U8|LessThan1~4_combout\ & ((\U8|Add8~4_combout\))) # (!\U8|LessThan1~4_combout\ & (\U8|Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add11~0_combout\,
	datac => \U8|LessThan1~4_combout\,
	datad => \U8|Add8~4_combout\,
	combout => \U8|divided~0_combout\);

-- Location: LCCOMB_X22_Y9_N18
\U8|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add14~0_combout\ = (\U8|divider~1_combout\ & (\U8|divided~0_combout\ $ (VCC))) # (!\U8|divider~1_combout\ & ((\U8|divided~0_combout\) # (GND)))
-- \U8|Add14~1\ = CARRY((\U8|divided~0_combout\) # (!\U8|divider~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datab => \U8|divided~0_combout\,
	datad => VCC,
	combout => \U8|Add14~0_combout\,
	cout => \U8|Add14~1\);

-- Location: LCCOMB_X22_Y9_N20
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

-- Location: LCCOMB_X19_Y9_N22
\U8|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add8~12_combout\ = (\U8|LessThan0~2_combout\ & (\data_out[2]~27_combout\)) # (!\U8|LessThan0~2_combout\ & ((\U8|Add8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|Add8~7_combout\,
	combout => \U8|Add8~12_combout\);

-- Location: LCCOMB_X21_Y9_N24
\U8|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add11~4_combout\ = ((\U8|Add8~12_combout\ $ (\U8|Equal0~0_combout\ $ (!\U8|Add11~3\)))) # (GND)
-- \U8|Add11~5\ = CARRY((\U8|Add8~12_combout\ & ((\U8|Equal0~0_combout\) # (!\U8|Add11~3\))) # (!\U8|Add8~12_combout\ & (\U8|Equal0~0_combout\ & !\U8|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~12_combout\,
	datab => \U8|Equal0~0_combout\,
	datad => VCC,
	cin => \U8|Add11~3\,
	combout => \U8|Add11~4_combout\,
	cout => \U8|Add11~5\);

-- Location: LCCOMB_X22_Y9_N26
\U8|divided~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~3_combout\ = (\U8|LessThan1~4_combout\ & (\U8|Add8~12_combout\)) # (!\U8|LessThan1~4_combout\ & ((\U8|Add11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add8~12_combout\,
	datac => \U8|LessThan1~4_combout\,
	datad => \U8|Add11~4_combout\,
	combout => \U8|divided~3_combout\);

-- Location: LCCOMB_X22_Y9_N22
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

-- Location: LCCOMB_X21_Y9_N26
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

-- Location: LCCOMB_X22_Y9_N8
\U8|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan2~1_combout\ = (\U8|LessThan1~4_combout\ & (!\U8|Add8~12_combout\)) # (!\U8|LessThan1~4_combout\ & (((!\U8|Add11~6_combout\ & !\U8|Add11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~12_combout\,
	datab => \U8|LessThan1~4_combout\,
	datac => \U8|Add11~6_combout\,
	datad => \U8|Add11~4_combout\,
	combout => \U8|LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y9_N14
\U8|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan2~0_combout\ = (\U8|Equal0~0_combout\ & (\U8|divider~1_combout\ & (!\U8|divided~0_combout\ & !\U8|divided~1_combout\))) # (!\U8|Equal0~0_combout\ & (((\U8|divider~1_combout\ & !\U8|divided~0_combout\)) # (!\U8|divided~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divider~1_combout\,
	datab => \U8|divided~0_combout\,
	datac => \U8|Equal0~0_combout\,
	datad => \U8|divided~1_combout\,
	combout => \U8|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y9_N4
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

-- Location: LCCOMB_X22_Y11_N14
\U8|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan3~0_combout\ = (\U8|LessThan2~2_combout\ & (!\U8|divided~1_combout\)) # (!\U8|LessThan2~2_combout\ & (((!\U8|Add14~2_combout\ & !\U8|Add14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~1_combout\,
	datab => \U8|Add14~2_combout\,
	datac => \U8|Add14~4_combout\,
	datad => \U8|LessThan2~2_combout\,
	combout => \U8|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y9_N30
\U8|divided~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~2_combout\ = (\U8|LessThan2~1_combout\ & ((\U8|LessThan2~0_combout\ & (\U8|divided~0_combout\)) # (!\U8|LessThan2~0_combout\ & ((\U8|Add14~0_combout\))))) # (!\U8|LessThan2~1_combout\ & (((\U8|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~0_combout\,
	datab => \U8|Add14~0_combout\,
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|LessThan2~0_combout\,
	combout => \U8|divided~2_combout\);

-- Location: LCCOMB_X22_Y9_N24
\U8|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add14~6_combout\ = \U8|Add14~5\ $ (((\U8|LessThan1~4_combout\) # (!\U8|Add11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add11~6_combout\,
	datab => \U8|LessThan1~4_combout\,
	cin => \U8|Add14~5\,
	combout => \U8|Add14~6_combout\);

-- Location: LCCOMB_X22_Y11_N16
\U8|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|LessThan3~1_combout\ = (!\U8|divided~2_combout\ & (!\U8|Equal0~0_combout\ & ((\U8|LessThan2~2_combout\) # (!\U8|Add14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~2_combout\,
	datab => \U8|Equal0~0_combout\,
	datac => \U8|Add14~6_combout\,
	datad => \U8|LessThan2~2_combout\,
	combout => \U8|LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y11_N10
\U8|Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~6_combout\ = (!\U8|div8~3_combout\ & (!\U5|instruction\(11) & ((!\U8|LessThan3~1_combout\) # (!\U8|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|div8~3_combout\,
	datab => \U5|instruction\(11),
	datac => \U8|LessThan3~0_combout\,
	datad => \U8|LessThan3~1_combout\,
	combout => \U8|Add18~6_combout\);

-- Location: LCCOMB_X23_Y11_N30
\U8|Add18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~5_combout\ = (\U5|instruction\(11) & (\data_out[0]~13_combout\)) # (!\U5|instruction\(11) & ((\U8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Equal0~0_combout\,
	combout => \U8|Add18~5_combout\);

-- Location: LCCOMB_X22_Y9_N6
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

-- Location: LCCOMB_X22_Y9_N16
\U8|Add18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~3_combout\ = (\U8|div8~2_combout\ & ((\U8|Add14~0_combout\))) # (!\U8|div8~2_combout\ & (\U8|Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add11~0_combout\,
	datac => \U8|Add14~0_combout\,
	datad => \U8|div8~2_combout\,
	combout => \U8|Add18~3_combout\);

-- Location: LCCOMB_X23_Y9_N12
\U8|Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~2_combout\ = (!\U5|instruction\(11) & ((\U10|data_latch\(2)) # ((\U10|data_latch\(1)) # (\U10|data_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(1),
	datac => \U10|data_latch\(3),
	datad => \U5|instruction\(11),
	combout => \U8|Add18~2_combout\);

-- Location: LCCOMB_X22_Y9_N12
\U8|div8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|div8~4_combout\ = (\U8|div8~2_combout\ & ((\U10|data_latch\(2)) # ((\U10|data_latch\(3))))) # (!\U8|div8~2_combout\ & (((\U8|LessThan1~4_combout\))))

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
	combout => \U8|div8~4_combout\);

-- Location: LCCOMB_X22_Y11_N12
\U8|Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~4_combout\ = (\U8|Add18~2_combout\ & ((\U8|div8~4_combout\ & ((\U8|Add8~4_combout\))) # (!\U8|div8~4_combout\ & (\U8|Add18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~3_combout\,
	datab => \U8|Add18~2_combout\,
	datac => \U8|Add8~4_combout\,
	datad => \U8|div8~4_combout\,
	combout => \U8|Add18~4_combout\);

-- Location: LCCOMB_X22_Y8_N6
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

-- Location: LCCOMB_X22_Y11_N28
\U8|Add18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~7_combout\ = (\U8|Add18~5_combout\) # ((\U8|Add18~4_combout\) # ((\U8|Add18~6_combout\ & \U8|Add17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~6_combout\,
	datab => \U8|Add18~5_combout\,
	datac => \U8|Add18~4_combout\,
	datad => \U8|Add17~0_combout\,
	combout => \U8|Add18~7_combout\);

-- Location: LCCOMB_X22_Y11_N18
\U8|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~5_combout\ = (\U5|instruction\(12) & ((\U8|Mux7~4_combout\ & ((\U8|Add18~7_combout\))) # (!\U8|Mux7~4_combout\ & (\U8|result~1_combout\)))) # (!\U5|instruction\(12) & (((\U8|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|result~1_combout\,
	datac => \U8|Mux7~4_combout\,
	datad => \U8|Add18~7_combout\,
	combout => \U8|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y11_N24
\U8|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux7~6_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux7~5_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U8|Mux7~7_combout\,
	datac => \U5|instruction\(14),
	datad => \U8|Mux7~5_combout\,
	combout => \U8|Mux7~6_combout\);

-- Location: FF_X22_Y11_N25
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

-- Location: LCCOMB_X19_Y9_N4
\U10|data_latch[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[0]~0_combout\ = (\U14|dbfbin_latch~q\ & (\data_out[0]~13_combout\)) # (!\U14|dbfbin_latch~q\ & ((\U8|alu_result_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|dbfbin_latch~q\,
	datac => \data_out[0]~13_combout\,
	datad => \U8|alu_result_latch\(0),
	combout => \U10|data_latch[0]~0_combout\);

-- Location: LCCOMB_X19_Y9_N2
\U10|data_latch[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(0) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[0]~0_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(0),
	datac => \U10|data_latch[0]~0_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(0));

-- Location: LCCOMB_X23_Y10_N28
\U8|Add2|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~0_combout\ = \U5|instruction\(11) $ (\U10|data_latch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datad => \U10|data_latch\(0),
	combout => \U8|Add2|auto_generated|_~0_combout\);

-- Location: LCCOMB_X23_Y10_N8
\U8|Add2|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[2]~4_combout\ = ((\U8|Add2|auto_generated|_~1_combout\ $ (\data_out[1]~20_combout\ $ (!\U8|Add2|auto_generated|result_int[1]~3\)))) # (GND)
-- \U8|Add2|auto_generated|result_int[2]~5\ = CARRY((\U8|Add2|auto_generated|_~1_combout\ & ((\data_out[1]~20_combout\) # (!\U8|Add2|auto_generated|result_int[1]~3\))) # (!\U8|Add2|auto_generated|_~1_combout\ & (\data_out[1]~20_combout\ & 
-- !\U8|Add2|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~1_combout\,
	datab => \data_out[1]~20_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[1]~3\,
	combout => \U8|Add2|auto_generated|result_int[2]~4_combout\,
	cout => \U8|Add2|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X24_Y8_N20
\U8|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~2_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & (\U8|Add2|auto_generated|result_int[2]~4_combout\)) # (!\U5|instruction\(13) & ((\U10|data_latch\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|result_int[2]~4_combout\,
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U10|data_latch\(1),
	combout => \U8|Mux6~2_combout\);

-- Location: LCCOMB_X24_Y8_N10
\U8|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~3_combout\ = (\U5|instruction\(12) & ((\U8|Mux6~2_combout\ & (\U8|Mux0~2_combout\)) # (!\U8|Mux6~2_combout\ & ((\U8|Add1~2_combout\))))) # (!\U5|instruction\(12) & (((\U8|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~2_combout\,
	datab => \U5|instruction\(12),
	datac => \U8|Add1~2_combout\,
	datad => \U8|Mux6~2_combout\,
	combout => \U8|Mux6~3_combout\);

-- Location: LCCOMB_X24_Y8_N16
\U8|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~7_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(1) & (!\U5|instruction\(13)))) # (!\U5|instruction\(15) & (((\U8|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U10|data_latch\(1),
	datac => \U5|instruction\(13),
	datad => \U8|Mux6~3_combout\,
	combout => \U8|Mux6~7_combout\);

-- Location: LCCOMB_X26_Y9_N30
\U8|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~6_combout\ = (\U5|instruction\(11) & (((\U10|data_latch\(1) & \data_out[1]~20_combout\)))) # (!\U5|instruction\(11) & (\data_out[2]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[2]~27_combout\,
	datac => \U10|data_latch\(1),
	datad => \data_out[1]~20_combout\,
	combout => \U8|Mux0~6_combout\);

-- Location: LCCOMB_X26_Y9_N20
\U8|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~4_combout\ = (\U10|data_latch\(0) & \data_out[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(0),
	datad => \data_out[1]~20_combout\,
	combout => \U8|result~4_combout\);

-- Location: LCCOMB_X25_Y9_N14
\U8|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~4_combout\ = (\U8|result~4_combout\ & (\data_out[0]~13_combout\ $ (VCC))) # (!\U8|result~4_combout\ & (\data_out[0]~13_combout\ & VCC))
-- \U8|Add5~5\ = CARRY((\U8|result~4_combout\ & \data_out[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~4_combout\,
	datab => \data_out[0]~13_combout\,
	datad => VCC,
	combout => \U8|Add5~4_combout\,
	cout => \U8|Add5~5\);

-- Location: LCCOMB_X26_Y9_N18
\U8|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~4_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(1) & (\U8|Add5~4_combout\)) # (!\U10|data_latch\(1) & ((\U8|result~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~4_combout\,
	datab => \U10|data_latch\(1),
	datac => \U5|instruction\(11),
	datad => \U8|result~4_combout\,
	combout => \U8|Mux0~4_combout\);

-- Location: LCCOMB_X26_Y9_N12
\U8|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~5_combout\ = (\U8|Mux0~4_combout\) # ((!\U5|instruction\(11) & (\data_out[1]~20_combout\ $ (\U10|data_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datab => \U10|data_latch\(1),
	datac => \U5|instruction\(11),
	datad => \U8|Mux0~4_combout\,
	combout => \U8|Mux0~5_combout\);

-- Location: LCCOMB_X26_Y9_N28
\U8|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~4_combout\ = (\U5|instruction\(13) & ((\U5|instruction\(12)) # ((\U8|Mux0~5_combout\)))) # (!\U5|instruction\(13) & (!\U5|instruction\(12) & (\U8|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(12),
	datac => \U8|Mux0~6_combout\,
	datad => \U8|Mux0~5_combout\,
	combout => \U8|Mux6~4_combout\);

-- Location: LCCOMB_X24_Y8_N12
\U8|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~3_combout\ = (\U5|instruction\(11) & (!\data_out[1]~20_combout\)) # (!\U5|instruction\(11) & ((\data_out[1]~20_combout\) # (\U10|data_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \data_out[1]~20_combout\,
	datad => \U10|data_latch\(1),
	combout => \U8|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y7_N0
\U8|Add18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~9_cout\ = CARRY(!\data_out[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datad => VCC,
	cout => \U8|Add18~9_cout\);

-- Location: LCCOMB_X22_Y7_N2
\U8|Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~10_combout\ = (\data_out[1]~20_combout\ & ((\U8|Add18~9_cout\) # (GND))) # (!\data_out[1]~20_combout\ & (!\U8|Add18~9_cout\))
-- \U8|Add18~11\ = CARRY((\data_out[1]~20_combout\) # (!\U8|Add18~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datad => VCC,
	cin => \U8|Add18~9_cout\,
	combout => \U8|Add18~10_combout\,
	cout => \U8|Add18~11\);

-- Location: LCCOMB_X22_Y7_N16
\U8|Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~12_combout\ = (\U5|instruction\(11) & ((\U8|Add18~10_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add18~10_combout\,
	combout => \U8|Add18~12_combout\);

-- Location: LCCOMB_X22_Y9_N0
\U8|divided~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~4_combout\ = (\U8|LessThan2~0_combout\ & ((\U8|LessThan2~1_combout\ & (\U8|divided~1_combout\)) # (!\U8|LessThan2~1_combout\ & ((\U8|Add14~2_combout\))))) # (!\U8|LessThan2~0_combout\ & (((\U8|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|divided~1_combout\,
	datab => \U8|LessThan2~0_combout\,
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|Add14~2_combout\,
	combout => \U8|divided~4_combout\);

-- Location: LCCOMB_X22_Y8_N8
\U8|Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add17~2_combout\ = (\U8|divided~4_combout\ & (\U8|Add17~1\ & VCC)) # (!\U8|divided~4_combout\ & (!\U8|Add17~1\))
-- \U8|Add17~3\ = CARRY((!\U8|divided~4_combout\ & !\U8|Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|divided~4_combout\,
	datad => VCC,
	cin => \U8|Add17~1\,
	combout => \U8|Add17~2_combout\,
	cout => \U8|Add17~3\);

-- Location: LCCOMB_X21_Y8_N24
\U8|Add18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~13_combout\ = (\U8|div8~2_combout\ & (\U8|Add14~2_combout\)) # (!\U8|div8~2_combout\ & ((\U8|Add11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add14~2_combout\,
	datac => \U8|Add11~2_combout\,
	datad => \U8|div8~2_combout\,
	combout => \U8|Add18~13_combout\);

-- Location: LCCOMB_X22_Y8_N22
\U8|Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~14_combout\ = (\U8|Add18~2_combout\ & ((\U8|div8~4_combout\ & (\U8|Add8~11_combout\)) # (!\U8|div8~4_combout\ & ((\U8|Add18~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add8~11_combout\,
	datab => \U8|Add18~2_combout\,
	datac => \U8|div8~4_combout\,
	datad => \U8|Add18~13_combout\,
	combout => \U8|Add18~14_combout\);

-- Location: LCCOMB_X22_Y8_N28
\U8|Add18~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~15_combout\ = (\U8|Add18~12_combout\) # ((\U8|Add18~14_combout\) # ((\U8|Add17~2_combout\ & \U8|Add18~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~12_combout\,
	datab => \U8|Add17~2_combout\,
	datac => \U8|Add18~14_combout\,
	datad => \U8|Add18~6_combout\,
	combout => \U8|Add18~15_combout\);

-- Location: LCCOMB_X22_Y8_N18
\U8|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~5_combout\ = (\U5|instruction\(12) & ((\U8|Mux6~4_combout\ & ((\U8|Add18~15_combout\))) # (!\U8|Mux6~4_combout\ & (\U8|Mux0~3_combout\)))) # (!\U5|instruction\(12) & (\U8|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Mux6~4_combout\,
	datac => \U8|Mux0~3_combout\,
	datad => \U8|Add18~15_combout\,
	combout => \U8|Mux6~5_combout\);

-- Location: LCCOMB_X22_Y8_N16
\U8|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux6~6_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux6~5_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux6~7_combout\,
	datad => \U8|Mux6~5_combout\,
	combout => \U8|Mux6~6_combout\);

-- Location: FF_X22_Y8_N17
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

-- Location: LCCOMB_X18_Y9_N16
\U10|data_latch[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[1]~2_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[1]~20_combout\))) # (!\U14|dbfbin_latch~q\ & (\U8|alu_result_latch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(1),
	datad => \data_out[1]~20_combout\,
	combout => \U10|data_latch[1]~2_combout\);

-- Location: LCCOMB_X18_Y9_N24
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

-- Location: LCCOMB_X23_Y10_N26
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

-- Location: LCCOMB_X23_Y10_N10
\U8|Add2|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[3]~6_combout\ = (\U8|Add2|auto_generated|_~2_combout\ & ((\data_out[2]~27_combout\ & (\U8|Add2|auto_generated|result_int[2]~5\ & VCC)) # (!\data_out[2]~27_combout\ & (!\U8|Add2|auto_generated|result_int[2]~5\)))) # 
-- (!\U8|Add2|auto_generated|_~2_combout\ & ((\data_out[2]~27_combout\ & (!\U8|Add2|auto_generated|result_int[2]~5\)) # (!\data_out[2]~27_combout\ & ((\U8|Add2|auto_generated|result_int[2]~5\) # (GND)))))
-- \U8|Add2|auto_generated|result_int[3]~7\ = CARRY((\U8|Add2|auto_generated|_~2_combout\ & (!\data_out[2]~27_combout\ & !\U8|Add2|auto_generated|result_int[2]~5\)) # (!\U8|Add2|auto_generated|_~2_combout\ & ((!\U8|Add2|auto_generated|result_int[2]~5\) # 
-- (!\data_out[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~2_combout\,
	datab => \data_out[2]~27_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[2]~5\,
	combout => \U8|Add2|auto_generated|result_int[3]~6_combout\,
	cout => \U8|Add2|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X24_Y8_N6
\U8|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~2_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|Add2|auto_generated|result_int[3]~6_combout\))) # (!\U5|instruction\(13) & (\U10|data_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U8|Add2|auto_generated|result_int[3]~6_combout\,
	combout => \U8|Mux5~2_combout\);

-- Location: LCCOMB_X24_Y8_N18
\U8|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~3_combout\ = (\U5|instruction\(12) & ((\U8|Mux5~2_combout\ & ((\U8|result~5_combout\))) # (!\U8|Mux5~2_combout\ & (\U8|Add1~4_combout\)))) # (!\U5|instruction\(12) & (((\U8|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add1~4_combout\,
	datab => \U8|result~5_combout\,
	datac => \U5|instruction\(12),
	datad => \U8|Mux5~2_combout\,
	combout => \U8|Mux5~3_combout\);

-- Location: LCCOMB_X24_Y8_N22
\U8|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~7_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(2) & (!\U5|instruction\(13)))) # (!\U5|instruction\(15) & (((\U8|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U5|instruction\(15),
	datac => \U5|instruction\(13),
	datad => \U8|Mux5~3_combout\,
	combout => \U8|Mux5~7_combout\);

-- Location: LCCOMB_X24_Y9_N14
\U8|result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~6_combout\ = (\U10|data_latch\(0) & \data_out[2]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(0),
	datad => \data_out[2]~27_combout\,
	combout => \U8|result~6_combout\);

-- Location: LCCOMB_X25_Y9_N16
\U8|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~6_combout\ = (\U8|result~6_combout\ & ((\data_out[1]~20_combout\ & (\U8|Add5~5\ & VCC)) # (!\data_out[1]~20_combout\ & (!\U8|Add5~5\)))) # (!\U8|result~6_combout\ & ((\data_out[1]~20_combout\ & (!\U8|Add5~5\)) # (!\data_out[1]~20_combout\ & 
-- ((\U8|Add5~5\) # (GND)))))
-- \U8|Add5~7\ = CARRY((\U8|result~6_combout\ & (!\data_out[1]~20_combout\ & !\U8|Add5~5\)) # (!\U8|result~6_combout\ & ((!\U8|Add5~5\) # (!\data_out[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~6_combout\,
	datab => \data_out[1]~20_combout\,
	datad => VCC,
	cin => \U8|Add5~5\,
	combout => \U8|Add5~6_combout\,
	cout => \U8|Add5~7\);

-- Location: LCCOMB_X25_Y9_N2
\U8|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~16_combout\ = (\U10|data_latch\(1) & (((\U8|Add5~6_combout\)))) # (!\U10|data_latch\(1) & (\data_out[2]~27_combout\ & (\U10|data_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datab => \U10|data_latch\(0),
	datac => \U10|data_latch\(1),
	datad => \U8|Add5~6_combout\,
	combout => \U8|Add5~16_combout\);

-- Location: LCCOMB_X25_Y9_N4
\U8|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~4_combout\ = (\data_out[0]~13_combout\ & (\U8|Add5~16_combout\ $ (VCC))) # (!\data_out[0]~13_combout\ & (\U8|Add5~16_combout\ & VCC))
-- \U8|Add6~5\ = CARRY((\data_out[0]~13_combout\ & \U8|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~13_combout\,
	datab => \U8|Add5~16_combout\,
	datad => VCC,
	combout => \U8|Add6~4_combout\,
	cout => \U8|Add6~5\);

-- Location: LCCOMB_X24_Y9_N24
\U8|result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~7_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(2) & ((\U8|Add6~4_combout\))) # (!\U10|data_latch\(2) & (\U8|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(2),
	datac => \U8|Add5~16_combout\,
	datad => \U8|Add6~4_combout\,
	combout => \U8|result~7_combout\);

-- Location: LCCOMB_X23_Y9_N18
\U8|result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~8_combout\ = (\U8|result~7_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(2) $ (\data_out[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \data_out[2]~27_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|result~7_combout\,
	combout => \U8|result~8_combout\);

-- Location: LCCOMB_X24_Y9_N8
\U8|result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~10_combout\ = (\U5|instruction\(11) & (\U10|data_latch\(2) & ((\data_out[2]~27_combout\)))) # (!\U5|instruction\(11) & (((\data_out[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \data_out[3]~34_combout\,
	datac => \data_out[2]~27_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|result~10_combout\);

-- Location: LCCOMB_X24_Y9_N10
\U8|result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~9_combout\ = (\U5|instruction\(11) & ((!\data_out[2]~27_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(2)) # (\data_out[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(2),
	datac => \data_out[2]~27_combout\,
	combout => \U8|result~9_combout\);

-- Location: LCCOMB_X24_Y9_N30
\U8|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~4_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & ((\U8|result~9_combout\))) # (!\U5|instruction\(12) & (\U8|result~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U8|result~10_combout\,
	datac => \U5|instruction\(12),
	datad => \U8|result~9_combout\,
	combout => \U8|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y7_N4
\U8|Add18~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~17_combout\ = (\data_out[2]~27_combout\ & (!\U8|Add18~11\ & VCC)) # (!\data_out[2]~27_combout\ & (\U8|Add18~11\ $ (GND)))
-- \U8|Add18~18\ = CARRY((!\data_out[2]~27_combout\ & !\U8|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datad => VCC,
	cin => \U8|Add18~11\,
	combout => \U8|Add18~17_combout\,
	cout => \U8|Add18~18\);

-- Location: LCCOMB_X22_Y7_N30
\U8|Add18~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~19_combout\ = (\U5|instruction\(11) & ((\U8|Add18~17_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \U5|instruction\(11),
	datac => \U8|Add18~17_combout\,
	combout => \U8|Add18~19_combout\);

-- Location: LCCOMB_X21_Y11_N24
\U8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal0~1_combout\ = (!\U10|data_latch\(2) & !\U10|data_latch\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(2),
	datad => \U10|data_latch\(3),
	combout => \U8|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y9_N2
\U8|Add18~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~48_combout\ = (\U10|data_latch\(3) & (((\U8|Add8~12_combout\)))) # (!\U10|data_latch\(3) & (\U10|data_latch\(2) & ((\U8|divided~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(3),
	datac => \U8|Add8~12_combout\,
	datad => \U8|divided~3_combout\,
	combout => \U8|Add18~48_combout\);

-- Location: LCCOMB_X22_Y9_N10
\U8|divided~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|divided~5_combout\ = (\U8|Add14~4_combout\ & ((!\U8|LessThan2~1_combout\) # (!\U8|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U8|LessThan2~0_combout\,
	datac => \U8|Add14~4_combout\,
	datad => \U8|LessThan2~1_combout\,
	combout => \U8|divided~5_combout\);

-- Location: LCCOMB_X22_Y8_N4
\U8|Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~16_combout\ = (\U8|Add18~2_combout\ & ((\U8|Add18~48_combout\) # ((\U8|Equal0~1_combout\ & \U8|divided~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~1_combout\,
	datab => \U8|Add18~2_combout\,
	datac => \U8|Add18~48_combout\,
	datad => \U8|divided~5_combout\,
	combout => \U8|Add18~16_combout\);

-- Location: LCCOMB_X22_Y8_N10
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

-- Location: LCCOMB_X22_Y8_N2
\U8|Add18~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~20_combout\ = (\U8|Add18~19_combout\) # ((\U8|Add18~16_combout\) # ((\U8|Add18~6_combout\ & \U8|Add17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~19_combout\,
	datab => \U8|Add18~16_combout\,
	datac => \U8|Add18~6_combout\,
	datad => \U8|Add17~4_combout\,
	combout => \U8|Add18~20_combout\);

-- Location: LCCOMB_X22_Y8_N24
\U8|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~5_combout\ = (\U5|instruction\(13) & ((\U8|Mux5~4_combout\ & ((\U8|Add18~20_combout\))) # (!\U8|Mux5~4_combout\ & (\U8|result~8_combout\)))) # (!\U5|instruction\(13) & (((\U8|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~8_combout\,
	datab => \U5|instruction\(13),
	datac => \U8|Mux5~4_combout\,
	datad => \U8|Add18~20_combout\,
	combout => \U8|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y8_N30
\U8|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux5~6_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux5~5_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux5~7_combout\,
	datad => \U8|Mux5~5_combout\,
	combout => \U8|Mux5~6_combout\);

-- Location: FF_X22_Y8_N31
\U8|alu_result_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(2));

-- Location: LCCOMB_X16_Y7_N16
\U10|data_latch[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[2]~3_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[2]~27_combout\))) # (!\U14|dbfbin_latch~q\ & (\U8|alu_result_latch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(2),
	datad => \data_out[2]~27_combout\,
	combout => \U10|data_latch[2]~3_combout\);

-- Location: LCCOMB_X16_Y7_N12
\U10|data_latch[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(2) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[2]~3_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datac => \U10|data_latch[2]~3_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(2));

-- Location: LCCOMB_X23_Y10_N30
\U8|Add2|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~2_combout\ = \U10|data_latch\(2) $ (\U5|instruction\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(2),
	datad => \U5|instruction\(11),
	combout => \U8|Add2|auto_generated|_~2_combout\);

-- Location: LCCOMB_X23_Y10_N12
\U8|Add2|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[4]~8_combout\ = ((\U8|Add2|auto_generated|_~3_combout\ $ (\data_out[3]~34_combout\ $ (!\U8|Add2|auto_generated|result_int[3]~7\)))) # (GND)
-- \U8|Add2|auto_generated|result_int[4]~9\ = CARRY((\U8|Add2|auto_generated|_~3_combout\ & ((\data_out[3]~34_combout\) # (!\U8|Add2|auto_generated|result_int[3]~7\))) # (!\U8|Add2|auto_generated|_~3_combout\ & (\data_out[3]~34_combout\ & 
-- !\U8|Add2|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~3_combout\,
	datab => \data_out[3]~34_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[3]~7\,
	combout => \U8|Add2|auto_generated|result_int[4]~8_combout\,
	cout => \U8|Add2|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X23_Y9_N24
\U8|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~2_combout\ = (\U5|instruction\(13) & ((\U8|Add2|auto_generated|result_int[4]~8_combout\) # ((\U5|instruction\(12))))) # (!\U5|instruction\(13) & (((\U10|data_latch\(3) & !\U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|result_int[4]~8_combout\,
	datab => \U5|instruction\(13),
	datac => \U10|data_latch\(3),
	datad => \U5|instruction\(12),
	combout => \U8|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y9_N16
\U8|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~3_combout\ = (\U5|instruction\(12) & ((\U8|Mux4~2_combout\ & ((\U8|Mux0~7_combout\))) # (!\U8|Mux4~2_combout\ & (\U8|Add1~6_combout\)))) # (!\U5|instruction\(12) & (((\U8|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|Add1~6_combout\,
	datac => \U8|Mux0~7_combout\,
	datad => \U8|Mux4~2_combout\,
	combout => \U8|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y9_N14
\U8|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~16_combout\ = (\U5|instruction\(15) & (!\U5|instruction\(13) & (\U10|data_latch\(3)))) # (!\U5|instruction\(15) & (((\U8|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(13),
	datac => \U10|data_latch\(3),
	datad => \U8|Mux4~3_combout\,
	combout => \U8|Mux4~16_combout\);

-- Location: LCCOMB_X22_Y8_N12
\U8|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add17~6_combout\ = \U8|Add17~5\ $ (((\U8|LessThan2~2_combout\) # (!\U8|Add14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add14~6_combout\,
	datad => \U8|LessThan2~2_combout\,
	cin => \U8|Add17~5\,
	combout => \U8|Add17~6_combout\);

-- Location: LCCOMB_X23_Y9_N4
\U8|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~10_combout\ = (\U5|instruction\(13) & ((\U5|instruction\(11)) # ((\data_out[3]~34_combout\) # (\U5|instruction\(12))))) # (!\U5|instruction\(13) & (\U5|instruction\(12) & (\U5|instruction\(11) $ (\data_out[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(11),
	datac => \data_out[3]~34_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux4~10_combout\);

-- Location: LCCOMB_X23_Y9_N6
\U8|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~9_combout\ = (\U5|instruction\(13) & (((!\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(11) & (\data_out[3]~34_combout\ & !\U5|instruction\(12))) # (!\U5|instruction\(11) & (!\data_out[3]~34_combout\ & 
-- \U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U5|instruction\(13),
	datac => \data_out[3]~34_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux4~9_combout\);

-- Location: LCCOMB_X23_Y9_N22
\U8|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~11_combout\ = (\U8|Mux4~9_combout\ & ((\U10|data_latch\(3) $ (!\U8|Mux4~10_combout\)))) # (!\U8|Mux4~9_combout\ & (\U5|instruction\(11) & ((!\U8|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(3),
	datac => \U8|Mux4~10_combout\,
	datad => \U8|Mux4~9_combout\,
	combout => \U8|Mux4~11_combout\);

-- Location: LCCOMB_X23_Y9_N28
\U8|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~12_combout\ = (\U8|Mux4~9_combout\ & (\U10|data_latch\(3) $ (((!\U5|instruction\(11) & \U8|Mux4~10_combout\))))) # (!\U8|Mux4~9_combout\ & (((\U8|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(3),
	datac => \U8|Mux4~10_combout\,
	datad => \U8|Mux4~9_combout\,
	combout => \U8|Mux4~12_combout\);

-- Location: LCCOMB_X24_Y9_N6
\U8|result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~11_combout\ = (\U10|data_latch\(0) & \data_out[3]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U10|data_latch\(0),
	datad => \data_out[3]~34_combout\,
	combout => \U8|result~11_combout\);

-- Location: LCCOMB_X25_Y9_N18
\U8|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~8_combout\ = ((\data_out[2]~27_combout\ $ (\U8|result~11_combout\ $ (!\U8|Add5~7\)))) # (GND)
-- \U8|Add5~9\ = CARRY((\data_out[2]~27_combout\ & ((\U8|result~11_combout\) # (!\U8|Add5~7\))) # (!\data_out[2]~27_combout\ & (\U8|result~11_combout\ & !\U8|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datab => \U8|result~11_combout\,
	datad => VCC,
	cin => \U8|Add5~7\,
	combout => \U8|Add5~8_combout\,
	cout => \U8|Add5~9\);

-- Location: LCCOMB_X25_Y9_N28
\U8|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~17_combout\ = (\U10|data_latch\(1) & (((\U8|Add5~8_combout\)))) # (!\U10|data_latch\(1) & (\U10|data_latch\(0) & (\data_out[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U10|data_latch\(0),
	datac => \data_out[3]~34_combout\,
	datad => \U8|Add5~8_combout\,
	combout => \U8|Add5~17_combout\);

-- Location: LCCOMB_X25_Y9_N6
\U8|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~6_combout\ = (\data_out[1]~20_combout\ & ((\U8|Add5~17_combout\ & (\U8|Add6~5\ & VCC)) # (!\U8|Add5~17_combout\ & (!\U8|Add6~5\)))) # (!\data_out[1]~20_combout\ & ((\U8|Add5~17_combout\ & (!\U8|Add6~5\)) # (!\U8|Add5~17_combout\ & ((\U8|Add6~5\) 
-- # (GND)))))
-- \U8|Add6~7\ = CARRY((\data_out[1]~20_combout\ & (!\U8|Add5~17_combout\ & !\U8|Add6~5\)) # (!\data_out[1]~20_combout\ & ((!\U8|Add6~5\) # (!\U8|Add5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datab => \U8|Add5~17_combout\,
	datad => VCC,
	cin => \U8|Add6~5\,
	combout => \U8|Add6~6_combout\,
	cout => \U8|Add6~7\);

-- Location: LCCOMB_X25_Y9_N0
\U8|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~8_combout\ = (\U10|data_latch\(2) & ((\U8|Add6~6_combout\))) # (!\U10|data_latch\(2) & (\U8|Add5~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datac => \U8|Add5~17_combout\,
	datad => \U8|Add6~6_combout\,
	combout => \U8|Add6~8_combout\);

-- Location: LCCOMB_X24_Y9_N20
\U8|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~8_combout\ = (\U5|instruction\(13) & (\U8|Add6~8_combout\)) # (!\U5|instruction\(13) & ((\data_out[4]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datac => \U8|Add6~8_combout\,
	datad => \data_out[4]~41_combout\,
	combout => \U8|Mux4~8_combout\);

-- Location: LCCOMB_X24_Y11_N16
\U8|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~0_combout\ = (\U8|Add6~8_combout\ & (\data_out[0]~13_combout\ $ (VCC))) # (!\U8|Add6~8_combout\ & (\data_out[0]~13_combout\ & VCC))
-- \U8|Add7~1\ = CARRY((\U8|Add6~8_combout\ & \data_out[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~8_combout\,
	datab => \data_out[0]~13_combout\,
	datad => VCC,
	combout => \U8|Add7~0_combout\,
	cout => \U8|Add7~1\);

-- Location: LCCOMB_X23_Y9_N30
\U8|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~13_combout\ = (\U8|Mux4~11_combout\ & (\U8|Mux4~12_combout\ & ((\U8|Add7~0_combout\)))) # (!\U8|Mux4~11_combout\ & ((\U8|Mux4~12_combout\) # ((\U8|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux4~11_combout\,
	datab => \U8|Mux4~12_combout\,
	datac => \U8|Mux4~8_combout\,
	datad => \U8|Add7~0_combout\,
	combout => \U8|Mux4~13_combout\);

-- Location: LCCOMB_X24_Y9_N28
\U8|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~8_combout\ = (\U5|instruction\(11) & ((!\data_out[3]~34_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(3)) # (\data_out[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U10|data_latch\(3),
	datad => \data_out[3]~34_combout\,
	combout => \U8|Mux0~8_combout\);

-- Location: LCCOMB_X24_Y9_N26
\U8|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~9_combout\ = (\U5|instruction\(11) & (((\U10|data_latch\(3) & \data_out[3]~34_combout\)))) # (!\U5|instruction\(11) & (\data_out[4]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[4]~41_combout\,
	datac => \U10|data_latch\(3),
	datad => \data_out[3]~34_combout\,
	combout => \U8|Mux0~9_combout\);

-- Location: LCCOMB_X24_Y9_N16
\U8|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~4_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & (\U8|Mux0~8_combout\)) # (!\U5|instruction\(12) & ((\U8|Mux0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U8|Mux0~8_combout\,
	datac => \U8|Mux0~9_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y7_N6
\U8|Add18~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~21_combout\ = (\data_out[3]~34_combout\ & ((\U8|Add18~18\) # (GND))) # (!\data_out[3]~34_combout\ & (!\U8|Add18~18\))
-- \U8|Add18~22\ = CARRY((\data_out[3]~34_combout\) # (!\U8|Add18~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	datad => VCC,
	cin => \U8|Add18~18\,
	combout => \U8|Add18~21_combout\,
	cout => \U8|Add18~22\);

-- Location: LCCOMB_X22_Y7_N24
\U8|Add18~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~23_combout\ = (\U5|instruction\(11) & ((\U8|Add18~21_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add18~21_combout\,
	combout => \U8|Add18~23_combout\);

-- Location: LCCOMB_X21_Y10_N8
\U8|Add18~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~24_combout\ = (\U10|data_latch\(3) & (((\U8|Add8~13_combout\)))) # (!\U10|data_latch\(3) & (!\U8|LessThan1~4_combout\ & (\U8|Add11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan1~4_combout\,
	datab => \U10|data_latch\(3),
	datac => \U8|Add11~6_combout\,
	datad => \U8|Add8~13_combout\,
	combout => \U8|Add18~24_combout\);

-- Location: LCCOMB_X21_Y10_N2
\U8|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~5_combout\ = (\U8|Equal0~1_combout\ & (((!\U8|LessThan2~1_combout\)) # (!\U8|LessThan2~0_combout\))) # (!\U8|Equal0~1_combout\ & (((\U8|Add18~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan2~0_combout\,
	datab => \U8|Equal0~1_combout\,
	datac => \U8|LessThan2~1_combout\,
	datad => \U8|Add18~24_combout\,
	combout => \U8|Mux4~5_combout\);

-- Location: LCCOMB_X22_Y8_N14
\U8|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~6_combout\ = (\U8|Add18~2_combout\ & (\U8|Mux4~5_combout\ & ((\U8|Add14~6_combout\) # (!\U8|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~1_combout\,
	datab => \U8|Add18~2_combout\,
	datac => \U8|Add14~6_combout\,
	datad => \U8|Mux4~5_combout\,
	combout => \U8|Mux4~6_combout\);

-- Location: LCCOMB_X22_Y8_N20
\U8|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~7_combout\ = (\U8|Mux4~4_combout\ & ((\U8|Add18~23_combout\) # ((\U8|Mux4~6_combout\) # (!\U5|instruction\(13))))) # (!\U8|Mux4~4_combout\ & (((\U5|instruction\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux4~4_combout\,
	datab => \U8|Add18~23_combout\,
	datac => \U8|Mux4~6_combout\,
	datad => \U5|instruction\(13),
	combout => \U8|Mux4~7_combout\);

-- Location: LCCOMB_X22_Y8_N26
\U8|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~14_combout\ = (\U8|Mux4~13_combout\ & ((\U8|Mux4~7_combout\) # ((\U8|Add17~6_combout\ & \U8|Add18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add17~6_combout\,
	datab => \U8|Add18~6_combout\,
	datac => \U8|Mux4~13_combout\,
	datad => \U8|Mux4~7_combout\,
	combout => \U8|Mux4~14_combout\);

-- Location: LCCOMB_X22_Y8_N0
\U8|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux4~15_combout\ = (\U5|instruction\(14) & (((\U8|Mux4~14_combout\ & !\U5|instruction\(15))))) # (!\U5|instruction\(14) & (\U8|Mux4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U8|Mux4~16_combout\,
	datac => \U8|Mux4~14_combout\,
	datad => \U5|instruction\(15),
	combout => \U8|Mux4~15_combout\);

-- Location: FF_X22_Y8_N1
\U8|alu_result_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(3));

-- Location: LCCOMB_X18_Y9_N12
\U10|data_latch[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[3]~4_combout\ = (\U14|dbfbin_latch~q\ & (\data_out[3]~34_combout\)) # (!\U14|dbfbin_latch~q\ & ((\U8|alu_result_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbin_latch~q\,
	datac => \data_out[3]~34_combout\,
	datad => \U8|alu_result_latch\(3),
	combout => \U10|data_latch[3]~4_combout\);

-- Location: LCCOMB_X18_Y9_N2
\U10|data_latch[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(3) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[3]~4_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch\(3),
	datac => \U10|data_latch[3]~4_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(3));

-- Location: LCCOMB_X24_Y10_N4
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

-- Location: LCCOMB_X23_Y10_N14
\U8|Add2|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[5]~10_combout\ = (\U8|Add2|auto_generated|_~4_combout\ & ((\data_out[4]~41_combout\ & (\U8|Add2|auto_generated|result_int[4]~9\ & VCC)) # (!\data_out[4]~41_combout\ & (!\U8|Add2|auto_generated|result_int[4]~9\)))) # 
-- (!\U8|Add2|auto_generated|_~4_combout\ & ((\data_out[4]~41_combout\ & (!\U8|Add2|auto_generated|result_int[4]~9\)) # (!\data_out[4]~41_combout\ & ((\U8|Add2|auto_generated|result_int[4]~9\) # (GND)))))
-- \U8|Add2|auto_generated|result_int[5]~11\ = CARRY((\U8|Add2|auto_generated|_~4_combout\ & (!\data_out[4]~41_combout\ & !\U8|Add2|auto_generated|result_int[4]~9\)) # (!\U8|Add2|auto_generated|_~4_combout\ & ((!\U8|Add2|auto_generated|result_int[4]~9\) # 
-- (!\data_out[4]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~4_combout\,
	datab => \data_out[4]~41_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[4]~9\,
	combout => \U8|Add2|auto_generated|result_int[5]~10_combout\,
	cout => \U8|Add2|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X21_Y10_N18
\U8|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~2_combout\ = (\U5|instruction\(13) & (((\U8|Add2|auto_generated|result_int[5]~10_combout\) # (\U5|instruction\(12))))) # (!\U5|instruction\(13) & (\U10|data_latch\(4) & ((!\U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U10|data_latch\(4),
	datac => \U8|Add2|auto_generated|result_int[5]~10_combout\,
	datad => \U5|instruction\(12),
	combout => \U8|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y10_N10
\U8|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~3_combout\ = (\U5|instruction\(12) & ((\U8|Mux3~2_combout\ & (\U8|result~12_combout\)) # (!\U8|Mux3~2_combout\ & ((\U8|Add1~8_combout\))))) # (!\U5|instruction\(12) & (((\U8|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U8|result~12_combout\,
	datac => \U8|Add1~8_combout\,
	datad => \U8|Mux3~2_combout\,
	combout => \U8|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y10_N0
\U8|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~7_combout\ = (\U5|instruction\(15) & (!\U5|instruction\(13) & (\U10|data_latch\(4)))) # (!\U5|instruction\(15) & (((\U8|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(15),
	datac => \U10|data_latch\(4),
	datad => \U8|Mux3~3_combout\,
	combout => \U8|Mux3~7_combout\);

-- Location: LCCOMB_X19_Y11_N12
\U8|result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~14_combout\ = (\U5|instruction\(11) & (((\data_out[4]~41_combout\ & \U10|data_latch\(4))))) # (!\U5|instruction\(11) & (\data_out[5]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[5]~48_combout\,
	datac => \data_out[4]~41_combout\,
	datad => \U10|data_latch\(4),
	combout => \U8|result~14_combout\);

-- Location: LCCOMB_X19_Y11_N20
\U8|result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~13_combout\ = (\U5|instruction\(11) & ((!\data_out[4]~41_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(4)) # (\data_out[4]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \U10|data_latch\(4),
	datad => \data_out[4]~41_combout\,
	combout => \U8|result~13_combout\);

-- Location: LCCOMB_X19_Y11_N28
\U8|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~4_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13)) # (\U8|result~13_combout\)))) # (!\U5|instruction\(12) & (\U8|result~14_combout\ & (!\U5|instruction\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~14_combout\,
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U8|result~13_combout\,
	combout => \U8|Mux3~4_combout\);

-- Location: LCCOMB_X21_Y11_N22
\U8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Equal0~2_combout\ = (!\U10|data_latch\(1) & (!\U10|data_latch\(2) & !\U10|data_latch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U10|data_latch\(2),
	datad => \U10|data_latch\(3),
	combout => \U8|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y11_N2
\U8|Add18~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~31_combout\ = (\U10|data_latch\(2) & (!\U8|LessThan1~4_combout\ & (!\U8|LessThan0~2_combout\ & !\U8|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U8|LessThan1~4_combout\,
	datac => \U8|LessThan0~2_combout\,
	datad => \U8|LessThan2~2_combout\,
	combout => \U8|Add18~31_combout\);

-- Location: LCCOMB_X22_Y11_N4
\U8|Add18~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~30_combout\ = (!\U5|instruction\(11) & ((!\U8|LessThan3~1_combout\) # (!\U8|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \U8|LessThan3~0_combout\,
	datad => \U8|LessThan3~1_combout\,
	combout => \U8|Add18~30_combout\);

-- Location: LCCOMB_X22_Y7_N8
\U8|Add18~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~25_combout\ = (\data_out[4]~41_combout\ & (!\U8|Add18~22\ & VCC)) # (!\data_out[4]~41_combout\ & (\U8|Add18~22\ $ (GND)))
-- \U8|Add18~26\ = CARRY((!\data_out[4]~41_combout\ & !\U8|Add18~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~41_combout\,
	datad => VCC,
	cin => \U8|Add18~22\,
	combout => \U8|Add18~25_combout\,
	cout => \U8|Add18~26\);

-- Location: LCCOMB_X21_Y11_N4
\U8|Add18~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~27_combout\ = (\U10|data_latch\(3) & (((!\U8|LessThan0~2_combout\)))) # (!\U10|data_latch\(3) & (!\U8|LessThan1~4_combout\ & (\U10|data_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan1~4_combout\,
	datab => \U10|data_latch\(3),
	datac => \U10|data_latch\(2),
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add18~27_combout\);

-- Location: LCCOMB_X21_Y11_N6
\U8|Add18~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~28_combout\ = (\U8|Equal0~0_combout\) # ((\U10|data_latch\(1) & (\U8|Equal0~1_combout\ & !\U8|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datab => \U8|Equal0~1_combout\,
	datac => \U8|Equal0~0_combout\,
	datad => \U8|LessThan2~2_combout\,
	combout => \U8|Add18~28_combout\);

-- Location: LCCOMB_X21_Y11_N20
\U8|Add18~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~29_combout\ = (\U5|instruction\(11) & (\U8|Add18~25_combout\)) # (!\U5|instruction\(11) & (((\U8|Add18~27_combout\) # (\U8|Add18~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U8|Add18~25_combout\,
	datac => \U8|Add18~27_combout\,
	datad => \U8|Add18~28_combout\,
	combout => \U8|Add18~29_combout\);

-- Location: LCCOMB_X22_Y11_N8
\U8|Add18~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~32_combout\ = (\U8|Add18~29_combout\) # ((\U8|Add18~30_combout\ & ((\U8|Equal0~2_combout\) # (\U8|Add18~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~2_combout\,
	datab => \U8|Add18~31_combout\,
	datac => \U8|Add18~30_combout\,
	datad => \U8|Add18~29_combout\,
	combout => \U8|Add18~32_combout\);

-- Location: LCCOMB_X25_Y9_N20
\U8|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~10_combout\ = (\data_out[3]~34_combout\ & (!\U8|Add5~9\)) # (!\data_out[3]~34_combout\ & ((\U8|Add5~9\) # (GND)))
-- \U8|Add5~11\ = CARRY((!\U8|Add5~9\) # (!\data_out[3]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	datad => VCC,
	cin => \U8|Add5~9\,
	combout => \U8|Add5~10_combout\,
	cout => \U8|Add5~11\);

-- Location: LCCOMB_X25_Y9_N30
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

-- Location: LCCOMB_X25_Y9_N8
\U8|Add6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~9_combout\ = ((\U8|Add5~12_combout\ $ (\data_out[2]~27_combout\ $ (!\U8|Add6~7\)))) # (GND)
-- \U8|Add6~10\ = CARRY((\U8|Add5~12_combout\ & ((\data_out[2]~27_combout\) # (!\U8|Add6~7\))) # (!\U8|Add5~12_combout\ & (\data_out[2]~27_combout\ & !\U8|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~12_combout\,
	datab => \data_out[2]~27_combout\,
	datad => VCC,
	cin => \U8|Add6~7\,
	combout => \U8|Add6~9_combout\,
	cout => \U8|Add6~10\);

-- Location: LCCOMB_X24_Y9_N22
\U8|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~16_combout\ = (\U10|data_latch\(2) & (((\U8|Add6~9_combout\)))) # (!\U10|data_latch\(2) & (\U8|Add5~10_combout\ & (\U10|data_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~10_combout\,
	datab => \U10|data_latch\(1),
	datac => \U8|Add6~9_combout\,
	datad => \U10|data_latch\(2),
	combout => \U8|Add6~16_combout\);

-- Location: LCCOMB_X24_Y11_N18
\U8|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~2_combout\ = (\data_out[1]~20_combout\ & ((\U8|Add6~16_combout\ & (\U8|Add7~1\ & VCC)) # (!\U8|Add6~16_combout\ & (!\U8|Add7~1\)))) # (!\data_out[1]~20_combout\ & ((\U8|Add6~16_combout\ & (!\U8|Add7~1\)) # (!\U8|Add6~16_combout\ & ((\U8|Add7~1\) 
-- # (GND)))))
-- \U8|Add7~3\ = CARRY((\data_out[1]~20_combout\ & (!\U8|Add6~16_combout\ & !\U8|Add7~1\)) # (!\data_out[1]~20_combout\ & ((!\U8|Add7~1\) # (!\U8|Add6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~20_combout\,
	datab => \U8|Add6~16_combout\,
	datad => VCC,
	cin => \U8|Add7~1\,
	combout => \U8|Add7~2_combout\,
	cout => \U8|Add7~3\);

-- Location: LCCOMB_X23_Y11_N20
\U8|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~4_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3) & ((\U8|Add7~2_combout\))) # (!\U10|data_latch\(3) & (\U8|Add6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(3),
	datac => \U8|Add6~16_combout\,
	datad => \U8|Add7~2_combout\,
	combout => \U8|Add7~4_combout\);

-- Location: LCCOMB_X23_Y11_N26
\U8|Add7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~5_combout\ = (\U8|Add7~4_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(4) $ (\data_out[4]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(4),
	datab => \U5|instruction\(11),
	datac => \data_out[4]~41_combout\,
	datad => \U8|Add7~4_combout\,
	combout => \U8|Add7~5_combout\);

-- Location: LCCOMB_X22_Y11_N6
\U8|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~5_combout\ = (\U8|Mux3~4_combout\ & (((\U8|Add18~32_combout\)) # (!\U5|instruction\(13)))) # (!\U8|Mux3~4_combout\ & (\U5|instruction\(13) & ((\U8|Add7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux3~4_combout\,
	datab => \U5|instruction\(13),
	datac => \U8|Add18~32_combout\,
	datad => \U8|Add7~5_combout\,
	combout => \U8|Mux3~5_combout\);

-- Location: LCCOMB_X22_Y11_N22
\U8|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux3~6_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux3~5_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U8|Mux3~7_combout\,
	datac => \U5|instruction\(14),
	datad => \U8|Mux3~5_combout\,
	combout => \U8|Mux3~6_combout\);

-- Location: FF_X22_Y11_N23
\U8|alu_result_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(4));

-- Location: LCCOMB_X16_Y8_N0
\U10|data_latch[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[4]~5_combout\ = (\U14|dbfbin_latch~q\ & (\data_out[4]~41_combout\)) # (!\U14|dbfbin_latch~q\ & ((\U8|alu_result_latch\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbin_latch~q\,
	datac => \data_out[4]~41_combout\,
	datad => \U8|alu_result_latch\(4),
	combout => \U10|data_latch[4]~5_combout\);

-- Location: LCCOMB_X16_Y8_N16
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

-- Location: LCCOMB_X21_Y10_N4
\U8|Add2|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|_~4_combout\ = \U5|instruction\(11) $ (\U10|data_latch\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datad => \U10|data_latch\(4),
	combout => \U8|Add2|auto_generated|_~4_combout\);

-- Location: LCCOMB_X23_Y10_N16
\U8|Add2|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[6]~12_combout\ = ((\data_out[5]~48_combout\ $ (\U8|Add2|auto_generated|_~5_combout\ $ (!\U8|Add2|auto_generated|result_int[5]~11\)))) # (GND)
-- \U8|Add2|auto_generated|result_int[6]~13\ = CARRY((\data_out[5]~48_combout\ & ((\U8|Add2|auto_generated|_~5_combout\) # (!\U8|Add2|auto_generated|result_int[5]~11\))) # (!\data_out[5]~48_combout\ & (\U8|Add2|auto_generated|_~5_combout\ & 
-- !\U8|Add2|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~48_combout\,
	datab => \U8|Add2|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[5]~11\,
	combout => \U8|Add2|auto_generated|result_int[6]~12_combout\,
	cout => \U8|Add2|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X22_Y10_N28
\U8|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~2_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12)) # (\U8|Add2|auto_generated|result_int[6]~12_combout\)))) # (!\U5|instruction\(13) & (\U10|data_latch\(5) & (!\U5|instruction\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(5),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U8|Add2|auto_generated|result_int[6]~12_combout\,
	combout => \U8|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y10_N10
\U8|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~10_combout\ = (\data_out[5]~48_combout\ & ((\U5|instruction\(11) & (\U8|Add1~9\ & VCC)) # (!\U5|instruction\(11) & (!\U8|Add1~9\)))) # (!\data_out[5]~48_combout\ & ((\U5|instruction\(11) & (!\U8|Add1~9\)) # (!\U5|instruction\(11) & ((\U8|Add1~9\) 
-- # (GND)))))
-- \U8|Add1~11\ = CARRY((\data_out[5]~48_combout\ & (!\U5|instruction\(11) & !\U8|Add1~9\)) # (!\data_out[5]~48_combout\ & ((!\U8|Add1~9\) # (!\U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~48_combout\,
	datab => \U5|instruction\(11),
	datad => VCC,
	cin => \U8|Add1~9\,
	combout => \U8|Add1~10_combout\,
	cout => \U8|Add1~11\);

-- Location: LCCOMB_X22_Y10_N16
\U8|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~3_combout\ = (\U8|Mux2~2_combout\ & ((\U8|Mux0~10_combout\) # ((!\U5|instruction\(12))))) # (!\U8|Mux2~2_combout\ & (((\U5|instruction\(12) & \U8|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~10_combout\,
	datab => \U8|Mux2~2_combout\,
	datac => \U5|instruction\(12),
	datad => \U8|Add1~10_combout\,
	combout => \U8|Mux2~3_combout\);

-- Location: LCCOMB_X22_Y10_N20
\U8|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~7_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(5) & ((!\U5|instruction\(13))))) # (!\U5|instruction\(15) & (((\U8|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(5),
	datab => \U8|Mux2~3_combout\,
	datac => \U5|instruction\(15),
	datad => \U5|instruction\(13),
	combout => \U8|Mux2~7_combout\);

-- Location: LCCOMB_X24_Y10_N8
\U8|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~12_combout\ = (\U5|instruction\(11) & (\U10|data_latch\(5) & (\data_out[5]~48_combout\))) # (!\U5|instruction\(11) & (((\data_out[6]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(5),
	datab => \data_out[5]~48_combout\,
	datac => \U5|instruction\(11),
	datad => \data_out[6]~55_combout\,
	combout => \U8|Mux0~12_combout\);

-- Location: LCCOMB_X24_Y10_N18
\U8|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~11_combout\ = (\U5|instruction\(11) & (!\data_out[5]~48_combout\)) # (!\U5|instruction\(11) & ((\data_out[5]~48_combout\) # (\U10|data_latch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datac => \data_out[5]~48_combout\,
	datad => \U10|data_latch\(5),
	combout => \U8|Mux0~11_combout\);

-- Location: LCCOMB_X24_Y10_N2
\U8|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~4_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & ((\U8|Mux0~11_combout\))) # (!\U5|instruction\(12) & (\U8|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~12_combout\,
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U8|Mux0~11_combout\,
	combout => \U8|Mux2~4_combout\);

-- Location: LCCOMB_X22_Y7_N10
\U8|Add18~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~36_combout\ = (\data_out[5]~48_combout\ & ((\U8|Add18~26\) # (GND))) # (!\data_out[5]~48_combout\ & (!\U8|Add18~26\))
-- \U8|Add18~37\ = CARRY((\data_out[5]~48_combout\) # (!\U8|Add18~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~48_combout\,
	datad => VCC,
	cin => \U8|Add18~26\,
	combout => \U8|Add18~36_combout\,
	cout => \U8|Add18~37\);

-- Location: LCCOMB_X21_Y11_N8
\U8|Add18~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~33_combout\ = (\U10|data_latch\(3)) # ((\U5|instruction\(11)) # ((\U10|data_latch\(2) & \U8|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(2),
	datab => \U10|data_latch\(3),
	datac => \U5|instruction\(11),
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add18~33_combout\);

-- Location: LCCOMB_X21_Y11_N2
\U8|Add18~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~34_combout\ = (\U10|data_latch\(2)) # ((\U8|Equal0~2_combout\ & ((!\U8|LessThan2~1_combout\) # (!\U8|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~2_combout\,
	datab => \U10|data_latch\(2),
	datac => \U8|LessThan2~0_combout\,
	datad => \U8|LessThan2~1_combout\,
	combout => \U8|Add18~34_combout\);

-- Location: LCCOMB_X21_Y11_N12
\U8|Add18~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~35_combout\ = (!\U8|Add18~33_combout\ & ((\U8|Add18~34_combout\) # ((!\U8|LessThan1~4_combout\ & \U10|data_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan1~4_combout\,
	datab => \U10|data_latch\(1),
	datac => \U8|Add18~33_combout\,
	datad => \U8|Add18~34_combout\,
	combout => \U8|Add18~35_combout\);

-- Location: LCCOMB_X21_Y11_N26
\U8|Add18~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~38_combout\ = (\U8|Add18~35_combout\) # ((\U5|instruction\(11) & ((\U8|Add18~36_combout\))) # (!\U5|instruction\(11) & (\U8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U8|Equal0~0_combout\,
	datac => \U8|Add18~36_combout\,
	datad => \U8|Add18~35_combout\,
	combout => \U8|Add18~38_combout\);

-- Location: LCCOMB_X25_Y9_N22
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

-- Location: LCCOMB_X25_Y9_N24
\U8|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add5~15_combout\ = (\U10|data_latch\(1) & \U8|Add5~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(1),
	datac => \U8|Add5~13_combout\,
	combout => \U8|Add5~15_combout\);

-- Location: LCCOMB_X25_Y9_N10
\U8|Add6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~11_combout\ = (\data_out[3]~34_combout\ & ((\U8|Add5~15_combout\ & (\U8|Add6~10\ & VCC)) # (!\U8|Add5~15_combout\ & (!\U8|Add6~10\)))) # (!\data_out[3]~34_combout\ & ((\U8|Add5~15_combout\ & (!\U8|Add6~10\)) # (!\U8|Add5~15_combout\ & 
-- ((\U8|Add6~10\) # (GND)))))
-- \U8|Add6~12\ = CARRY((\data_out[3]~34_combout\ & (!\U8|Add5~15_combout\ & !\U8|Add6~10\)) # (!\data_out[3]~34_combout\ & ((!\U8|Add6~10\) # (!\U8|Add5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	datab => \U8|Add5~15_combout\,
	datad => VCC,
	cin => \U8|Add6~10\,
	combout => \U8|Add6~11_combout\,
	cout => \U8|Add6~12\);

-- Location: LCCOMB_X25_Y9_N26
\U8|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~17_combout\ = (\U10|data_latch\(2) & (((\U8|Add6~11_combout\)))) # (!\U10|data_latch\(2) & (\U8|Add5~13_combout\ & (\U10|data_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add5~13_combout\,
	datab => \U10|data_latch\(2),
	datac => \U10|data_latch\(1),
	datad => \U8|Add6~11_combout\,
	combout => \U8|Add6~17_combout\);

-- Location: LCCOMB_X24_Y11_N20
\U8|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~6_combout\ = ((\data_out[2]~27_combout\ $ (\U8|Add6~17_combout\ $ (!\U8|Add7~3\)))) # (GND)
-- \U8|Add7~7\ = CARRY((\data_out[2]~27_combout\ & ((\U8|Add6~17_combout\) # (!\U8|Add7~3\))) # (!\data_out[2]~27_combout\ & (\U8|Add6~17_combout\ & !\U8|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datab => \U8|Add6~17_combout\,
	datad => VCC,
	cin => \U8|Add7~3\,
	combout => \U8|Add7~6_combout\,
	cout => \U8|Add7~7\);

-- Location: LCCOMB_X24_Y11_N12
\U8|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~8_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3) & ((\U8|Add7~6_combout\))) # (!\U10|data_latch\(3) & (\U8|Add6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(3),
	datac => \U8|Add6~17_combout\,
	datad => \U8|Add7~6_combout\,
	combout => \U8|Add7~8_combout\);

-- Location: LCCOMB_X24_Y11_N2
\U8|Add7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~9_combout\ = (\U8|Add7~8_combout\) # ((!\U5|instruction\(11) & (\data_out[5]~48_combout\ $ (\U10|data_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[5]~48_combout\,
	datac => \U10|data_latch\(5),
	datad => \U8|Add7~8_combout\,
	combout => \U8|Add7~9_combout\);

-- Location: LCCOMB_X24_Y11_N28
\U8|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~5_combout\ = (\U5|instruction\(13) & ((\U8|Mux2~4_combout\ & (\U8|Add18~38_combout\)) # (!\U8|Mux2~4_combout\ & ((\U8|Add7~9_combout\))))) # (!\U5|instruction\(13) & (\U8|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U8|Mux2~4_combout\,
	datac => \U8|Add18~38_combout\,
	datad => \U8|Add7~9_combout\,
	combout => \U8|Mux2~5_combout\);

-- Location: LCCOMB_X24_Y11_N4
\U8|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux2~6_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux2~5_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux2~7_combout\,
	datad => \U8|Mux2~5_combout\,
	combout => \U8|Mux2~6_combout\);

-- Location: FF_X24_Y11_N5
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

-- Location: LCCOMB_X16_Y10_N22
\U10|data_latch[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[5]~6_combout\ = (\U14|dbfbin_latch~q\ & (\data_out[5]~48_combout\)) # (!\U14|dbfbin_latch~q\ & ((\U8|alu_result_latch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbin_latch~q\,
	datac => \data_out[5]~48_combout\,
	datad => \U8|alu_result_latch\(5),
	combout => \U10|data_latch[5]~6_combout\);

-- Location: LCCOMB_X16_Y10_N6
\U10|data_latch[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(5) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[5]~6_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch[7]~1clkctrl_outclk\,
	datab => \U10|data_latch\(5),
	datad => \U10|data_latch[5]~6_combout\,
	combout => \U10|data_latch\(5));

-- Location: LCCOMB_X23_Y10_N24
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

-- Location: LCCOMB_X23_Y10_N18
\U8|Add2|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[7]~14_combout\ = (\U8|Add2|auto_generated|_~6_combout\ & ((\data_out[6]~55_combout\ & (\U8|Add2|auto_generated|result_int[6]~13\ & VCC)) # (!\data_out[6]~55_combout\ & (!\U8|Add2|auto_generated|result_int[6]~13\)))) # 
-- (!\U8|Add2|auto_generated|_~6_combout\ & ((\data_out[6]~55_combout\ & (!\U8|Add2|auto_generated|result_int[6]~13\)) # (!\data_out[6]~55_combout\ & ((\U8|Add2|auto_generated|result_int[6]~13\) # (GND)))))
-- \U8|Add2|auto_generated|result_int[7]~15\ = CARRY((\U8|Add2|auto_generated|_~6_combout\ & (!\data_out[6]~55_combout\ & !\U8|Add2|auto_generated|result_int[6]~13\)) # (!\U8|Add2|auto_generated|_~6_combout\ & ((!\U8|Add2|auto_generated|result_int[6]~13\) # 
-- (!\data_out[6]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|_~6_combout\,
	datab => \data_out[6]~55_combout\,
	datad => VCC,
	cin => \U8|Add2|auto_generated|result_int[6]~13\,
	combout => \U8|Add2|auto_generated|result_int[7]~14_combout\,
	cout => \U8|Add2|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X22_Y10_N22
\U8|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~2_combout\ = (\U5|instruction\(12) & (\U5|instruction\(13))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & ((\U8|Add2|auto_generated|result_int[7]~14_combout\))) # (!\U5|instruction\(13) & (\U10|data_latch\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(13),
	datac => \U10|data_latch\(6),
	datad => \U8|Add2|auto_generated|result_int[7]~14_combout\,
	combout => \U8|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y10_N24
\U8|result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~15_combout\ = (\U5|instruction\(11) & (\data_out[5]~48_combout\)) # (!\U5|instruction\(11) & ((\U10|data_latch\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~48_combout\,
	datab => \U5|instruction\(11),
	datac => \U10|data_latch\(6),
	combout => \U8|result~15_combout\);

-- Location: LCCOMB_X22_Y10_N12
\U8|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~12_combout\ = ((\U5|instruction\(11) $ (\data_out[6]~55_combout\ $ (!\U8|Add1~11\)))) # (GND)
-- \U8|Add1~13\ = CARRY((\U5|instruction\(11) & ((\data_out[6]~55_combout\) # (!\U8|Add1~11\))) # (!\U5|instruction\(11) & (\data_out[6]~55_combout\ & !\U8|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \data_out[6]~55_combout\,
	datad => VCC,
	cin => \U8|Add1~11\,
	combout => \U8|Add1~12_combout\,
	cout => \U8|Add1~13\);

-- Location: LCCOMB_X22_Y10_N18
\U8|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~3_combout\ = (\U8|Mux1~2_combout\ & ((\U8|result~15_combout\) # ((!\U5|instruction\(12))))) # (!\U8|Mux1~2_combout\ & (((\U5|instruction\(12) & \U8|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux1~2_combout\,
	datab => \U8|result~15_combout\,
	datac => \U5|instruction\(12),
	datad => \U8|Add1~12_combout\,
	combout => \U8|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y10_N26
\U8|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~7_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(6) & (!\U5|instruction\(13)))) # (!\U5|instruction\(15) & (((\U8|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(6),
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(15),
	datad => \U8|Mux1~3_combout\,
	combout => \U8|Mux1~7_combout\);

-- Location: LCCOMB_X23_Y10_N0
\U8|result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~17_combout\ = (\U5|instruction\(11) & (\U10|data_latch\(6) & (\data_out[6]~55_combout\))) # (!\U5|instruction\(11) & (((\data_out[7]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(6),
	datab => \U5|instruction\(11),
	datac => \data_out[6]~55_combout\,
	datad => \data_out[7]~62_combout\,
	combout => \U8|result~17_combout\);

-- Location: LCCOMB_X24_Y10_N24
\U8|result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|result~16_combout\ = (\U5|instruction\(11) & ((!\data_out[6]~55_combout\))) # (!\U5|instruction\(11) & ((\U10|data_latch\(6)) # (\data_out[6]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(6),
	datad => \data_out[6]~55_combout\,
	combout => \U8|result~16_combout\);

-- Location: LCCOMB_X24_Y10_N22
\U8|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~4_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U5|instruction\(12) & ((\U8|result~16_combout\))) # (!\U5|instruction\(12) & (\U8|result~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|result~17_combout\,
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(12),
	datad => \U8|result~16_combout\,
	combout => \U8|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y7_N12
\U8|Add18~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~41_combout\ = (\data_out[6]~55_combout\ & (!\U8|Add18~37\ & VCC)) # (!\data_out[6]~55_combout\ & (\U8|Add18~37\ $ (GND)))
-- \U8|Add18~42\ = CARRY((!\data_out[6]~55_combout\ & !\U8|Add18~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~55_combout\,
	datad => VCC,
	cin => \U8|Add18~37\,
	combout => \U8|Add18~41_combout\,
	cout => \U8|Add18~42\);

-- Location: LCCOMB_X21_Y11_N28
\U8|Add18~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~39_combout\ = (\U8|Equal0~1_combout\ & ((\U10|data_latch\(1) & ((!\U8|LessThan0~2_combout\))) # (!\U10|data_latch\(1) & (!\U8|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|LessThan1~4_combout\,
	datab => \U8|Equal0~1_combout\,
	datac => \U10|data_latch\(1),
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add18~39_combout\);

-- Location: LCCOMB_X21_Y11_N18
\U8|Add18~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~40_combout\ = (!\U5|instruction\(11) & ((\U8|Equal0~0_combout\) # ((!\U10|data_latch\(3) & \U8|Add18~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(3),
	datab => \U8|Equal0~0_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add18~39_combout\,
	combout => \U8|Add18~40_combout\);

-- Location: LCCOMB_X21_Y11_N16
\U8|Add18~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~43_combout\ = (\U8|Add18~40_combout\) # ((\U8|Add18~41_combout\ & \U5|instruction\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~41_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add18~40_combout\,
	combout => \U8|Add18~43_combout\);

-- Location: LCCOMB_X25_Y9_N12
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

-- Location: LCCOMB_X24_Y11_N26
\U8|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add6~15_combout\ = (\U8|Add6~13_combout\ & \U10|data_latch\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U8|Add6~13_combout\,
	datad => \U10|data_latch\(2),
	combout => \U8|Add6~15_combout\);

-- Location: LCCOMB_X24_Y11_N22
\U8|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~10_combout\ = (\U8|Add6~15_combout\ & ((\data_out[3]~34_combout\ & (\U8|Add7~7\ & VCC)) # (!\data_out[3]~34_combout\ & (!\U8|Add7~7\)))) # (!\U8|Add6~15_combout\ & ((\data_out[3]~34_combout\ & (!\U8|Add7~7\)) # (!\data_out[3]~34_combout\ & 
-- ((\U8|Add7~7\) # (GND)))))
-- \U8|Add7~11\ = CARRY((\U8|Add6~15_combout\ & (!\data_out[3]~34_combout\ & !\U8|Add7~7\)) # (!\U8|Add6~15_combout\ & ((!\U8|Add7~7\) # (!\data_out[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~15_combout\,
	datab => \data_out[3]~34_combout\,
	datad => VCC,
	cin => \U8|Add7~7\,
	combout => \U8|Add7~10_combout\,
	cout => \U8|Add7~11\);

-- Location: LCCOMB_X24_Y11_N0
\U8|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~12_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3) & ((\U8|Add7~10_combout\))) # (!\U10|data_latch\(3) & (\U8|Add6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add6~15_combout\,
	datab => \U10|data_latch\(3),
	datac => \U8|Add7~10_combout\,
	datad => \U5|instruction\(11),
	combout => \U8|Add7~12_combout\);

-- Location: LCCOMB_X24_Y11_N6
\U8|Add7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~13_combout\ = (\U8|Add7~12_combout\) # ((!\U5|instruction\(11) & (\U10|data_latch\(6) $ (\data_out[6]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datab => \U10|data_latch\(6),
	datac => \data_out[6]~55_combout\,
	datad => \U8|Add7~12_combout\,
	combout => \U8|Add7~13_combout\);

-- Location: LCCOMB_X24_Y11_N10
\U8|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~5_combout\ = (\U5|instruction\(13) & ((\U8|Mux1~4_combout\ & (\U8|Add18~43_combout\)) # (!\U8|Mux1~4_combout\ & ((\U8|Add7~13_combout\))))) # (!\U5|instruction\(13) & (\U8|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U8|Mux1~4_combout\,
	datac => \U8|Add18~43_combout\,
	datad => \U8|Add7~13_combout\,
	combout => \U8|Mux1~5_combout\);

-- Location: LCCOMB_X24_Y11_N30
\U8|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux1~6_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux1~5_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(14),
	datab => \U5|instruction\(15),
	datac => \U8|Mux1~7_combout\,
	datad => \U8|Mux1~5_combout\,
	combout => \U8|Mux1~6_combout\);

-- Location: FF_X24_Y11_N31
\U8|alu_result_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(6));

-- Location: LCCOMB_X16_Y9_N20
\U10|data_latch[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[6]~7_combout\ = (\U14|dbfbin_latch~q\ & ((\data_out[6]~55_combout\))) # (!\U14|dbfbin_latch~q\ & (\U8|alu_result_latch\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbin_latch~q\,
	datac => \U8|alu_result_latch\(6),
	datad => \data_out[6]~55_combout\,
	combout => \U10|data_latch[6]~7_combout\);

-- Location: LCCOMB_X16_Y9_N10
\U10|data_latch[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(6) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch[6]~7_combout\))) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(6),
	datac => \U10|data_latch[6]~7_combout\,
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(6));

-- Location: LCCOMB_X23_Y10_N22
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

-- Location: LCCOMB_X23_Y10_N20
\U8|Add2|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add2|auto_generated|result_int[8]~16_combout\ = \U8|Add2|auto_generated|_~7_combout\ $ (\U8|Add2|auto_generated|result_int[7]~15\ $ (!\data_out[7]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U8|Add2|auto_generated|_~7_combout\,
	datad => \data_out[7]~62_combout\,
	cin => \U8|Add2|auto_generated|result_int[7]~15\,
	combout => \U8|Add2|auto_generated|result_int[8]~16_combout\);

-- Location: LCCOMB_X23_Y11_N24
\U8|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~13_combout\ = (\U5|instruction\(12) & (((\U5|instruction\(13))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13) & (\U8|Add2|auto_generated|result_int[8]~16_combout\)) # (!\U5|instruction\(13) & ((\U10|data_latch\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add2|auto_generated|result_int[8]~16_combout\,
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(13),
	datad => \U10|data_latch\(7),
	combout => \U8|Mux0~13_combout\);

-- Location: LCCOMB_X22_Y10_N14
\U8|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add1~14_combout\ = \U5|instruction\(11) $ (\U8|Add1~13\ $ (\data_out[7]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datad => \data_out[7]~62_combout\,
	cin => \U8|Add1~13\,
	combout => \U8|Add1~14_combout\);

-- Location: LCCOMB_X23_Y11_N16
\U8|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~15_combout\ = (\U8|Mux0~13_combout\ & ((\U8|Mux0~14_combout\) # ((!\U5|instruction\(12))))) # (!\U8|Mux0~13_combout\ & (((\U5|instruction\(12) & \U8|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Mux0~14_combout\,
	datab => \U8|Mux0~13_combout\,
	datac => \U5|instruction\(12),
	datad => \U8|Add1~14_combout\,
	combout => \U8|Mux0~15_combout\);

-- Location: LCCOMB_X23_Y11_N4
\U8|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~20_combout\ = (\U5|instruction\(15) & (\U10|data_latch\(7) & (!\U5|instruction\(13)))) # (!\U5|instruction\(15) & (((\U8|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U10|data_latch\(7),
	datac => \U5|instruction\(13),
	datad => \U8|Mux0~15_combout\,
	combout => \U8|Mux0~20_combout\);

-- Location: LCCOMB_X22_Y7_N14
\U8|Add18~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~44_combout\ = \U8|Add18~42\ $ (!\data_out[7]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data_out[7]~62_combout\,
	cin => \U8|Add18~42\,
	combout => \U8|Add18~44_combout\);

-- Location: LCCOMB_X23_Y11_N2
\U8|Add18~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~46_combout\ = (\U8|Equal0~0_combout\) # ((!\U10|data_latch\(1) & (\U8|Equal0~1_combout\ & !\U8|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Equal0~0_combout\,
	datab => \U10|data_latch\(1),
	datac => \U8|Equal0~1_combout\,
	datad => \U8|LessThan0~2_combout\,
	combout => \U8|Add18~46_combout\);

-- Location: LCCOMB_X23_Y11_N12
\U8|Add18~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add18~47_combout\ = (\U5|instruction\(11) & (\U8|Add18~44_combout\)) # (!\U5|instruction\(11) & ((\U8|Add18~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~44_combout\,
	datac => \U5|instruction\(11),
	datad => \U8|Add18~46_combout\,
	combout => \U8|Add18~47_combout\);

-- Location: LCCOMB_X23_Y11_N18
\U8|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~16_combout\ = (\U5|instruction\(11) & (\data_out[7]~62_combout\ $ (!\U10|data_latch\(7)))) # (!\U5|instruction\(11) & (\data_out[7]~62_combout\ & !\U10|data_latch\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(11),
	datac => \data_out[7]~62_combout\,
	datad => \U10|data_latch\(7),
	combout => \U8|Mux0~16_combout\);

-- Location: LCCOMB_X23_Y11_N0
\U8|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~17_combout\ = (\U5|instruction\(13) & (((\U5|instruction\(12))))) # (!\U5|instruction\(13) & ((\U10|data_latch\(7) & (\U5|instruction\(12) $ (\U8|Mux0~16_combout\))) # (!\U10|data_latch\(7) & (\U5|instruction\(12) & \U8|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U10|data_latch\(7),
	datac => \U5|instruction\(12),
	datad => \U8|Mux0~16_combout\,
	combout => \U8|Mux0~17_combout\);

-- Location: LCCOMB_X23_Y11_N22
\U8|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~16_combout\ = (\U5|instruction\(11) & ((\U10|data_latch\(3)))) # (!\U5|instruction\(11) & (!\U10|data_latch\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|data_latch\(7),
	datab => \U10|data_latch\(3),
	datad => \U5|instruction\(11),
	combout => \U8|Add7~16_combout\);

-- Location: LCCOMB_X24_Y11_N24
\U8|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~14_combout\ = !\U8|Add7~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U8|Add7~11\,
	combout => \U8|Add7~14_combout\);

-- Location: LCCOMB_X23_Y11_N28
\U8|Add7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Add7~17_combout\ = (\U5|instruction\(11) & (\U8|Add7~16_combout\ & ((\U8|Add7~14_combout\)))) # (!\U5|instruction\(11) & (\U8|Add7~16_combout\ $ ((!\data_out[7]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add7~16_combout\,
	datab => \U5|instruction\(11),
	datac => \data_out[7]~62_combout\,
	datad => \U8|Add7~14_combout\,
	combout => \U8|Add7~17_combout\);

-- Location: LCCOMB_X23_Y11_N6
\U8|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~18_combout\ = (\U8|Mux0~17_combout\ & ((\U8|Add18~47_combout\) # ((!\U5|instruction\(13))))) # (!\U8|Mux0~17_combout\ & (((\U5|instruction\(13) & \U8|Add7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U8|Add18~47_combout\,
	datab => \U8|Mux0~17_combout\,
	datac => \U5|instruction\(13),
	datad => \U8|Add7~17_combout\,
	combout => \U8|Mux0~18_combout\);

-- Location: LCCOMB_X23_Y11_N8
\U8|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U8|Mux0~19_combout\ = (\U5|instruction\(14) & (!\U5|instruction\(15) & ((\U8|Mux0~18_combout\)))) # (!\U5|instruction\(14) & (((\U8|Mux0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(14),
	datac => \U8|Mux0~20_combout\,
	datad => \U8|Mux0~18_combout\,
	combout => \U8|Mux0~19_combout\);

-- Location: FF_X23_Y11_N9
\U8|alu_result_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enalu_latch~q\,
	d => \U8|Mux0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|alu_result_latch\(7));

-- Location: LCCOMB_X14_Y9_N28
\U10|data_latch[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch[7]~8_combout\ = (\U14|dbfbin_latch~q\ & (\data_out[7]~62_combout\)) # (!\U14|dbfbin_latch~q\ & ((\U8|alu_result_latch\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[7]~62_combout\,
	datab => \U14|dbfbin_latch~q\,
	datad => \U8|alu_result_latch\(7),
	combout => \U10|data_latch[7]~8_combout\);

-- Location: LCCOMB_X14_Y9_N16
\U10|data_latch[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U10|data_latch\(7) = (GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & (\U10|data_latch[7]~8_combout\)) # (!GLOBAL(\U10|data_latch[7]~1clkctrl_outclk\) & ((\U10|data_latch\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U10|data_latch[7]~8_combout\,
	datac => \U10|data_latch\(7),
	datad => \U10|data_latch[7]~1clkctrl_outclk\,
	combout => \U10|data_latch\(7));

-- Location: LCCOMB_X14_Y9_N10
\data_out[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~59_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(7),
	combout => \data_out[7]~59_combout\);

-- Location: LCCOMB_X14_Y9_N30
\data_out[7]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~62_combout\ = (\data_out[7]~58_combout\) # ((\data_out[7]~59_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[7]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[7]~58_combout\,
	datac => \data_out[7]~61_combout\,
	datad => \data_out[7]~59_combout\,
	combout => \data_out[7]~62_combout\);

-- Location: LCCOMB_X18_Y9_N6
\data_out[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~14_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|enrom_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \data_out[1]~14_combout\);

-- Location: LCCOMB_X18_Y9_N26
\data_out[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~16_combout\ = (\data_out[1]~15_combout\) # ((\data_out[1]~14_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~15_combout\,
	datab => \U14|ramrd_latch~q\,
	datac => \U3|ram_data~147_combout\,
	datad => \data_out[1]~14_combout\,
	combout => \data_out[1]~16_combout\);

-- Location: FF_X17_Y9_N23
\U12|grd_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[1]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(1));

-- Location: LCCOMB_X17_Y9_N28
\U12|grc_latch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[1]~feeder_combout\ = \data_out[1]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[1]~20_combout\,
	combout => \U12|grc_latch[1]~feeder_combout\);

-- Location: FF_X17_Y9_N29
\U12|grc_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	d => \U12|grc_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(1));

-- Location: LCCOMB_X17_Y9_N22
\data_out[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~18_combout\ = (\data_out[6]~10_combout\ & (\data_out[6]~63_combout\)) # (!\data_out[6]~10_combout\ & ((\data_out[6]~63_combout\ & ((\U12|grc_latch\(1)))) # (!\data_out[6]~63_combout\ & (\U12|grd_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \data_out[6]~63_combout\,
	datac => \U12|grd_latch\(1),
	datad => \U12|grc_latch\(1),
	combout => \data_out[1]~18_combout\);

-- Location: FF_X18_Y10_N31
\U12|gra_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	asdata => \data_out[1]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(1));

-- Location: FF_X21_Y9_N5
\U12|grb_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[1]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(1));

-- Location: LCCOMB_X17_Y9_N6
\data_out[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~19_combout\ = (\data_out[1]~18_combout\ & (((\U12|gra_latch\(1))) # (!\data_out[6]~10_combout\))) # (!\data_out[1]~18_combout\ & (\data_out[6]~10_combout\ & ((\U12|grb_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~18_combout\,
	datab => \data_out[6]~10_combout\,
	datac => \U12|gra_latch\(1),
	datad => \U12|grb_latch\(1),
	combout => \data_out[1]~19_combout\);

-- Location: LCCOMB_X18_Y9_N18
\data_out[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~17_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(1),
	combout => \data_out[1]~17_combout\);

-- Location: LCCOMB_X18_Y9_N10
\data_out[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~20_combout\ = (\data_out[1]~16_combout\) # ((\data_out[1]~17_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[1]~16_combout\,
	datab => \U12|gr_data_out[7]~0_combout\,
	datac => \data_out[1]~19_combout\,
	datad => \data_out[1]~17_combout\,
	combout => \data_out[1]~20_combout\);

-- Location: LCCOMB_X19_Y8_N0
\data_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~4_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|enrom_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \data_out[0]~4_combout\);

-- Location: LCCOMB_X18_Y6_N26
\U3|ram_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~80_combout\ = (\rtl~0_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datac => \U3|ram_data~80_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~80_combout\);

-- Location: LCCOMB_X18_Y6_N22
\U3|ram_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~88_combout\ = (\rtl~3_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~3_combout\ & (\U3|ram_data~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3_combout\,
	datac => \U3|ram_data~88_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~88_combout\);

-- Location: LCCOMB_X18_Y6_N30
\U3|ram_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~64_combout\ = (\rtl~2_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datac => \U3|ram_data~64_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~64_combout\);

-- Location: LCCOMB_X18_Y6_N0
\U3|ram_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~72_combout\ = (\rtl~1_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~1_combout\ & (\U3|ram_data~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~72_combout\,
	datac => \rtl~1_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~72_combout\);

-- Location: LCCOMB_X18_Y6_N20
\U3|ram_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~128_combout\ = (\U3|ram_address_latch\(1) & (\U3|ram_address_latch\(0))) # (!\U3|ram_address_latch\(1) & ((\U3|ram_address_latch\(0) & ((\U3|ram_data~72_combout\))) # (!\U3|ram_address_latch\(0) & (\U3|ram_data~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~64_combout\,
	datad => \U3|ram_data~72_combout\,
	combout => \U3|ram_data~128_combout\);

-- Location: LCCOMB_X18_Y6_N18
\U3|ram_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~129_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~128_combout\ & ((\U3|ram_data~88_combout\))) # (!\U3|ram_data~128_combout\ & (\U3|ram_data~80_combout\)))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~80_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~88_combout\,
	datad => \U3|ram_data~128_combout\,
	combout => \U3|ram_data~129_combout\);

-- Location: LCCOMB_X21_Y7_N8
\U3|ram_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~104_combout\ = (\rtl~12_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12_combout\,
	datac => \U3|ram_data~104_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~104_combout\);

-- Location: LCCOMB_X21_Y7_N14
\U3|ram_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~120_combout\ = (\rtl~15_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~15_combout\,
	datac => \U3|ram_data~120_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~120_combout\);

-- Location: LCCOMB_X21_Y7_N22
\U3|ram_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~112_combout\ = (\rtl~13_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~13_combout\ & (\U3|ram_data~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~13_combout\,
	datac => \U3|ram_data~112_combout\,
	datad => \data_out[0]~13_combout\,
	combout => \U3|ram_data~112_combout\);

-- Location: LCCOMB_X21_Y7_N28
\U3|ram_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~96_combout\ = (\rtl~14_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~14_combout\ & (\U3|ram_data~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~96_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \rtl~14_combout\,
	combout => \U3|ram_data~96_combout\);

-- Location: LCCOMB_X21_Y7_N20
\U3|ram_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~135_combout\ = (\U3|ram_address_latch\(0) & (((\U3|ram_address_latch\(1))))) # (!\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1) & (\U3|ram_data~112_combout\)) # (!\U3|ram_address_latch\(1) & ((\U3|ram_data~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~112_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_data~96_combout\,
	combout => \U3|ram_data~135_combout\);

-- Location: LCCOMB_X21_Y7_N26
\U3|ram_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~136_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~135_combout\ & ((\U3|ram_data~120_combout\))) # (!\U3|ram_data~135_combout\ & (\U3|ram_data~104_combout\)))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~104_combout\,
	datac => \U3|ram_data~120_combout\,
	datad => \U3|ram_data~135_combout\,
	combout => \U3|ram_data~136_combout\);

-- Location: LCCOMB_X18_Y10_N2
\U3|ram_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~56_combout\ = (\rtl~7_combout\ & (\data_out[0]~13_combout\)) # (!\rtl~7_combout\ & ((\U3|ram_data~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \U3|ram_data~56_combout\,
	combout => \U3|ram_data~56_combout\);

-- Location: LCCOMB_X18_Y10_N20
\U3|ram_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~40_combout\ = (\rtl~4_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~4_combout\ & (\U3|ram_data~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~40_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \rtl~4_combout\,
	combout => \U3|ram_data~40_combout\);

-- Location: LCCOMB_X18_Y10_N6
\U3|ram_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~48_combout\ = (\rtl~5_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~5_combout\ & (\U3|ram_data~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~48_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \rtl~5_combout\,
	combout => \U3|ram_data~48_combout\);

-- Location: LCCOMB_X18_Y10_N14
\U3|ram_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~32_combout\ = (\rtl~6_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~6_combout\ & (\U3|ram_data~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~32_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \rtl~6_combout\,
	combout => \U3|ram_data~32_combout\);

-- Location: LCCOMB_X18_Y10_N0
\U3|ram_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~130_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~48_combout\) # ((\U3|ram_address_latch\(0))))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~32_combout\ & !\U3|ram_address_latch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~48_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~32_combout\,
	datad => \U3|ram_address_latch\(0),
	combout => \U3|ram_data~130_combout\);

-- Location: LCCOMB_X18_Y10_N22
\U3|ram_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~131_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~130_combout\ & (\U3|ram_data~56_combout\)) # (!\U3|ram_data~130_combout\ & ((\U3|ram_data~40_combout\))))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~56_combout\,
	datac => \U3|ram_data~40_combout\,
	datad => \U3|ram_data~130_combout\,
	combout => \U3|ram_data~131_combout\);

-- Location: LCCOMB_X18_Y10_N4
\U3|ram_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~24_combout\ = (\rtl~11_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~11_combout\ & (\U3|ram_data~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~24_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \rtl~11_combout\,
	combout => \U3|ram_data~24_combout\);

-- Location: LCCOMB_X18_Y10_N26
\U3|ram_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~8_combout\ = (\rtl~9_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~9_combout\ & (\U3|ram_data~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~8_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \rtl~9_combout\,
	combout => \U3|ram_data~8_combout\);

-- Location: LCCOMB_X18_Y10_N16
\U3|ram_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~0_combout\ = (\rtl~10_combout\ & (\data_out[0]~13_combout\)) # (!\rtl~10_combout\ & ((\U3|ram_data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~10_combout\,
	datac => \data_out[0]~13_combout\,
	datad => \U3|ram_data~0_combout\,
	combout => \U3|ram_data~0_combout\);

-- Location: LCCOMB_X18_Y10_N10
\U3|ram_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~16_combout\ = (\rtl~8_combout\ & ((\data_out[0]~13_combout\))) # (!\rtl~8_combout\ & (\U3|ram_data~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~16_combout\,
	datab => \rtl~8_combout\,
	datac => \data_out[0]~13_combout\,
	combout => \U3|ram_data~16_combout\);

-- Location: LCCOMB_X18_Y10_N12
\U3|ram_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~132_combout\ = (\U3|ram_address_latch\(1) & (((\U3|ram_address_latch\(0)) # (\U3|ram_data~16_combout\)))) # (!\U3|ram_address_latch\(1) & (\U3|ram_data~0_combout\ & (!\U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_data~0_combout\,
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_data~16_combout\,
	combout => \U3|ram_data~132_combout\);

-- Location: LCCOMB_X18_Y10_N24
\U3|ram_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~133_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~132_combout\ & (\U3|ram_data~24_combout\)) # (!\U3|ram_data~132_combout\ & ((\U3|ram_data~8_combout\))))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~24_combout\,
	datac => \U3|ram_data~8_combout\,
	datad => \U3|ram_data~132_combout\,
	combout => \U3|ram_data~133_combout\);

-- Location: LCCOMB_X18_Y10_N28
\U3|ram_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~134_combout\ = (\U3|ram_address_latch\(3) & (\U3|ram_address_latch\(2))) # (!\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2) & (\U3|ram_data~131_combout\)) # (!\U3|ram_address_latch\(2) & ((\U3|ram_data~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~131_combout\,
	datad => \U3|ram_data~133_combout\,
	combout => \U3|ram_data~134_combout\);

-- Location: LCCOMB_X19_Y9_N6
\U3|ram_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~137_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~134_combout\ & ((\U3|ram_data~136_combout\))) # (!\U3|ram_data~134_combout\ & (\U3|ram_data~129_combout\)))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~129_combout\,
	datab => \U3|ram_address_latch\(3),
	datac => \U3|ram_data~136_combout\,
	datad => \U3|ram_data~134_combout\,
	combout => \U3|ram_data~137_combout\);

-- Location: LCCOMB_X19_Y9_N8
\data_out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~6_combout\ = (\data_out[0]~5_combout\) # ((\data_out[0]~4_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[0]~5_combout\,
	datab => \data_out[0]~4_combout\,
	datac => \U14|ramrd_latch~q\,
	datad => \U3|ram_data~137_combout\,
	combout => \data_out[0]~6_combout\);

-- Location: FF_X18_Y10_N27
\U12|gra_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	asdata => \data_out[0]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(0));

-- Location: FF_X19_Y10_N25
\U12|grd_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[0]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(0));

-- Location: FF_X18_Y10_N9
\U12|grb_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[0]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(0));

-- Location: LCCOMB_X18_Y10_N8
\data_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~11_combout\ = (\data_out[6]~63_combout\ & (((\data_out[6]~10_combout\)))) # (!\data_out[6]~63_combout\ & ((\data_out[6]~10_combout\ & ((\U12|grb_latch\(0)))) # (!\data_out[6]~10_combout\ & (\U12|grd_latch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \U12|grd_latch\(0),
	datac => \U12|grb_latch\(0),
	datad => \data_out[6]~10_combout\,
	combout => \data_out[0]~11_combout\);

-- Location: LCCOMB_X19_Y7_N22
\U12|grc_latch[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[0]~feeder_combout\ = \data_out[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[0]~13_combout\,
	combout => \U12|grc_latch[0]~feeder_combout\);

-- Location: FF_X19_Y7_N23
\U12|grc_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	d => \U12|grc_latch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(0));

-- Location: LCCOMB_X18_Y10_N18
\data_out[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~12_combout\ = (\data_out[6]~63_combout\ & ((\data_out[0]~11_combout\ & (\U12|gra_latch\(0))) # (!\data_out[0]~11_combout\ & ((\U12|grc_latch\(0)))))) # (!\data_out[6]~63_combout\ & (((\data_out[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \U12|gra_latch\(0),
	datac => \data_out[0]~11_combout\,
	datad => \U12|grc_latch\(0),
	combout => \data_out[0]~12_combout\);

-- Location: LCCOMB_X19_Y9_N10
\data_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~7_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(0),
	combout => \data_out[0]~7_combout\);

-- Location: LCCOMB_X19_Y9_N30
\data_out[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~13_combout\ = (\data_out[0]~6_combout\) # ((\data_out[0]~7_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[0]~6_combout\,
	datac => \data_out[0]~12_combout\,
	datad => \data_out[0]~7_combout\,
	combout => \data_out[0]~13_combout\);

-- Location: LCCOMB_X19_Y11_N4
\U5|instruction[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[0]~feeder_combout\ = \data_out[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_out[0]~13_combout\,
	combout => \U5|instruction[0]~feeder_combout\);

-- Location: FF_X19_Y11_N5
\U5|instruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	d => \U5|instruction[0]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(0));

-- Location: FF_X16_Y11_N11
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

-- Location: LCCOMB_X16_Y11_N12
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

-- Location: FF_X16_Y11_N13
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

-- Location: FF_X16_Y11_N15
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

-- Location: LCCOMB_X16_Y11_N8
\data_out[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~22_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(2)) # ((\U7|addr_latch\(2) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (\U7|addr_latch\(2) & ((\U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U7|addr_latch\(2),
	datac => \U5|instruction\(2),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[2]~22_combout\);

-- Location: LCCOMB_X17_Y11_N18
\U3|ram_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~50_combout\ = (\rtl~5_combout\ & (\data_out[2]~27_combout\)) # (!\rtl~5_combout\ & ((\U3|ram_data~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~5_combout\,
	datac => \data_out[2]~27_combout\,
	datad => \U3|ram_data~50_combout\,
	combout => \U3|ram_data~50_combout\);

-- Location: LCCOMB_X17_Y11_N30
\U3|ram_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~34_combout\ = (\rtl~6_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~6_combout\ & (\U3|ram_data~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~34_combout\,
	datab => \data_out[2]~27_combout\,
	datac => \rtl~6_combout\,
	combout => \U3|ram_data~34_combout\);

-- Location: LCCOMB_X17_Y11_N28
\U3|ram_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~42_combout\ = (\rtl~4_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~4_combout\ & (\U3|ram_data~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~42_combout\,
	datac => \data_out[2]~27_combout\,
	datad => \rtl~4_combout\,
	combout => \U3|ram_data~42_combout\);

-- Location: LCCOMB_X17_Y11_N4
\U3|ram_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~148_combout\ = (\U3|ram_address_latch\(1) & (\U3|ram_address_latch\(0))) # (!\U3|ram_address_latch\(1) & ((\U3|ram_address_latch\(0) & ((\U3|ram_data~42_combout\))) # (!\U3|ram_address_latch\(0) & (\U3|ram_data~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~34_combout\,
	datad => \U3|ram_data~42_combout\,
	combout => \U3|ram_data~148_combout\);

-- Location: LCCOMB_X17_Y11_N24
\U3|ram_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~58_combout\ = (\rtl~7_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~7_combout\ & (\U3|ram_data~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datab => \U3|ram_data~58_combout\,
	datac => \data_out[2]~27_combout\,
	combout => \U3|ram_data~58_combout\);

-- Location: LCCOMB_X17_Y11_N26
\U3|ram_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~149_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~148_combout\ & ((\U3|ram_data~58_combout\))) # (!\U3|ram_data~148_combout\ & (\U3|ram_data~50_combout\)))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_data~50_combout\,
	datac => \U3|ram_data~148_combout\,
	datad => \U3|ram_data~58_combout\,
	combout => \U3|ram_data~149_combout\);

-- Location: LCCOMB_X17_Y7_N22
\U3|ram_data~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~26_combout\ = (\rtl~11_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~11_combout\ & (\U3|ram_data~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~26_combout\,
	datac => \rtl~11_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_data~26_combout\);

-- Location: LCCOMB_X17_Y7_N8
\U3|ram_data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~10_combout\ = (\rtl~9_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~9_combout\ & (\U3|ram_data~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~10_combout\,
	datac => \rtl~9_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_data~10_combout\);

-- Location: LCCOMB_X17_Y7_N14
\U3|ram_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~2_combout\ = (\rtl~10_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~10_combout\ & (\U3|ram_data~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~10_combout\,
	datac => \U3|ram_data~2_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_data~2_combout\);

-- Location: LCCOMB_X17_Y7_N20
\U3|ram_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~18_combout\ = (\rtl~8_combout\ & (\data_out[2]~27_combout\)) # (!\rtl~8_combout\ & ((\U3|ram_data~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datac => \rtl~8_combout\,
	datad => \U3|ram_data~18_combout\,
	combout => \U3|ram_data~18_combout\);

-- Location: LCCOMB_X17_Y7_N6
\U3|ram_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~152_combout\ = (\U3|ram_address_latch\(0) & (\U3|ram_address_latch\(1))) # (!\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1) & ((\U3|ram_data~18_combout\))) # (!\U3|ram_address_latch\(1) & (\U3|ram_data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~2_combout\,
	datad => \U3|ram_data~18_combout\,
	combout => \U3|ram_data~152_combout\);

-- Location: LCCOMB_X17_Y7_N16
\U3|ram_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~153_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~152_combout\ & (\U3|ram_data~26_combout\)) # (!\U3|ram_data~152_combout\ & ((\U3|ram_data~10_combout\))))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~26_combout\,
	datab => \U3|ram_data~10_combout\,
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_data~152_combout\,
	combout => \U3|ram_data~153_combout\);

-- Location: LCCOMB_X17_Y6_N28
\U3|ram_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~66_combout\ = (\rtl~2_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~66_combout\,
	datac => \data_out[2]~27_combout\,
	datad => \rtl~2_combout\,
	combout => \U3|ram_data~66_combout\);

-- Location: LCCOMB_X17_Y6_N20
\U3|ram_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~82_combout\ = (\rtl~0_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \U3|ram_data~82_combout\,
	datac => \data_out[2]~27_combout\,
	combout => \U3|ram_data~82_combout\);

-- Location: LCCOMB_X17_Y6_N8
\U3|ram_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~150_combout\ = (\U3|ram_address_latch\(0) & (((\U3|ram_address_latch\(1))))) # (!\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1) & ((\U3|ram_data~82_combout\))) # (!\U3|ram_address_latch\(1) & (\U3|ram_data~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~66_combout\,
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_data~82_combout\,
	combout => \U3|ram_data~150_combout\);

-- Location: LCCOMB_X17_Y6_N30
\U3|ram_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~90_combout\ = (\rtl~3_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~3_combout\ & (\U3|ram_data~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~90_combout\,
	datab => \rtl~3_combout\,
	datac => \data_out[2]~27_combout\,
	combout => \U3|ram_data~90_combout\);

-- Location: LCCOMB_X17_Y6_N2
\U3|ram_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~74_combout\ = (\rtl~1_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~1_combout\ & (\U3|ram_data~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~74_combout\,
	datac => \data_out[2]~27_combout\,
	datad => \rtl~1_combout\,
	combout => \U3|ram_data~74_combout\);

-- Location: LCCOMB_X17_Y6_N24
\U3|ram_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~151_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~150_combout\ & (\U3|ram_data~90_combout\)) # (!\U3|ram_data~150_combout\ & ((\U3|ram_data~74_combout\))))) # (!\U3|ram_address_latch\(0) & (\U3|ram_data~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~150_combout\,
	datac => \U3|ram_data~90_combout\,
	datad => \U3|ram_data~74_combout\,
	combout => \U3|ram_data~151_combout\);

-- Location: LCCOMB_X16_Y7_N8
\U3|ram_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~154_combout\ = (\U3|ram_address_latch\(2) & (((\U3|ram_address_latch\(3))))) # (!\U3|ram_address_latch\(2) & ((\U3|ram_address_latch\(3) & ((\U3|ram_data~151_combout\))) # (!\U3|ram_address_latch\(3) & (\U3|ram_data~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~153_combout\,
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_data~151_combout\,
	combout => \U3|ram_data~154_combout\);

-- Location: LCCOMB_X21_Y7_N24
\U3|ram_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~114_combout\ = (\rtl~13_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~13_combout\ & (\U3|ram_data~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~114_combout\,
	datac => \rtl~13_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_data~114_combout\);

-- Location: LCCOMB_X21_Y7_N30
\U3|ram_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~106_combout\ = (\rtl~12_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~106_combout\,
	datac => \rtl~12_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_data~106_combout\);

-- Location: LCCOMB_X21_Y7_N16
\U3|ram_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~98_combout\ = (\rtl~14_combout\ & (\data_out[2]~27_combout\)) # (!\rtl~14_combout\ & ((\U3|ram_data~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	datac => \U3|ram_data~98_combout\,
	datad => \rtl~14_combout\,
	combout => \U3|ram_data~98_combout\);

-- Location: LCCOMB_X21_Y7_N4
\U3|ram_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~155_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~106_combout\) # ((\U3|ram_address_latch\(1))))) # (!\U3|ram_address_latch\(0) & (((!\U3|ram_address_latch\(1) & \U3|ram_data~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~106_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_data~98_combout\,
	combout => \U3|ram_data~155_combout\);

-- Location: LCCOMB_X21_Y7_N18
\U3|ram_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~122_combout\ = (\rtl~15_combout\ & ((\data_out[2]~27_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~122_combout\,
	datac => \rtl~15_combout\,
	datad => \data_out[2]~27_combout\,
	combout => \U3|ram_data~122_combout\);

-- Location: LCCOMB_X21_Y7_N2
\U3|ram_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~156_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~155_combout\ & ((\U3|ram_data~122_combout\))) # (!\U3|ram_data~155_combout\ & (\U3|ram_data~114_combout\)))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~114_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~155_combout\,
	datad => \U3|ram_data~122_combout\,
	combout => \U3|ram_data~156_combout\);

-- Location: LCCOMB_X16_Y7_N22
\U3|ram_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~157_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~154_combout\ & ((\U3|ram_data~156_combout\))) # (!\U3|ram_data~154_combout\ & (\U3|ram_data~149_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~149_combout\,
	datac => \U3|ram_data~154_combout\,
	datad => \U3|ram_data~156_combout\,
	combout => \U3|ram_data~157_combout\);

-- Location: LCCOMB_X16_Y7_N2
\data_out[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~21_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|enrom_latch~q\,
	datac => \U4|inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \data_out[2]~21_combout\);

-- Location: LCCOMB_X16_Y7_N6
\data_out[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~23_combout\ = (\data_out[2]~22_combout\) # ((\data_out[2]~21_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~22_combout\,
	datab => \U14|ramrd_latch~q\,
	datac => \U3|ram_data~157_combout\,
	datad => \data_out[2]~21_combout\,
	combout => \data_out[2]~23_combout\);

-- Location: FF_X14_Y7_N9
\U12|gra_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	asdata => \data_out[2]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(2));

-- Location: LCCOMB_X14_Y7_N10
\U12|grc_latch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[2]~feeder_combout\ = \data_out[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~27_combout\,
	combout => \U12|grc_latch[2]~feeder_combout\);

-- Location: FF_X14_Y7_N11
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

-- Location: FF_X18_Y9_N1
\U12|grb_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[2]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(2));

-- Location: FF_X17_Y9_N27
\U12|grd_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[2]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(2));

-- Location: LCCOMB_X17_Y9_N26
\data_out[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~25_combout\ = (\data_out[6]~10_combout\ & ((\U12|grb_latch\(2)) # ((\data_out[6]~63_combout\)))) # (!\data_out[6]~10_combout\ & (((\U12|grd_latch\(2) & !\data_out[6]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \U12|grb_latch\(2),
	datac => \U12|grd_latch\(2),
	datad => \data_out[6]~63_combout\,
	combout => \data_out[2]~25_combout\);

-- Location: LCCOMB_X16_Y7_N26
\data_out[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~26_combout\ = (\data_out[6]~63_combout\ & ((\data_out[2]~25_combout\ & (\U12|gra_latch\(2))) # (!\data_out[2]~25_combout\ & ((\U12|grc_latch\(2)))))) # (!\data_out[6]~63_combout\ & (((\data_out[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \U12|gra_latch\(2),
	datac => \U12|grc_latch\(2),
	datad => \data_out[2]~25_combout\,
	combout => \data_out[2]~26_combout\);

-- Location: LCCOMB_X16_Y7_N18
\data_out[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~24_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(2),
	combout => \data_out[2]~24_combout\);

-- Location: LCCOMB_X16_Y7_N10
\data_out[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~27_combout\ = (\data_out[2]~23_combout\) # ((\data_out[2]~24_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[2]~23_combout\,
	datab => \U12|gr_data_out[7]~0_combout\,
	datac => \data_out[2]~26_combout\,
	datad => \data_out[2]~24_combout\,
	combout => \data_out[2]~27_combout\);

-- Location: FF_X13_Y10_N9
\U5|instruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[2]~27_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(10));

-- Location: LCCOMB_X19_Y10_N4
\U14|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~2_combout\ = (\U14|current_state.t10~q\ & (((\U5|instruction\(10) & !\U14|Selector17~0_combout\)) # (!\U14|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t10~q\,
	datab => \U5|instruction\(10),
	datac => \U14|Selector15~0_combout\,
	datad => \U14|Selector17~0_combout\,
	combout => \U14|Selector9~2_combout\);

-- Location: LCCOMB_X19_Y10_N0
\U14|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~3_combout\ = (\U14|regrd1_latch~q\ & (!\U14|Selector9~2_combout\ & (\U14|Selector9~0_combout\ & !\U14|Selector9~1_combout\))) # (!\U14|regrd1_latch~q\ & (\U14|Selector9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|regrd1_latch~q\,
	datab => \U14|Selector9~2_combout\,
	datac => \U14|Selector9~0_combout\,
	datad => \U14|Selector9~1_combout\,
	combout => \U14|Selector9~3_combout\);

-- Location: LCCOMB_X14_Y11_N14
\U14|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~4_combout\ = (!\U5|instruction\(13) & (!\U5|instruction\(14) & (\U5|instruction\(12) $ (\U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(14),
	combout => \U14|Selector9~4_combout\);

-- Location: LCCOMB_X14_Y11_N8
\U14|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~5_combout\ = (\U5|instruction\(14)) # ((\U5|instruction\(13) & ((\U5|instruction\(11)) # (!\U5|instruction\(12)))) # (!\U5|instruction\(13) & ((\U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(12),
	combout => \U14|Selector9~5_combout\);

-- Location: LCCOMB_X19_Y10_N28
\U14|Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~6_combout\ = (\U14|current_state.t12~q\ & ((\U5|instruction\(15) & ((!\U14|Selector9~5_combout\) # (!\U14|Selector9~4_combout\))) # (!\U5|instruction\(15) & (!\U14|Selector9~4_combout\ & !\U14|Selector9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U14|current_state.t12~q\,
	datac => \U14|Selector9~4_combout\,
	datad => \U14|Selector9~5_combout\,
	combout => \U14|Selector9~6_combout\);

-- Location: LCCOMB_X19_Y10_N30
\U14|Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector9~7_combout\ = (\U14|Selector9~3_combout\ & (((\U14|Selector9~6_combout\) # (!\U14|regrd1_latch~q\)))) # (!\U14|Selector9~3_combout\ & ((\U14|regrd1_latch~q\) # ((\U14|Selector9~4_combout\ & \U14|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector9~3_combout\,
	datab => \U14|Selector9~4_combout\,
	datac => \U14|regrd1_latch~q\,
	datad => \U14|Selector9~6_combout\,
	combout => \U14|Selector9~7_combout\);

-- Location: FF_X19_Y10_N31
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

-- Location: LCCOMB_X17_Y9_N30
\U12|gr_data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gr_data_out[7]~0_combout\ = (\U14|regrd1_latch~q\) # (\U14|regrd2_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|regrd1_latch~q\,
	datad => \U14|regrd2_latch~q\,
	combout => \U12|gr_data_out[7]~0_combout\);

-- Location: LCCOMB_X16_Y11_N4
\data_out[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~36_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(4)) # ((\U7|addr_latch\(4) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (\U7|addr_latch\(4) & ((\U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U7|addr_latch\(4),
	datac => \U5|instruction\(4),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[4]~36_combout\);

-- Location: LCCOMB_X17_Y6_N4
\U3|ram_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~84_combout\ = (\rtl~0_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \U3|ram_data~84_combout\,
	datac => \data_out[4]~41_combout\,
	combout => \U3|ram_data~84_combout\);

-- Location: LCCOMB_X17_Y6_N18
\U3|ram_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~68_combout\ = (\rtl~2_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~68_combout\,
	datac => \data_out[4]~41_combout\,
	datad => \rtl~2_combout\,
	combout => \U3|ram_data~68_combout\);

-- Location: LCCOMB_X17_Y6_N12
\U3|ram_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~76_combout\ = (\rtl~1_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~1_combout\ & (\U3|ram_data~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~76_combout\,
	datac => \data_out[4]~41_combout\,
	datad => \rtl~1_combout\,
	combout => \U3|ram_data~76_combout\);

-- Location: LCCOMB_X17_Y6_N14
\U3|ram_data~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~168_combout\ = (\U3|ram_address_latch\(0) & (((\U3|ram_address_latch\(1)) # (\U3|ram_data~76_combout\)))) # (!\U3|ram_address_latch\(0) & (\U3|ram_data~68_combout\ & (!\U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~68_combout\,
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_data~76_combout\,
	combout => \U3|ram_data~168_combout\);

-- Location: LCCOMB_X17_Y6_N10
\U3|ram_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~92_combout\ = (\rtl~3_combout\ & (\data_out[4]~41_combout\)) # (!\rtl~3_combout\ & ((\U3|ram_data~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3_combout\,
	datac => \data_out[4]~41_combout\,
	datad => \U3|ram_data~92_combout\,
	combout => \U3|ram_data~92_combout\);

-- Location: LCCOMB_X17_Y6_N16
\U3|ram_data~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~169_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~168_combout\ & ((\U3|ram_data~92_combout\))) # (!\U3|ram_data~168_combout\ & (\U3|ram_data~84_combout\)))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~84_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~168_combout\,
	datad => \U3|ram_data~92_combout\,
	combout => \U3|ram_data~169_combout\);

-- Location: LCCOMB_X16_Y8_N22
\U3|ram_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~52_combout\ = (\rtl~5_combout\ & (\data_out[4]~41_combout\)) # (!\rtl~5_combout\ & ((\U3|ram_data~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~41_combout\,
	datac => \U3|ram_data~52_combout\,
	datad => \rtl~5_combout\,
	combout => \U3|ram_data~52_combout\);

-- Location: LCCOMB_X19_Y8_N22
\U3|ram_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~36_combout\ = (\rtl~6_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~6_combout\ & (\U3|ram_data~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~36_combout\,
	datac => \rtl~6_combout\,
	datad => \data_out[4]~41_combout\,
	combout => \U3|ram_data~36_combout\);

-- Location: LCCOMB_X16_Y8_N6
\U3|ram_data~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~170_combout\ = (\U3|ram_address_latch\(0) & (((\U3|ram_address_latch\(1))))) # (!\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1) & (\U3|ram_data~52_combout\)) # (!\U3|ram_address_latch\(1) & ((\U3|ram_data~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~52_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~36_combout\,
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~170_combout\);

-- Location: LCCOMB_X17_Y11_N22
\U3|ram_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~44_combout\ = (\rtl~4_combout\ & (\data_out[4]~41_combout\)) # (!\rtl~4_combout\ & ((\U3|ram_data~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~41_combout\,
	datac => \rtl~4_combout\,
	datad => \U3|ram_data~44_combout\,
	combout => \U3|ram_data~44_combout\);

-- Location: LCCOMB_X16_Y8_N12
\U3|ram_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~60_combout\ = (\rtl~7_combout\ & (\data_out[4]~41_combout\)) # (!\rtl~7_combout\ & ((\U3|ram_data~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~41_combout\,
	datac => \rtl~7_combout\,
	datad => \U3|ram_data~60_combout\,
	combout => \U3|ram_data~60_combout\);

-- Location: LCCOMB_X16_Y8_N8
\U3|ram_data~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~171_combout\ = (\U3|ram_data~170_combout\ & (((\U3|ram_data~60_combout\) # (!\U3|ram_address_latch\(0))))) # (!\U3|ram_data~170_combout\ & (\U3|ram_data~44_combout\ & (\U3|ram_address_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~170_combout\,
	datab => \U3|ram_data~44_combout\,
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_data~60_combout\,
	combout => \U3|ram_data~171_combout\);

-- Location: LCCOMB_X17_Y7_N26
\U3|ram_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~20_combout\ = (\rtl~8_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~8_combout\ & (\U3|ram_data~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~20_combout\,
	datac => \data_out[4]~41_combout\,
	datad => \rtl~8_combout\,
	combout => \U3|ram_data~20_combout\);

-- Location: LCCOMB_X17_Y8_N2
\U3|ram_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~12_combout\ = (\rtl~9_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~9_combout\ & (\U3|ram_data~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~12_combout\,
	datac => \data_out[4]~41_combout\,
	datad => \rtl~9_combout\,
	combout => \U3|ram_data~12_combout\);

-- Location: LCCOMB_X16_Y8_N14
\U3|ram_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~4_combout\ = (\rtl~10_combout\ & (\data_out[4]~41_combout\)) # (!\rtl~10_combout\ & ((\U3|ram_data~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~41_combout\,
	datac => \U3|ram_data~4_combout\,
	datad => \rtl~10_combout\,
	combout => \U3|ram_data~4_combout\);

-- Location: LCCOMB_X17_Y8_N14
\U3|ram_data~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~172_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~12_combout\) # ((\U3|ram_address_latch\(1))))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~4_combout\ & !\U3|ram_address_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~12_combout\,
	datac => \U3|ram_data~4_combout\,
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~172_combout\);

-- Location: LCCOMB_X17_Y8_N12
\U3|ram_data~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~28_combout\ = (\rtl~11_combout\ & (\data_out[4]~41_combout\)) # (!\rtl~11_combout\ & ((\U3|ram_data~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~41_combout\,
	datac => \rtl~11_combout\,
	datad => \U3|ram_data~28_combout\,
	combout => \U3|ram_data~28_combout\);

-- Location: LCCOMB_X17_Y8_N24
\U3|ram_data~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~173_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~172_combout\ & ((\U3|ram_data~28_combout\))) # (!\U3|ram_data~172_combout\ & (\U3|ram_data~20_combout\)))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~20_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~172_combout\,
	datad => \U3|ram_data~28_combout\,
	combout => \U3|ram_data~173_combout\);

-- Location: LCCOMB_X16_Y8_N30
\U3|ram_data~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~174_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_address_latch\(3)) # ((\U3|ram_data~171_combout\)))) # (!\U3|ram_address_latch\(2) & (!\U3|ram_address_latch\(3) & ((\U3|ram_data~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_address_latch\(3),
	datac => \U3|ram_data~171_combout\,
	datad => \U3|ram_data~173_combout\,
	combout => \U3|ram_data~174_combout\);

-- Location: LCCOMB_X19_Y7_N14
\U3|ram_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~116_combout\ = (\rtl~13_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~13_combout\ & (\U3|ram_data~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~13_combout\,
	datac => \U3|ram_data~116_combout\,
	datad => \data_out[4]~41_combout\,
	combout => \U3|ram_data~116_combout\);

-- Location: LCCOMB_X19_Y7_N20
\U3|ram_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~100_combout\ = (\rtl~14_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~14_combout\ & (\U3|ram_data~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~14_combout\,
	datab => \U3|ram_data~100_combout\,
	datad => \data_out[4]~41_combout\,
	combout => \U3|ram_data~100_combout\);

-- Location: LCCOMB_X19_Y7_N10
\U3|ram_data~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~175_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~116_combout\) # ((\U3|ram_address_latch\(0))))) # (!\U3|ram_address_latch\(1) & (((!\U3|ram_address_latch\(0) & \U3|ram_data~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_data~116_combout\,
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_data~100_combout\,
	combout => \U3|ram_data~175_combout\);

-- Location: LCCOMB_X19_Y7_N26
\U3|ram_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~108_combout\ = (\rtl~12_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~108_combout\,
	datab => \rtl~12_combout\,
	datad => \data_out[4]~41_combout\,
	combout => \U3|ram_data~108_combout\);

-- Location: LCCOMB_X19_Y7_N24
\U3|ram_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~124_combout\ = (\rtl~15_combout\ & ((\data_out[4]~41_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~124_combout\,
	datac => \rtl~15_combout\,
	datad => \data_out[4]~41_combout\,
	combout => \U3|ram_data~124_combout\);

-- Location: LCCOMB_X19_Y7_N0
\U3|ram_data~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~176_combout\ = (\U3|ram_data~175_combout\ & (((\U3|ram_data~124_combout\)) # (!\U3|ram_address_latch\(0)))) # (!\U3|ram_data~175_combout\ & (\U3|ram_address_latch\(0) & (\U3|ram_data~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~175_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~108_combout\,
	datad => \U3|ram_data~124_combout\,
	combout => \U3|ram_data~176_combout\);

-- Location: LCCOMB_X16_Y8_N20
\U3|ram_data~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~177_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~174_combout\ & ((\U3|ram_data~176_combout\))) # (!\U3|ram_data~174_combout\ & (\U3|ram_data~169_combout\)))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~169_combout\,
	datac => \U3|ram_data~174_combout\,
	datad => \U3|ram_data~176_combout\,
	combout => \U3|ram_data~177_combout\);

-- Location: LCCOMB_X16_Y8_N28
\data_out[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~35_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enrom_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \data_out[4]~35_combout\);

-- Location: LCCOMB_X16_Y8_N18
\data_out[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~37_combout\ = (\data_out[4]~36_combout\) # ((\data_out[4]~35_combout\) # ((\U3|ram_data~177_combout\ & \U14|ramrd_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[4]~36_combout\,
	datab => \U3|ram_data~177_combout\,
	datac => \data_out[4]~35_combout\,
	datad => \U14|ramrd_latch~q\,
	combout => \data_out[4]~37_combout\);

-- Location: LCCOMB_X14_Y8_N20
\U12|gra_latch[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[4]~feeder_combout\ = \data_out[4]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[4]~41_combout\,
	combout => \U12|gra_latch[4]~feeder_combout\);

-- Location: FF_X14_Y8_N21
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

-- Location: FF_X17_Y8_N5
\U12|grc_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[4]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(4));

-- Location: FF_X16_Y8_N3
\U12|grd_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[4]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(4));

-- Location: FF_X16_Y8_N29
\U12|grb_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[4]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(4));

-- Location: LCCOMB_X16_Y8_N2
\data_out[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~39_combout\ = (\data_out[6]~63_combout\ & (\data_out[6]~10_combout\)) # (!\data_out[6]~63_combout\ & ((\data_out[6]~10_combout\ & ((\U12|grb_latch\(4)))) # (!\data_out[6]~10_combout\ & (\U12|grd_latch\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \data_out[6]~10_combout\,
	datac => \U12|grd_latch\(4),
	datad => \U12|grb_latch\(4),
	combout => \data_out[4]~39_combout\);

-- Location: LCCOMB_X16_Y8_N4
\data_out[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~40_combout\ = (\data_out[6]~63_combout\ & ((\data_out[4]~39_combout\ & (\U12|gra_latch\(4))) # (!\data_out[4]~39_combout\ & ((\U12|grc_latch\(4)))))) # (!\data_out[6]~63_combout\ & (((\data_out[4]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~63_combout\,
	datab => \U12|gra_latch\(4),
	datac => \U12|grc_latch\(4),
	datad => \data_out[4]~39_combout\,
	combout => \data_out[4]~40_combout\);

-- Location: LCCOMB_X16_Y8_N24
\data_out[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~38_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(4),
	combout => \data_out[4]~38_combout\);

-- Location: LCCOMB_X16_Y8_N26
\data_out[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~41_combout\ = (\data_out[4]~37_combout\) # ((\data_out[4]~38_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|gr_data_out[7]~0_combout\,
	datab => \data_out[4]~37_combout\,
	datac => \data_out[4]~40_combout\,
	datad => \data_out[4]~38_combout\,
	combout => \data_out[4]~41_combout\);

-- Location: FF_X14_Y11_N3
\U5|instruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[4]~41_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(12));

-- Location: LCCOMB_X14_Y11_N6
\U6|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux1~4_combout\ = (!\U5|instruction\(14) & (!\U5|instruction\(11) & \U5|instruction\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(12),
	combout => \U6|Mux1~4_combout\);

-- Location: LCCOMB_X14_Y11_N12
\U14|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector17~0_combout\ = (\U6|Mux0~0_combout\ & (!\U6|Mux1~4_combout\ & ((!\U5|instruction\(11)) # (!\U6|Mux3~0_combout\)))) # (!\U6|Mux0~0_combout\ & (((!\U5|instruction\(11))) # (!\U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux0~0_combout\,
	datab => \U6|Mux3~0_combout\,
	datac => \U5|instruction\(11),
	datad => \U6|Mux1~4_combout\,
	combout => \U14|Selector17~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\U14|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector2~0_combout\ = (\U14|Selector15~0_combout\ & (\U14|current_state.t10~q\ & ((\U14|Selector17~0_combout\) # (!\U5|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector15~0_combout\,
	datab => \U14|current_state.t10~q\,
	datac => \U14|Selector17~0_combout\,
	datad => \U5|instruction\(10),
	combout => \U14|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y10_N28
\U14|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~6_combout\ = (\U14|Selector2~0_combout\ & (\U6|Mux6~0_combout\ & ((!\U14|Selector13~4_combout\) # (!\U14|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector2~0_combout\,
	datab => \U6|Mux6~0_combout\,
	datac => \U14|Selector17~0_combout\,
	datad => \U14|Selector13~4_combout\,
	combout => \U14|Selector6~6_combout\);

-- Location: LCCOMB_X13_Y10_N0
\U14|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~0_combout\ = (\U5|instruction\(15) & ((\U5|instruction\(12) & ((\U5|instruction\(11)))) # (!\U5|instruction\(12) & (\U5|instruction\(10))))) # (!\U5|instruction\(15) & (((\U5|instruction\(12)) # (!\U5|instruction\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(10),
	datac => \U5|instruction\(12),
	datad => \U5|instruction\(11),
	combout => \U14|Selector6~0_combout\);

-- Location: LCCOMB_X13_Y10_N12
\U14|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~1_combout\ = (\U14|current_state.t12~q\ & ((\U14|Selector6~0_combout\) # ((\U5|instruction\(13)) # (\U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector6~0_combout\,
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(14),
	datad => \U14|current_state.t12~q\,
	combout => \U14|Selector6~1_combout\);

-- Location: LCCOMB_X14_Y10_N8
\U14|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~2_combout\ = (\U14|current_state.t14~q\ & (((\U5|instruction\(15)) # (\U5|instruction\(10))) # (!\U6|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux5~0_combout\,
	datab => \U5|instruction\(15),
	datac => \U14|current_state.t14~q\,
	datad => \U5|instruction\(10),
	combout => \U14|Selector6~2_combout\);

-- Location: LCCOMB_X14_Y10_N6
\U14|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~3_combout\ = (\U14|dbfaout_latch~q\ & ((\U14|Selector6~1_combout\) # ((\U14|Selector6~2_combout\) # (!\U14|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector6~1_combout\,
	datab => \U14|dbfaout_latch~q\,
	datac => \U14|Selector6~2_combout\,
	datad => \U14|Selector9~0_combout\,
	combout => \U14|Selector6~3_combout\);

-- Location: LCCOMB_X14_Y11_N4
\U14|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~4_combout\ = (\U5|instruction\(12) & (((!\U5|instruction\(11) & \U5|instruction\(14))))) # (!\U5|instruction\(12) & ((\U5|instruction\(13)) # ((\U5|instruction\(11) & \U5|instruction\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(12),
	datac => \U5|instruction\(11),
	datad => \U5|instruction\(14),
	combout => \U14|Selector6~4_combout\);

-- Location: LCCOMB_X13_Y10_N8
\U14|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~5_combout\ = (!\U5|instruction\(15) & (\U14|current_state.t12~q\ & \U14|Selector6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U14|current_state.t12~q\,
	datad => \U14|Selector6~4_combout\,
	combout => \U14|Selector6~5_combout\);

-- Location: LCCOMB_X14_Y10_N20
\U14|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector6~7_combout\ = (\U14|Selector6~3_combout\) # ((!\U5|instruction\(10) & ((\U14|Selector6~6_combout\) # (\U14|Selector6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector6~6_combout\,
	datab => \U5|instruction\(10),
	datac => \U14|Selector6~3_combout\,
	datad => \U14|Selector6~5_combout\,
	combout => \U14|Selector6~7_combout\);

-- Location: FF_X14_Y10_N21
\U14|dbfaout_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|dbfaout_latch~q\);

-- Location: LCCOMB_X16_Y11_N0
\data_out[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~50_combout\ = (\U14|dbfaout_latch~q\ & ((\U5|instruction\(6)) # ((\U7|addr_latch\(6) & \U14|enpcout_latch~q\)))) # (!\U14|dbfaout_latch~q\ & (\U7|addr_latch\(6) & ((\U14|enpcout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfaout_latch~q\,
	datab => \U7|addr_latch\(6),
	datac => \U5|instruction\(6),
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[6]~50_combout\);

-- Location: LCCOMB_X17_Y11_N12
\U3|ram_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~38_combout\ = (\rtl~6_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~6_combout\ & (\U3|ram_data~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datab => \U3|ram_data~38_combout\,
	datad => \data_out[6]~55_combout\,
	combout => \U3|ram_data~38_combout\);

-- Location: LCCOMB_X17_Y11_N16
\U3|ram_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~46_combout\ = (\rtl~4_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~4_combout\ & (\U3|ram_data~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datac => \U3|ram_data~46_combout\,
	datad => \data_out[6]~55_combout\,
	combout => \U3|ram_data~46_combout\);

-- Location: LCCOMB_X17_Y11_N6
\U3|ram_data~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~188_combout\ = (\U3|ram_address_latch\(0) & (((\U3|ram_address_latch\(1)) # (\U3|ram_data~46_combout\)))) # (!\U3|ram_address_latch\(0) & (\U3|ram_data~38_combout\ & (!\U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~38_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_data~46_combout\,
	combout => \U3|ram_data~188_combout\);

-- Location: LCCOMB_X17_Y11_N0
\U3|ram_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~54_combout\ = (\rtl~5_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~5_combout\ & ((\U3|ram_data~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~55_combout\,
	datab => \U3|ram_data~54_combout\,
	datad => \rtl~5_combout\,
	combout => \U3|ram_data~54_combout\);

-- Location: LCCOMB_X17_Y11_N2
\U3|ram_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~62_combout\ = (\rtl~7_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~7_combout\ & ((\U3|ram_data~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~55_combout\,
	datac => \rtl~7_combout\,
	datad => \U3|ram_data~62_combout\,
	combout => \U3|ram_data~62_combout\);

-- Location: LCCOMB_X17_Y11_N20
\U3|ram_data~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~189_combout\ = (\U3|ram_data~188_combout\ & (((\U3|ram_data~62_combout\) # (!\U3|ram_address_latch\(1))))) # (!\U3|ram_data~188_combout\ & (\U3|ram_data~54_combout\ & (\U3|ram_address_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~188_combout\,
	datab => \U3|ram_data~54_combout\,
	datac => \U3|ram_address_latch\(1),
	datad => \U3|ram_data~62_combout\,
	combout => \U3|ram_data~189_combout\);

-- Location: LCCOMB_X14_Y9_N8
\U3|ram_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~126_combout\ = (\rtl~15_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~126_combout\,
	datac => \data_out[6]~55_combout\,
	datad => \rtl~15_combout\,
	combout => \U3|ram_data~126_combout\);

-- Location: LCCOMB_X16_Y9_N16
\U3|ram_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~118_combout\ = (\rtl~13_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~13_combout\ & (\U3|ram_data~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~118_combout\,
	datac => \data_out[6]~55_combout\,
	datad => \rtl~13_combout\,
	combout => \U3|ram_data~118_combout\);

-- Location: LCCOMB_X16_Y9_N0
\U3|ram_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~102_combout\ = (\rtl~14_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~14_combout\ & (\U3|ram_data~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~102_combout\,
	datab => \data_out[6]~55_combout\,
	datad => \rtl~14_combout\,
	combout => \U3|ram_data~102_combout\);

-- Location: LCCOMB_X19_Y7_N4
\U3|ram_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~110_combout\ = (\rtl~12_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12_combout\,
	datac => \U3|ram_data~110_combout\,
	datad => \data_out[6]~55_combout\,
	combout => \U3|ram_data~110_combout\);

-- Location: LCCOMB_X16_Y9_N24
\U3|ram_data~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~195_combout\ = (\U3|ram_address_latch\(1) & (((\U3|ram_address_latch\(0))))) # (!\U3|ram_address_latch\(1) & ((\U3|ram_address_latch\(0) & ((\U3|ram_data~110_combout\))) # (!\U3|ram_address_latch\(0) & (\U3|ram_data~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_data~102_combout\,
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_data~110_combout\,
	combout => \U3|ram_data~195_combout\);

-- Location: LCCOMB_X16_Y9_N26
\U3|ram_data~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~196_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~195_combout\ & (\U3|ram_data~126_combout\)) # (!\U3|ram_data~195_combout\ & ((\U3|ram_data~118_combout\))))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(1),
	datab => \U3|ram_data~126_combout\,
	datac => \U3|ram_data~118_combout\,
	datad => \U3|ram_data~195_combout\,
	combout => \U3|ram_data~196_combout\);

-- Location: LCCOMB_X17_Y7_N10
\U3|ram_data~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~30_combout\ = (\rtl~11_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~11_combout\ & ((\U3|ram_data~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~11_combout\,
	datac => \data_out[6]~55_combout\,
	datad => \U3|ram_data~30_combout\,
	combout => \U3|ram_data~30_combout\);

-- Location: LCCOMB_X17_Y7_N12
\U3|ram_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~22_combout\ = (\rtl~8_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~8_combout\ & (\U3|ram_data~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~22_combout\,
	datac => \data_out[6]~55_combout\,
	datad => \rtl~8_combout\,
	combout => \U3|ram_data~22_combout\);

-- Location: LCCOMB_X17_Y7_N2
\U3|ram_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~6_combout\ = (\rtl~10_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~10_combout\ & ((\U3|ram_data~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]~55_combout\,
	datac => \rtl~10_combout\,
	datad => \U3|ram_data~6_combout\,
	combout => \U3|ram_data~6_combout\);

-- Location: LCCOMB_X17_Y7_N4
\U3|ram_data~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~192_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~22_combout\) # ((\U3|ram_address_latch\(0))))) # (!\U3|ram_address_latch\(1) & (((!\U3|ram_address_latch\(0) & \U3|ram_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~22_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_address_latch\(0),
	datad => \U3|ram_data~6_combout\,
	combout => \U3|ram_data~192_combout\);

-- Location: LCCOMB_X16_Y9_N14
\U3|ram_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~14_combout\ = (\rtl~9_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~9_combout\ & ((\U3|ram_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]~55_combout\,
	datac => \U3|ram_data~14_combout\,
	datad => \rtl~9_combout\,
	combout => \U3|ram_data~14_combout\);

-- Location: LCCOMB_X17_Y7_N30
\U3|ram_data~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~193_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~192_combout\ & (\U3|ram_data~30_combout\)) # (!\U3|ram_data~192_combout\ & ((\U3|ram_data~14_combout\))))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~30_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~192_combout\,
	datad => \U3|ram_data~14_combout\,
	combout => \U3|ram_data~193_combout\);

-- Location: LCCOMB_X16_Y9_N22
\U3|ram_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~78_combout\ = (\rtl~1_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~1_combout\ & ((\U3|ram_data~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]~55_combout\,
	datac => \U3|ram_data~78_combout\,
	datad => \rtl~1_combout\,
	combout => \U3|ram_data~78_combout\);

-- Location: LCCOMB_X19_Y7_N2
\U3|ram_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~70_combout\ = (\rtl~2_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~70_combout\,
	datac => \rtl~2_combout\,
	datad => \data_out[6]~55_combout\,
	combout => \U3|ram_data~70_combout\);

-- Location: LCCOMB_X19_Y7_N8
\U3|ram_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~86_combout\ = (\rtl~0_combout\ & ((\data_out[6]~55_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datac => \U3|ram_data~86_combout\,
	datad => \data_out[6]~55_combout\,
	combout => \U3|ram_data~86_combout\);

-- Location: LCCOMB_X19_Y7_N28
\U3|ram_data~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~190_combout\ = (\U3|ram_address_latch\(0) & (((\U3|ram_address_latch\(1))))) # (!\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1) & ((\U3|ram_data~86_combout\))) # (!\U3|ram_address_latch\(1) & (\U3|ram_data~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_data~70_combout\,
	datac => \U3|ram_data~86_combout\,
	datad => \U3|ram_address_latch\(1),
	combout => \U3|ram_data~190_combout\);

-- Location: LCCOMB_X16_Y9_N28
\U3|ram_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~94_combout\ = (\rtl~3_combout\ & (\data_out[6]~55_combout\)) # (!\rtl~3_combout\ & ((\U3|ram_data~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[6]~55_combout\,
	datac => \U3|ram_data~94_combout\,
	datad => \rtl~3_combout\,
	combout => \U3|ram_data~94_combout\);

-- Location: LCCOMB_X17_Y7_N28
\U3|ram_data~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~191_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~190_combout\ & ((\U3|ram_data~94_combout\))) # (!\U3|ram_data~190_combout\ & (\U3|ram_data~78_combout\)))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~78_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~190_combout\,
	datad => \U3|ram_data~94_combout\,
	combout => \U3|ram_data~191_combout\);

-- Location: LCCOMB_X17_Y7_N24
\U3|ram_data~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~194_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2)) # ((\U3|ram_data~191_combout\)))) # (!\U3|ram_address_latch\(3) & (!\U3|ram_address_latch\(2) & (\U3|ram_data~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~193_combout\,
	datad => \U3|ram_data~191_combout\,
	combout => \U3|ram_data~194_combout\);

-- Location: LCCOMB_X16_Y9_N8
\U3|ram_data~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~197_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~194_combout\ & ((\U3|ram_data~196_combout\))) # (!\U3|ram_data~194_combout\ & (\U3|ram_data~189_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~189_combout\,
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~196_combout\,
	datad => \U3|ram_data~194_combout\,
	combout => \U3|ram_data~197_combout\);

-- Location: LCCOMB_X16_Y9_N2
\data_out[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~49_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enrom_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \data_out[6]~49_combout\);

-- Location: LCCOMB_X16_Y9_N30
\data_out[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~51_combout\ = (\data_out[6]~50_combout\) # ((\data_out[6]~49_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \data_out[6]~50_combout\,
	datac => \U3|ram_data~197_combout\,
	datad => \data_out[6]~49_combout\,
	combout => \data_out[6]~51_combout\);

-- Location: FF_X16_Y9_N3
\U12|grc_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[6]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(6));

-- Location: FF_X16_Y10_N29
\U12|gra_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	asdata => \data_out[6]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(6));

-- Location: FF_X16_Y9_N7
\U12|grd_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[6]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(6));

-- Location: LCCOMB_X14_Y9_N24
\U12|grb_latch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grb_latch[6]~feeder_combout\ = \data_out[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~55_combout\,
	combout => \U12|grb_latch[6]~feeder_combout\);

-- Location: FF_X14_Y9_N25
\U12|grb_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	d => \U12|grb_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(6));

-- Location: LCCOMB_X16_Y9_N6
\data_out[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~53_combout\ = (\data_out[6]~10_combout\ & ((\data_out[6]~63_combout\) # ((\U12|grb_latch\(6))))) # (!\data_out[6]~10_combout\ & (!\data_out[6]~63_combout\ & (\U12|grd_latch\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \data_out[6]~63_combout\,
	datac => \U12|grd_latch\(6),
	datad => \U12|grb_latch\(6),
	combout => \data_out[6]~53_combout\);

-- Location: LCCOMB_X16_Y9_N4
\data_out[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~54_combout\ = (\data_out[6]~63_combout\ & ((\data_out[6]~53_combout\ & ((\U12|gra_latch\(6)))) # (!\data_out[6]~53_combout\ & (\U12|grc_latch\(6))))) # (!\data_out[6]~63_combout\ & (((\data_out[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|grc_latch\(6),
	datab => \data_out[6]~63_combout\,
	datac => \U12|gra_latch\(6),
	datad => \data_out[6]~53_combout\,
	combout => \data_out[6]~54_combout\);

-- Location: LCCOMB_X16_Y9_N12
\data_out[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~52_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(6),
	combout => \data_out[6]~52_combout\);

-- Location: LCCOMB_X16_Y9_N18
\data_out[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~55_combout\ = (\data_out[6]~51_combout\) # ((\data_out[6]~52_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[6]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~51_combout\,
	datab => \U12|gr_data_out[7]~0_combout\,
	datac => \data_out[6]~54_combout\,
	datad => \data_out[6]~52_combout\,
	combout => \data_out[6]~55_combout\);

-- Location: FF_X14_Y11_N9
\U5|instruction[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[6]~55_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(14));

-- Location: LCCOMB_X14_Y11_N18
\U6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux4~0_combout\ = (\U5|instruction\(11) & (((\U5|instruction\(12))))) # (!\U5|instruction\(11) & (!\U5|instruction\(13) & (\U5|instruction\(14) $ (\U5|instruction\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(14),
	datad => \U5|instruction\(12),
	combout => \U6|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\U14|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector15~0_combout\ = (\U5|instruction\(15)) # ((!\U6|Mux4~0_combout\ & !\U6|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U6|Mux4~0_combout\,
	datad => \U6|Mux5~0_combout\,
	combout => \U14|Selector15~0_combout\);

-- Location: LCCOMB_X13_Y11_N30
\U14|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~2_combout\ = (\U14|current_state.t11~q\) # ((!\U14|current_state.t12~q\ & (!\U14|current_state.t3~q\ & \U14|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|current_state.t3~q\,
	datad => \U14|Selector4~0_combout\,
	combout => \U14|Selector1~2_combout\);

-- Location: LCCOMB_X13_Y11_N8
\U14|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~3_combout\ = (\U14|Selector1~2_combout\) # ((\U14|current_state.t12~q\ & ((\U6|Mux6~0_combout\) # (!\U14|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector15~0_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|Selector1~2_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector1~3_combout\);

-- Location: LCCOMB_X13_Y11_N20
\U14|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~1_combout\ = (\U14|Selector15~0_combout\ & (\U14|current_state.t11~q\ & !\U6|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector15~0_combout\,
	datab => \U14|current_state.t11~q\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector1~1_combout\);

-- Location: LCCOMB_X13_Y11_N16
\U14|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector1~4_combout\ = (\U14|Selector1~0_combout\) # ((\U14|Selector1~1_combout\) # ((\U14|nextn_latch~q\ & \U14|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|nextn_latch~q\,
	datab => \U14|Selector1~0_combout\,
	datac => \U14|Selector1~3_combout\,
	datad => \U14|Selector1~1_combout\,
	combout => \U14|Selector1~4_combout\);

-- Location: LCCOMB_X13_Y11_N24
\U14|nextn_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|nextn_latch~feeder_combout\ = \U14|Selector1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector1~4_combout\,
	combout => \U14|nextn_latch~feeder_combout\);

-- Location: FF_X13_Y11_N25
\U14|nextn_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|nextn_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|nextn_latch~q\);

-- Location: LCCOMB_X17_Y11_N10
\U5|instruction[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|instruction[5]~feeder_combout\ = \data_out[5]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[5]~48_combout\,
	combout => \U5|instruction[5]~feeder_combout\);

-- Location: FF_X17_Y11_N11
\U5|instruction[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	d => \U5|instruction[5]~feeder_combout\,
	ena => \U5|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(5));

-- Location: FF_X16_Y11_N21
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

-- Location: LCCOMB_X16_Y11_N2
\data_out[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~43_combout\ = (\U7|addr_latch\(5) & ((\U14|enpcout_latch~q\) # ((\U5|instruction\(5) & \U14|dbfaout_latch~q\)))) # (!\U7|addr_latch\(5) & (\U5|instruction\(5) & (\U14|dbfaout_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|addr_latch\(5),
	datab => \U5|instruction\(5),
	datac => \U14|dbfaout_latch~q\,
	datad => \U14|enpcout_latch~q\,
	combout => \data_out[5]~43_combout\);

-- Location: LCCOMB_X16_Y6_N8
\U3|ram_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~53_combout\ = (\rtl~5_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~5_combout\ & (\U3|ram_data~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datab => \U3|ram_data~53_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~53_combout\);

-- Location: LCCOMB_X16_Y6_N14
\U3|ram_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~117_combout\ = (\rtl~13_combout\ & (\data_out[5]~48_combout\)) # (!\rtl~13_combout\ & ((\U3|ram_data~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[5]~48_combout\,
	datac => \rtl~13_combout\,
	datad => \U3|ram_data~117_combout\,
	combout => \U3|ram_data~117_combout\);

-- Location: LCCOMB_X16_Y6_N30
\U3|ram_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~85_combout\ = (\rtl~0_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datac => \U3|ram_data~85_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~85_combout\);

-- Location: LCCOMB_X16_Y6_N16
\U3|ram_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~21_combout\ = (\rtl~8_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~8_combout\ & (\U3|ram_data~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~21_combout\,
	datac => \rtl~8_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~21_combout\);

-- Location: LCCOMB_X16_Y6_N24
\U3|ram_data~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~178_combout\ = (\U3|ram_address_latch\(2) & (((\U3|ram_address_latch\(3))))) # (!\U3|ram_address_latch\(2) & ((\U3|ram_address_latch\(3) & (\U3|ram_data~85_combout\)) # (!\U3|ram_address_latch\(3) & ((\U3|ram_data~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~85_combout\,
	datab => \U3|ram_data~21_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_address_latch\(3),
	combout => \U3|ram_data~178_combout\);

-- Location: LCCOMB_X16_Y6_N6
\U3|ram_data~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~179_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~178_combout\ & ((\U3|ram_data~117_combout\))) # (!\U3|ram_data~178_combout\ & (\U3|ram_data~53_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~53_combout\,
	datac => \U3|ram_data~117_combout\,
	datad => \U3|ram_data~178_combout\,
	combout => \U3|ram_data~179_combout\);

-- Location: LCCOMB_X13_Y10_N30
\U3|ram_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~93_combout\ = (\rtl~3_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~3_combout\ & (\U3|ram_data~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~93_combout\,
	datab => \data_out[5]~48_combout\,
	datad => \rtl~3_combout\,
	combout => \U3|ram_data~93_combout\);

-- Location: LCCOMB_X12_Y10_N4
\U3|ram_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~125_combout\ = (\rtl~15_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~125_combout\,
	datac => \data_out[5]~48_combout\,
	datad => \rtl~15_combout\,
	combout => \U3|ram_data~125_combout\);

-- Location: LCCOMB_X12_Y10_N28
\U3|ram_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~61_combout\ = (\rtl~7_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~7_combout\ & (\U3|ram_data~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~61_combout\,
	datac => \data_out[5]~48_combout\,
	datad => \rtl~7_combout\,
	combout => \U3|ram_data~61_combout\);

-- Location: LCCOMB_X12_Y10_N10
\U3|ram_data~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~29_combout\ = (\rtl~11_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~11_combout\ & (\U3|ram_data~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~29_combout\,
	datac => \data_out[5]~48_combout\,
	datad => \rtl~11_combout\,
	combout => \U3|ram_data~29_combout\);

-- Location: LCCOMB_X12_Y10_N24
\U3|ram_data~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~185_combout\ = (\U3|ram_address_latch\(3) & (((\U3|ram_address_latch\(2))))) # (!\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2) & (\U3|ram_data~61_combout\)) # (!\U3|ram_address_latch\(2) & ((\U3|ram_data~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~61_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_data~29_combout\,
	combout => \U3|ram_data~185_combout\);

-- Location: LCCOMB_X12_Y10_N22
\U3|ram_data~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~186_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~185_combout\ & ((\U3|ram_data~125_combout\))) # (!\U3|ram_data~185_combout\ & (\U3|ram_data~93_combout\)))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~93_combout\,
	datab => \U3|ram_address_latch\(3),
	datac => \U3|ram_data~125_combout\,
	datad => \U3|ram_data~185_combout\,
	combout => \U3|ram_data~186_combout\);

-- Location: LCCOMB_X16_Y6_N12
\U3|ram_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~77_combout\ = (\rtl~1_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~1_combout\ & (\U3|ram_data~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datac => \U3|ram_data~77_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~77_combout\);

-- Location: LCCOMB_X16_Y10_N18
\U3|ram_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~13_combout\ = (\rtl~9_combout\ & (\data_out[5]~48_combout\)) # (!\rtl~9_combout\ & ((\U3|ram_data~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~48_combout\,
	datac => \rtl~9_combout\,
	datad => \U3|ram_data~13_combout\,
	combout => \U3|ram_data~13_combout\);

-- Location: LCCOMB_X16_Y10_N0
\U3|ram_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~45_combout\ = (\rtl~4_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~4_combout\ & (\U3|ram_data~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datab => \U3|ram_data~45_combout\,
	datac => \data_out[5]~48_combout\,
	combout => \U3|ram_data~45_combout\);

-- Location: LCCOMB_X16_Y10_N14
\U3|ram_data~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~180_combout\ = (\U3|ram_address_latch\(2) & (((\U3|ram_address_latch\(3)) # (\U3|ram_data~45_combout\)))) # (!\U3|ram_address_latch\(2) & (\U3|ram_data~13_combout\ & (!\U3|ram_address_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~13_combout\,
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_data~45_combout\,
	combout => \U3|ram_data~180_combout\);

-- Location: LCCOMB_X16_Y8_N10
\U3|ram_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~109_combout\ = (\rtl~12_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~109_combout\,
	datac => \rtl~12_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~109_combout\);

-- Location: LCCOMB_X16_Y10_N8
\U3|ram_data~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~181_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~180_combout\ & ((\U3|ram_data~109_combout\))) # (!\U3|ram_data~180_combout\ & (\U3|ram_data~77_combout\)))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~77_combout\,
	datac => \U3|ram_data~180_combout\,
	datad => \U3|ram_data~109_combout\,
	combout => \U3|ram_data~181_combout\);

-- Location: LCCOMB_X16_Y10_N28
\U3|ram_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~37_combout\ = (\rtl~6_combout\ & (\data_out[5]~48_combout\)) # (!\rtl~6_combout\ & ((\U3|ram_data~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~48_combout\,
	datab => \U3|ram_data~37_combout\,
	datad => \rtl~6_combout\,
	combout => \U3|ram_data~37_combout\);

-- Location: LCCOMB_X17_Y9_N14
\U3|ram_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~101_combout\ = (\rtl~14_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~14_combout\ & (\U3|ram_data~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~14_combout\,
	datac => \U3|ram_data~101_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~101_combout\);

-- Location: LCCOMB_X14_Y7_N2
\U3|ram_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~5_combout\ = (\rtl~10_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~10_combout\ & (\U3|ram_data~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~5_combout\,
	datac => \rtl~10_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~5_combout\);

-- Location: LCCOMB_X18_Y6_N6
\U3|ram_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~69_combout\ = (\rtl~2_combout\ & ((\data_out[5]~48_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~69_combout\,
	datab => \rtl~2_combout\,
	datad => \data_out[5]~48_combout\,
	combout => \U3|ram_data~69_combout\);

-- Location: LCCOMB_X17_Y8_N16
\U3|ram_data~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~182_combout\ = (\U3|ram_address_latch\(3) & (((\U3|ram_address_latch\(2)) # (\U3|ram_data~69_combout\)))) # (!\U3|ram_address_latch\(3) & (\U3|ram_data~5_combout\ & (!\U3|ram_address_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~5_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_data~69_combout\,
	combout => \U3|ram_data~182_combout\);

-- Location: LCCOMB_X16_Y10_N10
\U3|ram_data~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~183_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~182_combout\ & ((\U3|ram_data~101_combout\))) # (!\U3|ram_data~182_combout\ & (\U3|ram_data~37_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~37_combout\,
	datac => \U3|ram_data~101_combout\,
	datad => \U3|ram_data~182_combout\,
	combout => \U3|ram_data~183_combout\);

-- Location: LCCOMB_X16_Y10_N24
\U3|ram_data~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~184_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1)) # ((\U3|ram_data~181_combout\)))) # (!\U3|ram_address_latch\(0) & (!\U3|ram_address_latch\(1) & ((\U3|ram_data~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~181_combout\,
	datad => \U3|ram_data~183_combout\,
	combout => \U3|ram_data~184_combout\);

-- Location: LCCOMB_X16_Y10_N26
\U3|ram_data~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~187_combout\ = (\U3|ram_address_latch\(1) & ((\U3|ram_data~184_combout\ & ((\U3|ram_data~186_combout\))) # (!\U3|ram_data~184_combout\ & (\U3|ram_data~179_combout\)))) # (!\U3|ram_address_latch\(1) & (((\U3|ram_data~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~179_combout\,
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~186_combout\,
	datad => \U3|ram_data~184_combout\,
	combout => \U3|ram_data~187_combout\);

-- Location: LCCOMB_X16_Y10_N16
\data_out[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~42_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|enrom_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \data_out[5]~42_combout\);

-- Location: LCCOMB_X16_Y10_N12
\data_out[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~44_combout\ = (\data_out[5]~43_combout\) # ((\data_out[5]~42_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~43_combout\,
	datab => \U14|ramrd_latch~q\,
	datac => \U3|ram_data~187_combout\,
	datad => \data_out[5]~42_combout\,
	combout => \data_out[5]~44_combout\);

-- Location: FF_X14_Y9_N1
\U12|grb_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[5]~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(5));

-- Location: FF_X16_Y10_N7
\U12|gra_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	asdata => \data_out[5]~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(5));

-- Location: FF_X16_Y9_N1
\U12|grc_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	asdata => \data_out[5]~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(5));

-- Location: FF_X16_Y10_N21
\U12|grd_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[5]~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(5));

-- Location: LCCOMB_X16_Y10_N20
\data_out[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~46_combout\ = (\data_out[6]~10_combout\ & (((\data_out[6]~63_combout\)))) # (!\data_out[6]~10_combout\ & ((\data_out[6]~63_combout\ & (\U12|grc_latch\(5))) # (!\data_out[6]~63_combout\ & ((\U12|grd_latch\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \U12|grc_latch\(5),
	datac => \U12|grd_latch\(5),
	datad => \data_out[6]~63_combout\,
	combout => \data_out[5]~46_combout\);

-- Location: LCCOMB_X16_Y10_N4
\data_out[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~47_combout\ = (\data_out[6]~10_combout\ & ((\data_out[5]~46_combout\ & ((\U12|gra_latch\(5)))) # (!\data_out[5]~46_combout\ & (\U12|grb_latch\(5))))) # (!\data_out[6]~10_combout\ & (((\data_out[5]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \U12|grb_latch\(5),
	datac => \U12|gra_latch\(5),
	datad => \data_out[5]~46_combout\,
	combout => \data_out[5]~47_combout\);

-- Location: LCCOMB_X16_Y10_N2
\data_out[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~45_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(5),
	combout => \data_out[5]~45_combout\);

-- Location: LCCOMB_X16_Y10_N30
\data_out[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~48_combout\ = (\data_out[5]~44_combout\) # ((\data_out[5]~45_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[5]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[5]~44_combout\,
	datab => \U12|gr_data_out[7]~0_combout\,
	datac => \data_out[5]~47_combout\,
	datad => \data_out[5]~45_combout\,
	combout => \data_out[5]~48_combout\);

-- Location: FF_X14_Y11_N27
\U5|instruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[5]~48_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(13));

-- Location: LCCOMB_X14_Y11_N10
\U6|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux7~0_combout\ = (!\U5|instruction\(13) & (!\U5|instruction\(14) & (\U5|instruction\(15) & !\U5|instruction\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(13),
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(15),
	datad => \U5|instruction\(12),
	combout => \U6|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\U6|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux7~1_combout\ = (!\U5|instruction\(11) & \U6|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(11),
	datad => \U6|Mux7~0_combout\,
	combout => \U6|Mux7~1_combout\);

-- Location: LCCOMB_X14_Y11_N0
\U14|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector14~0_combout\ = (\U14|current_state.t14~q\ & (((!\U14|Selector15~0_combout\) # (!\U6|Mux7~1_combout\)))) # (!\U14|current_state.t14~q\ & (\U14|current_state.t_rst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t14~q\,
	datab => \U14|current_state.t_rst_1~q\,
	datac => \U6|Mux7~1_combout\,
	datad => \U14|Selector15~0_combout\,
	combout => \U14|Selector14~0_combout\);

-- Location: LCCOMB_X14_Y11_N20
\U14|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector14~1_combout\ = (\U14|current_state.t12~q\ & ((\U6|Mux7~1_combout\) # ((\U14|ramrd_latch~q\)))) # (!\U14|current_state.t12~q\ & (((\U14|ramrd_latch~q\ & \U14|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux7~1_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|ramrd_latch~q\,
	datad => \U14|Selector14~0_combout\,
	combout => \U14|Selector14~1_combout\);

-- Location: FF_X14_Y11_N21
\U14|ramrd_latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~q\,
	d => \U14|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|ramrd_latch~q\);

-- Location: LCCOMB_X16_Y11_N26
\data_out[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~29_combout\ = (\U14|enpcout_latch~q\ & ((\U7|addr_latch\(3)) # ((\U5|instruction\(3) & \U14|dbfaout_latch~q\)))) # (!\U14|enpcout_latch~q\ & (((\U5|instruction\(3) & \U14|dbfaout_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|enpcout_latch~q\,
	datab => \U7|addr_latch\(3),
	datac => \U5|instruction\(3),
	datad => \U14|dbfaout_latch~q\,
	combout => \data_out[3]~29_combout\);

-- Location: LCCOMB_X18_Y9_N8
\data_out[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~28_combout\ = (\U14|enrom_latch~q\ & \U4|inst|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U14|enrom_latch~q\,
	datad => \U4|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \data_out[3]~28_combout\);

-- Location: LCCOMB_X18_Y8_N14
\U3|ram_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~107_combout\ = (\rtl~12_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~12_combout\ & (\U3|ram_data~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~107_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~12_combout\,
	combout => \U3|ram_data~107_combout\);

-- Location: LCCOMB_X18_Y7_N26
\U3|ram_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~43_combout\ = (\rtl~4_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~4_combout\ & (\U3|ram_data~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~43_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~4_combout\,
	combout => \U3|ram_data~43_combout\);

-- Location: LCCOMB_X18_Y8_N28
\U3|ram_data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~11_combout\ = (\rtl~9_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~9_combout\ & (\U3|ram_data~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~11_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~9_combout\,
	combout => \U3|ram_data~11_combout\);

-- Location: LCCOMB_X18_Y8_N18
\U3|ram_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~75_combout\ = (\rtl~1_combout\ & (\data_out[3]~34_combout\)) # (!\rtl~1_combout\ & ((\U3|ram_data~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	datac => \rtl~1_combout\,
	datad => \U3|ram_data~75_combout\,
	combout => \U3|ram_data~75_combout\);

-- Location: LCCOMB_X18_Y8_N12
\U3|ram_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~158_combout\ = (\U3|ram_address_latch\(3) & (((\U3|ram_address_latch\(2)) # (\U3|ram_data~75_combout\)))) # (!\U3|ram_address_latch\(3) & (\U3|ram_data~11_combout\ & (!\U3|ram_address_latch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~11_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_data~75_combout\,
	combout => \U3|ram_data~158_combout\);

-- Location: LCCOMB_X18_Y8_N22
\U3|ram_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~159_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~158_combout\ & (\U3|ram_data~107_combout\)) # (!\U3|ram_data~158_combout\ & ((\U3|ram_data~43_combout\))))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~107_combout\,
	datac => \U3|ram_data~43_combout\,
	datad => \U3|ram_data~158_combout\,
	combout => \U3|ram_data~159_combout\);

-- Location: LCCOMB_X18_Y7_N18
\U3|ram_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~115_combout\ = (\rtl~13_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~13_combout\ & (\U3|ram_data~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~115_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~13_combout\,
	combout => \U3|ram_data~115_combout\);

-- Location: LCCOMB_X18_Y7_N16
\U3|ram_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~83_combout\ = (\rtl~0_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~0_combout\ & (\U3|ram_data~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~83_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~0_combout\,
	combout => \U3|ram_data~83_combout\);

-- Location: LCCOMB_X18_Y7_N12
\U3|ram_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~19_combout\ = (\rtl~8_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~8_combout\ & (\U3|ram_data~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~19_combout\,
	datab => \rtl~8_combout\,
	datac => \data_out[3]~34_combout\,
	combout => \U3|ram_data~19_combout\);

-- Location: LCCOMB_X18_Y7_N10
\U3|ram_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~51_combout\ = (\rtl~5_combout\ & (\data_out[3]~34_combout\)) # (!\rtl~5_combout\ & ((\U3|ram_data~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	datac => \rtl~5_combout\,
	datad => \U3|ram_data~51_combout\,
	combout => \U3|ram_data~51_combout\);

-- Location: LCCOMB_X18_Y7_N24
\U3|ram_data~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~160_combout\ = (\U3|ram_address_latch\(3) & (((\U3|ram_address_latch\(2))))) # (!\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2) & ((\U3|ram_data~51_combout\))) # (!\U3|ram_address_latch\(2) & (\U3|ram_data~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_data~19_combout\,
	datac => \U3|ram_address_latch\(2),
	datad => \U3|ram_data~51_combout\,
	combout => \U3|ram_data~160_combout\);

-- Location: LCCOMB_X18_Y7_N4
\U3|ram_data~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~161_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~160_combout\ & (\U3|ram_data~115_combout\)) # (!\U3|ram_data~160_combout\ & ((\U3|ram_data~83_combout\))))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~115_combout\,
	datab => \U3|ram_address_latch\(3),
	datac => \U3|ram_data~83_combout\,
	datad => \U3|ram_data~160_combout\,
	combout => \U3|ram_data~161_combout\);

-- Location: LCCOMB_X19_Y7_N6
\U3|ram_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~99_combout\ = (\rtl~14_combout\ & (\data_out[3]~34_combout\)) # (!\rtl~14_combout\ & ((\U3|ram_data~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_out[3]~34_combout\,
	datac => \rtl~14_combout\,
	datad => \U3|ram_data~99_combout\,
	combout => \U3|ram_data~99_combout\);

-- Location: LCCOMB_X19_Y7_N16
\U3|ram_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~67_combout\ = (\rtl~2_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~2_combout\ & (\U3|ram_data~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~67_combout\,
	datac => \rtl~2_combout\,
	datad => \data_out[3]~34_combout\,
	combout => \U3|ram_data~67_combout\);

-- Location: LCCOMB_X14_Y7_N26
\U3|ram_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~3_combout\ = (\rtl~10_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~10_combout\ & (\U3|ram_data~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~10_combout\,
	datac => \U3|ram_data~3_combout\,
	datad => \data_out[3]~34_combout\,
	combout => \U3|ram_data~3_combout\);

-- Location: LCCOMB_X14_Y7_N20
\U3|ram_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~35_combout\ = (\rtl~6_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~6_combout\ & (\U3|ram_data~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~35_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~6_combout\,
	combout => \U3|ram_data~35_combout\);

-- Location: LCCOMB_X14_Y7_N24
\U3|ram_data~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~162_combout\ = (\U3|ram_address_latch\(2) & (((\U3|ram_address_latch\(3)) # (\U3|ram_data~35_combout\)))) # (!\U3|ram_address_latch\(2) & (\U3|ram_data~3_combout\ & (!\U3|ram_address_latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~3_combout\,
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_data~35_combout\,
	combout => \U3|ram_data~162_combout\);

-- Location: LCCOMB_X19_Y7_N12
\U3|ram_data~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~163_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_data~162_combout\ & (\U3|ram_data~99_combout\)) # (!\U3|ram_data~162_combout\ & ((\U3|ram_data~67_combout\))))) # (!\U3|ram_address_latch\(3) & (((\U3|ram_data~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~99_combout\,
	datab => \U3|ram_data~67_combout\,
	datac => \U3|ram_address_latch\(3),
	datad => \U3|ram_data~162_combout\,
	combout => \U3|ram_data~163_combout\);

-- Location: LCCOMB_X18_Y9_N4
\U3|ram_data~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~164_combout\ = (\U3|ram_address_latch\(0) & (\U3|ram_address_latch\(1))) # (!\U3|ram_address_latch\(0) & ((\U3|ram_address_latch\(1) & (\U3|ram_data~161_combout\)) # (!\U3|ram_address_latch\(1) & ((\U3|ram_data~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(0),
	datab => \U3|ram_address_latch\(1),
	datac => \U3|ram_data~161_combout\,
	datad => \U3|ram_data~163_combout\,
	combout => \U3|ram_data~164_combout\);

-- Location: LCCOMB_X14_Y8_N8
\U3|ram_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~59_combout\ = (\rtl~7_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~7_combout\ & (\U3|ram_data~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~59_combout\,
	datac => \rtl~7_combout\,
	datad => \data_out[3]~34_combout\,
	combout => \U3|ram_data~59_combout\);

-- Location: LCCOMB_X14_Y8_N26
\U3|ram_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~123_combout\ = (\rtl~15_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~15_combout\ & (\U3|ram_data~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~123_combout\,
	datac => \data_out[3]~34_combout\,
	datad => \rtl~15_combout\,
	combout => \U3|ram_data~123_combout\);

-- Location: LCCOMB_X14_Y8_N4
\U3|ram_data~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~27_combout\ = (\rtl~11_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~11_combout\ & (\U3|ram_data~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~27_combout\,
	datac => \rtl~11_combout\,
	datad => \data_out[3]~34_combout\,
	combout => \U3|ram_data~27_combout\);

-- Location: LCCOMB_X14_Y8_N18
\U3|ram_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~91_combout\ = (\rtl~3_combout\ & ((\data_out[3]~34_combout\))) # (!\rtl~3_combout\ & (\U3|ram_data~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|ram_data~91_combout\,
	datac => \rtl~3_combout\,
	datad => \data_out[3]~34_combout\,
	combout => \U3|ram_data~91_combout\);

-- Location: LCCOMB_X14_Y8_N16
\U3|ram_data~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~165_combout\ = (\U3|ram_address_latch\(3) & ((\U3|ram_address_latch\(2)) # ((\U3|ram_data~91_combout\)))) # (!\U3|ram_address_latch\(3) & (!\U3|ram_address_latch\(2) & (\U3|ram_data~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(3),
	datab => \U3|ram_address_latch\(2),
	datac => \U3|ram_data~27_combout\,
	datad => \U3|ram_data~91_combout\,
	combout => \U3|ram_data~165_combout\);

-- Location: LCCOMB_X14_Y8_N2
\U3|ram_data~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~166_combout\ = (\U3|ram_address_latch\(2) & ((\U3|ram_data~165_combout\ & ((\U3|ram_data~123_combout\))) # (!\U3|ram_data~165_combout\ & (\U3|ram_data~59_combout\)))) # (!\U3|ram_address_latch\(2) & (((\U3|ram_data~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_address_latch\(2),
	datab => \U3|ram_data~59_combout\,
	datac => \U3|ram_data~123_combout\,
	datad => \U3|ram_data~165_combout\,
	combout => \U3|ram_data~166_combout\);

-- Location: LCCOMB_X18_Y9_N28
\U3|ram_data~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|ram_data~167_combout\ = (\U3|ram_address_latch\(0) & ((\U3|ram_data~164_combout\ & ((\U3|ram_data~166_combout\))) # (!\U3|ram_data~164_combout\ & (\U3|ram_data~159_combout\)))) # (!\U3|ram_address_latch\(0) & (((\U3|ram_data~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ram_data~159_combout\,
	datab => \U3|ram_address_latch\(0),
	datac => \U3|ram_data~164_combout\,
	datad => \U3|ram_data~166_combout\,
	combout => \U3|ram_data~167_combout\);

-- Location: LCCOMB_X18_Y9_N22
\data_out[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~30_combout\ = (\data_out[3]~29_combout\) # ((\data_out[3]~28_combout\) # ((\U14|ramrd_latch~q\ & \U3|ram_data~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|ramrd_latch~q\,
	datab => \data_out[3]~29_combout\,
	datac => \data_out[3]~28_combout\,
	datad => \U3|ram_data~167_combout\,
	combout => \data_out[3]~30_combout\);

-- Location: FF_X18_Y9_N9
\U12|grb_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[1]~clkctrl_outclk\,
	asdata => \data_out[3]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grb_latch\(3));

-- Location: LCCOMB_X17_Y8_N0
\U12|gra_latch[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|gra_latch[3]~feeder_combout\ = \data_out[3]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_out[3]~34_combout\,
	combout => \U12|gra_latch[3]~feeder_combout\);

-- Location: FF_X17_Y8_N1
\U12|gra_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[0]~clkctrl_outclk\,
	d => \U12|gra_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|gra_latch\(3));

-- Location: FF_X17_Y9_N19
\U12|grd_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[3]~clkctrl_outclk\,
	asdata => \data_out[3]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grd_latch\(3));

-- Location: LCCOMB_X17_Y9_N24
\U12|grc_latch[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U12|grc_latch[3]~feeder_combout\ = \data_out[3]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~34_combout\,
	combout => \U12|grc_latch[3]~feeder_combout\);

-- Location: FF_X17_Y9_N25
\U12|grc_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U11|grc_grwt[2]~clkctrl_outclk\,
	d => \U12|grc_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U12|grc_latch\(3));

-- Location: LCCOMB_X17_Y9_N18
\data_out[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~32_combout\ = (\data_out[6]~10_combout\ & (\data_out[6]~63_combout\)) # (!\data_out[6]~10_combout\ & ((\data_out[6]~63_combout\ & ((\U12|grc_latch\(3)))) # (!\data_out[6]~63_combout\ & (\U12|grd_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[6]~10_combout\,
	datab => \data_out[6]~63_combout\,
	datac => \U12|grd_latch\(3),
	datad => \U12|grc_latch\(3),
	combout => \data_out[3]~32_combout\);

-- Location: LCCOMB_X18_Y9_N14
\data_out[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~33_combout\ = (\data_out[6]~10_combout\ & ((\data_out[3]~32_combout\ & ((\U12|gra_latch\(3)))) # (!\data_out[3]~32_combout\ & (\U12|grb_latch\(3))))) # (!\data_out[6]~10_combout\ & (((\data_out[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U12|grb_latch\(3),
	datab => \data_out[6]~10_combout\,
	datac => \U12|gra_latch\(3),
	datad => \data_out[3]~32_combout\,
	combout => \data_out[3]~33_combout\);

-- Location: LCCOMB_X18_Y9_N20
\data_out[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~31_combout\ = (\U14|dbfbout_latch~q\ & \U10|data_latch\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|dbfbout_latch~q\,
	datad => \U10|data_latch\(3),
	combout => \data_out[3]~31_combout\);

-- Location: LCCOMB_X18_Y9_N30
\data_out[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~34_combout\ = (\data_out[3]~30_combout\) # ((\data_out[3]~31_combout\) # ((\U12|gr_data_out[7]~0_combout\ & \data_out[3]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out[3]~30_combout\,
	datab => \U12|gr_data_out[7]~0_combout\,
	datac => \data_out[3]~33_combout\,
	datad => \data_out[3]~31_combout\,
	combout => \data_out[3]~34_combout\);

-- Location: FF_X14_Y11_N5
\U5|instruction[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[3]~34_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(11));

-- Location: LCCOMB_X19_Y10_N6
\U14|next_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state~25_combout\ = (\U14|current_state.t10~q\ & ((\U5|instruction\(11)) # (!\U6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t10~q\,
	datab => \U5|instruction\(11),
	datad => \U6|Mux3~0_combout\,
	combout => \U14|next_state~25_combout\);

-- Location: LCCOMB_X19_Y10_N20
\U6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux0~1_combout\ = (\U5|instruction\(12) & (\U5|instruction\(11) & (!\U5|instruction\(14) & \U6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(12),
	datab => \U5|instruction\(11),
	datac => \U5|instruction\(14),
	datad => \U6|Mux0~0_combout\,
	combout => \U6|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y11_N12
\U14|counter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[0]~20_combout\ = \U14|counter\(0) $ (VCC)
-- \U14|counter[0]~21\ = CARRY(\U14|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(0),
	datad => VCC,
	combout => \U14|counter[0]~20_combout\,
	cout => \U14|counter[0]~21\);

-- Location: FF_X25_Y11_N13
\U14|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[0]~20_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(0));

-- Location: LCCOMB_X25_Y11_N14
\U14|counter[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[1]~22_combout\ = (\U14|counter\(1) & (!\U14|counter[0]~21\)) # (!\U14|counter\(1) & ((\U14|counter[0]~21\) # (GND)))
-- \U14|counter[1]~23\ = CARRY((!\U14|counter[0]~21\) # (!\U14|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(1),
	datad => VCC,
	cin => \U14|counter[0]~21\,
	combout => \U14|counter[1]~22_combout\,
	cout => \U14|counter[1]~23\);

-- Location: FF_X25_Y11_N15
\U14|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[1]~22_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(1));

-- Location: LCCOMB_X25_Y11_N16
\U14|counter[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[2]~24_combout\ = (\U14|counter\(2) & (\U14|counter[1]~23\ $ (GND))) # (!\U14|counter\(2) & (!\U14|counter[1]~23\ & VCC))
-- \U14|counter[2]~25\ = CARRY((\U14|counter\(2) & !\U14|counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(2),
	datad => VCC,
	cin => \U14|counter[1]~23\,
	combout => \U14|counter[2]~24_combout\,
	cout => \U14|counter[2]~25\);

-- Location: FF_X25_Y11_N17
\U14|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[2]~24_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(2));

-- Location: LCCOMB_X25_Y11_N18
\U14|counter[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[3]~26_combout\ = (\U14|counter\(3) & (!\U14|counter[2]~25\)) # (!\U14|counter\(3) & ((\U14|counter[2]~25\) # (GND)))
-- \U14|counter[3]~27\ = CARRY((!\U14|counter[2]~25\) # (!\U14|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(3),
	datad => VCC,
	cin => \U14|counter[2]~25\,
	combout => \U14|counter[3]~26_combout\,
	cout => \U14|counter[3]~27\);

-- Location: FF_X25_Y11_N19
\U14|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[3]~26_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(3));

-- Location: LCCOMB_X25_Y11_N20
\U14|counter[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[4]~28_combout\ = (\U14|counter\(4) & (\U14|counter[3]~27\ $ (GND))) # (!\U14|counter\(4) & (!\U14|counter[3]~27\ & VCC))
-- \U14|counter[4]~29\ = CARRY((\U14|counter\(4) & !\U14|counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(4),
	datad => VCC,
	cin => \U14|counter[3]~27\,
	combout => \U14|counter[4]~28_combout\,
	cout => \U14|counter[4]~29\);

-- Location: FF_X25_Y11_N21
\U14|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[4]~28_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(4));

-- Location: LCCOMB_X25_Y11_N22
\U14|counter[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[5]~30_combout\ = (\U14|counter\(5) & (!\U14|counter[4]~29\)) # (!\U14|counter\(5) & ((\U14|counter[4]~29\) # (GND)))
-- \U14|counter[5]~31\ = CARRY((!\U14|counter[4]~29\) # (!\U14|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(5),
	datad => VCC,
	cin => \U14|counter[4]~29\,
	combout => \U14|counter[5]~30_combout\,
	cout => \U14|counter[5]~31\);

-- Location: FF_X25_Y11_N23
\U14|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[5]~30_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(5));

-- Location: LCCOMB_X25_Y11_N24
\U14|counter[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[6]~32_combout\ = (\U14|counter\(6) & (\U14|counter[5]~31\ $ (GND))) # (!\U14|counter\(6) & (!\U14|counter[5]~31\ & VCC))
-- \U14|counter[6]~33\ = CARRY((\U14|counter\(6) & !\U14|counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(6),
	datad => VCC,
	cin => \U14|counter[5]~31\,
	combout => \U14|counter[6]~32_combout\,
	cout => \U14|counter[6]~33\);

-- Location: FF_X25_Y11_N25
\U14|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[6]~32_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(6));

-- Location: LCCOMB_X25_Y11_N26
\U14|counter[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[7]~34_combout\ = (\U14|counter\(7) & (!\U14|counter[6]~33\)) # (!\U14|counter\(7) & ((\U14|counter[6]~33\) # (GND)))
-- \U14|counter[7]~35\ = CARRY((!\U14|counter[6]~33\) # (!\U14|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(7),
	datad => VCC,
	cin => \U14|counter[6]~33\,
	combout => \U14|counter[7]~34_combout\,
	cout => \U14|counter[7]~35\);

-- Location: FF_X25_Y11_N27
\U14|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[7]~34_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(7));

-- Location: LCCOMB_X25_Y11_N28
\U14|counter[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[8]~36_combout\ = (\U14|counter\(8) & (\U14|counter[7]~35\ $ (GND))) # (!\U14|counter\(8) & (!\U14|counter[7]~35\ & VCC))
-- \U14|counter[8]~37\ = CARRY((\U14|counter\(8) & !\U14|counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(8),
	datad => VCC,
	cin => \U14|counter[7]~35\,
	combout => \U14|counter[8]~36_combout\,
	cout => \U14|counter[8]~37\);

-- Location: FF_X25_Y11_N29
\U14|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[8]~36_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(8));

-- Location: LCCOMB_X25_Y11_N30
\U14|counter[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[9]~38_combout\ = (\U14|counter\(9) & (!\U14|counter[8]~37\)) # (!\U14|counter\(9) & ((\U14|counter[8]~37\) # (GND)))
-- \U14|counter[9]~39\ = CARRY((!\U14|counter[8]~37\) # (!\U14|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(9),
	datad => VCC,
	cin => \U14|counter[8]~37\,
	combout => \U14|counter[9]~38_combout\,
	cout => \U14|counter[9]~39\);

-- Location: FF_X25_Y11_N31
\U14|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[9]~38_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(9));

-- Location: LCCOMB_X25_Y10_N0
\U14|counter[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[10]~40_combout\ = (\U14|counter\(10) & (\U14|counter[9]~39\ $ (GND))) # (!\U14|counter\(10) & (!\U14|counter[9]~39\ & VCC))
-- \U14|counter[10]~41\ = CARRY((\U14|counter\(10) & !\U14|counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(10),
	datad => VCC,
	cin => \U14|counter[9]~39\,
	combout => \U14|counter[10]~40_combout\,
	cout => \U14|counter[10]~41\);

-- Location: FF_X25_Y10_N1
\U14|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[10]~40_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(10));

-- Location: LCCOMB_X25_Y10_N2
\U14|counter[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[11]~42_combout\ = (\U14|counter\(11) & (!\U14|counter[10]~41\)) # (!\U14|counter\(11) & ((\U14|counter[10]~41\) # (GND)))
-- \U14|counter[11]~43\ = CARRY((!\U14|counter[10]~41\) # (!\U14|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(11),
	datad => VCC,
	cin => \U14|counter[10]~41\,
	combout => \U14|counter[11]~42_combout\,
	cout => \U14|counter[11]~43\);

-- Location: FF_X25_Y10_N3
\U14|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[11]~42_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(11));

-- Location: LCCOMB_X25_Y10_N4
\U14|counter[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[12]~44_combout\ = (\U14|counter\(12) & (\U14|counter[11]~43\ $ (GND))) # (!\U14|counter\(12) & (!\U14|counter[11]~43\ & VCC))
-- \U14|counter[12]~45\ = CARRY((\U14|counter\(12) & !\U14|counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(12),
	datad => VCC,
	cin => \U14|counter[11]~43\,
	combout => \U14|counter[12]~44_combout\,
	cout => \U14|counter[12]~45\);

-- Location: FF_X25_Y10_N5
\U14|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[12]~44_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(12));

-- Location: LCCOMB_X25_Y10_N6
\U14|counter[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[13]~46_combout\ = (\U14|counter\(13) & (!\U14|counter[12]~45\)) # (!\U14|counter\(13) & ((\U14|counter[12]~45\) # (GND)))
-- \U14|counter[13]~47\ = CARRY((!\U14|counter[12]~45\) # (!\U14|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(13),
	datad => VCC,
	cin => \U14|counter[12]~45\,
	combout => \U14|counter[13]~46_combout\,
	cout => \U14|counter[13]~47\);

-- Location: FF_X25_Y10_N7
\U14|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[13]~46_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(13));

-- Location: LCCOMB_X25_Y10_N8
\U14|counter[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[14]~48_combout\ = (\U14|counter\(14) & (\U14|counter[13]~47\ $ (GND))) # (!\U14|counter\(14) & (!\U14|counter[13]~47\ & VCC))
-- \U14|counter[14]~49\ = CARRY((\U14|counter\(14) & !\U14|counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(14),
	datad => VCC,
	cin => \U14|counter[13]~47\,
	combout => \U14|counter[14]~48_combout\,
	cout => \U14|counter[14]~49\);

-- Location: FF_X25_Y10_N9
\U14|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[14]~48_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(14));

-- Location: LCCOMB_X25_Y10_N10
\U14|counter[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[15]~50_combout\ = (\U14|counter\(15) & (!\U14|counter[14]~49\)) # (!\U14|counter\(15) & ((\U14|counter[14]~49\) # (GND)))
-- \U14|counter[15]~51\ = CARRY((!\U14|counter[14]~49\) # (!\U14|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(15),
	datad => VCC,
	cin => \U14|counter[14]~49\,
	combout => \U14|counter[15]~50_combout\,
	cout => \U14|counter[15]~51\);

-- Location: FF_X25_Y10_N11
\U14|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[15]~50_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(15));

-- Location: LCCOMB_X25_Y10_N12
\U14|counter[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[16]~52_combout\ = (\U14|counter\(16) & (\U14|counter[15]~51\ $ (GND))) # (!\U14|counter\(16) & (!\U14|counter[15]~51\ & VCC))
-- \U14|counter[16]~53\ = CARRY((\U14|counter\(16) & !\U14|counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U14|counter\(16),
	datad => VCC,
	cin => \U14|counter[15]~51\,
	combout => \U14|counter[16]~52_combout\,
	cout => \U14|counter[16]~53\);

-- Location: FF_X25_Y10_N13
\U14|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[16]~52_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(16));

-- Location: LCCOMB_X25_Y10_N14
\U14|counter[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[17]~54_combout\ = (\U14|counter\(17) & (!\U14|counter[16]~53\)) # (!\U14|counter\(17) & ((\U14|counter[16]~53\) # (GND)))
-- \U14|counter[17]~55\ = CARRY((!\U14|counter[16]~53\) # (!\U14|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(17),
	datad => VCC,
	cin => \U14|counter[16]~53\,
	combout => \U14|counter[17]~54_combout\,
	cout => \U14|counter[17]~55\);

-- Location: FF_X25_Y10_N15
\U14|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[17]~54_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(17));

-- Location: LCCOMB_X25_Y10_N16
\U14|counter[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[18]~56_combout\ = (\U14|counter\(18) & (\U14|counter[17]~55\ $ (GND))) # (!\U14|counter\(18) & (!\U14|counter[17]~55\ & VCC))
-- \U14|counter[18]~57\ = CARRY((\U14|counter\(18) & !\U14|counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(18),
	datad => VCC,
	cin => \U14|counter[17]~55\,
	combout => \U14|counter[18]~56_combout\,
	cout => \U14|counter[18]~57\);

-- Location: FF_X25_Y10_N17
\U14|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[18]~56_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(18));

-- Location: LCCOMB_X25_Y10_N18
\U14|counter[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|counter[19]~58_combout\ = \U14|counter\(19) $ (\U14|counter[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U14|counter\(19),
	cin => \U14|counter[18]~57\,
	combout => \U14|counter[19]~58_combout\);

-- Location: FF_X25_Y10_N19
\U14|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|counter[19]~58_combout\,
	sclr => \U14|counter\(19),
	ena => \U14|current_state.t18~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|counter\(19));

-- Location: LCCOMB_X19_Y10_N18
\U14|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~0_combout\ = (\U14|current_state.t18~q\ & !\U14|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|current_state.t18~q\,
	datad => \U14|counter\(19),
	combout => \U14|Selector19~0_combout\);

-- Location: LCCOMB_X19_Y10_N2
\U14|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|process_0~0_combout\ = (((!\U6|Mux6~0_combout\) # (!\U14|Selector13~4_combout\)) # (!\U14|Selector15~0_combout\)) # (!\U14|Selector17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector17~0_combout\,
	datab => \U14|Selector15~0_combout\,
	datac => \U14|Selector13~4_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|process_0~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\U14|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector19~1_combout\ = (\U14|Selector19~0_combout\) # ((\U6|Mux0~1_combout\ & (\U14|current_state.t10~q\ & !\U14|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector19~0_combout\,
	datab => \U6|Mux0~1_combout\,
	datac => \U14|current_state.t10~q\,
	datad => \U14|process_0~0_combout\,
	combout => \U14|Selector19~1_combout\);

-- Location: FF_X19_Y10_N9
\U14|next_state.t18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t18~q\);

-- Location: FF_X19_Y10_N19
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

-- Location: LCCOMB_X19_Y10_N10
\U14|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~1_combout\ = (\U14|current_state.t16~q\) # ((\U14|current_state.t18~q\ & \U14|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t16~q\,
	datab => \U14|current_state.t18~q\,
	datad => \U14|counter\(19),
	combout => \U14|Selector16~1_combout\);

-- Location: LCCOMB_X19_Y10_N26
\U14|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~0_combout\ = (\U14|current_state.t_rst_2~q\) # ((\U14|current_state.t14~q\ & ((\U5|instruction\(15)) # (!\U6|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U14|current_state.t_rst_2~q\,
	datac => \U14|current_state.t14~q\,
	datad => \U6|Mux5~0_combout\,
	combout => \U14|Selector16~0_combout\);

-- Location: LCCOMB_X19_Y10_N14
\U14|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~2_combout\ = (\U14|Selector16~1_combout\) # ((\U14|Selector16~0_combout\) # ((\U14|current_state.t12~q\ & !\U14|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|Selector16~1_combout\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|Selector16~0_combout\,
	datad => \U14|Selector17~0_combout\,
	combout => \U14|Selector16~2_combout\);

-- Location: LCCOMB_X19_Y10_N12
\U14|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector16~3_combout\ = (\U14|Selector16~2_combout\) # ((\U14|next_state~25_combout\ & (!\U6|Mux0~1_combout\ & !\U14|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|next_state~25_combout\,
	datab => \U6|Mux0~1_combout\,
	datac => \U14|Selector16~2_combout\,
	datad => \U14|process_0~0_combout\,
	combout => \U14|Selector16~3_combout\);

-- Location: FF_X19_Y10_N13
\U14|next_state.t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t1~q\);

-- Location: LCCOMB_X17_Y12_N28
\U14|current_state.t1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t1~feeder_combout\ = \U14|next_state.t1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|next_state.t1~q\,
	combout => \U14|current_state.t1~feeder_combout\);

-- Location: FF_X17_Y12_N29
\U14|current_state.t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t1~q\);

-- Location: LCCOMB_X13_Y12_N30
\U14|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector17~1_combout\ = (\U14|current_state.t1~q\) # ((\U14|current_state.t12~q\ & (\U14|Selector17~0_combout\ & !\U6|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t1~q\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|Selector17~0_combout\,
	datad => \U6|Mux6~0_combout\,
	combout => \U14|Selector17~1_combout\);

-- Location: FF_X13_Y12_N31
\U14|next_state.t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t2~q\);

-- Location: FF_X17_Y12_N27
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

-- Location: FF_X17_Y11_N13
\U14|next_state.t3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t3~q\);

-- Location: LCCOMB_X13_Y11_N22
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

-- Location: FF_X13_Y11_N23
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

-- Location: FF_X13_Y11_N31
\U14|next_state.t4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t4~q\);

-- Location: FF_X13_Y11_N5
\U14|current_state.t4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t4~q\);

-- Location: FF_X13_Y11_N1
\U14|next_state.t5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|current_state.t4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t5~q\);

-- Location: LCCOMB_X13_Y11_N10
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

-- Location: FF_X13_Y11_N11
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

-- Location: LCCOMB_X17_Y12_N14
\U14|next_state.t6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state.t6~feeder_combout\ = \U14|current_state.t5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|current_state.t5~q\,
	combout => \U14|next_state.t6~feeder_combout\);

-- Location: FF_X17_Y12_N15
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

-- Location: FF_X17_Y12_N31
\U14|current_state.t6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t6~q\);

-- Location: FF_X13_Y11_N13
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

-- Location: LCCOMB_X13_Y11_N28
\U14|current_state.t7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t7~feeder_combout\ = \U14|next_state.t7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U14|next_state.t7~q\,
	combout => \U14|current_state.t7~feeder_combout\);

-- Location: FF_X13_Y11_N29
\U14|current_state.t7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|current_state.t7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t7~q\);

-- Location: LCCOMB_X13_Y11_N14
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

-- Location: FF_X13_Y11_N15
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

-- Location: LCCOMB_X13_Y11_N26
\U14|current_state.t8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|current_state.t8~feeder_combout\ = \U14|next_state.t8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|next_state.t8~q\,
	combout => \U14|current_state.t8~feeder_combout\);

-- Location: FF_X13_Y11_N27
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

-- Location: LCCOMB_X13_Y11_N0
\U14|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector4~1_combout\ = (\U14|current_state.t8~q\) # ((\U14|current_state.t4~q\) # ((\U14|enirin_latch~q\ & \U14|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t8~q\,
	datab => \U14|enirin_latch~q\,
	datac => \U14|current_state.t4~q\,
	datad => \U14|Selector4~0_combout\,
	combout => \U14|Selector4~1_combout\);

-- Location: LCCOMB_X13_Y11_N2
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

-- Location: FF_X13_Y11_N3
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

-- Location: CLKCTRL_G0
\U14|enirin_latch~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U14|enirin_latch~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U14|enirin_latch~clkctrl_outclk\);

-- Location: FF_X14_Y11_N11
\U5|instruction[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U14|enirin_latch~clkctrl_outclk\,
	asdata => \data_out[7]~62_combout\,
	sload => VCC,
	ena => \U5|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|instruction\(15));

-- Location: LCCOMB_X14_Y11_N24
\U6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux3~0_combout\ = (!\U5|instruction\(15) & (!\U5|instruction\(14) & (!\U5|instruction\(13) & !\U5|instruction\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|instruction\(15),
	datab => \U5|instruction\(14),
	datac => \U5|instruction\(13),
	datad => \U5|instruction\(12),
	combout => \U6|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y10_N16
\U14|next_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|next_state~27_combout\ = (\U14|current_state.t10~q\ & (\U14|process_0~0_combout\ & ((\U5|instruction\(11)) # (!\U6|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Mux3~0_combout\,
	datab => \U5|instruction\(11),
	datac => \U14|current_state.t10~q\,
	datad => \U14|process_0~0_combout\,
	combout => \U14|next_state~27_combout\);

-- Location: FF_X19_Y10_N17
\U14|next_state.t11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	d => \U14|next_state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|next_state.t11~q\);

-- Location: FF_X14_Y12_N27
\U14|current_state.t11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|clk_out~clkctrl_outclk\,
	asdata => \U14|next_state.t11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U14|current_state.t11~q\);

-- Location: LCCOMB_X13_Y10_N2
\U6|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux1~5_combout\ = (!\U5|instruction\(13) & (\U5|instruction\(15) & \U6|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|instruction\(13),
	datac => \U5|instruction\(15),
	datad => \U6|Mux1~4_combout\,
	combout => \U6|Mux1~5_combout\);

-- Location: LCCOMB_X13_Y10_N22
\U14|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|Selector21~0_combout\ = (\U6|Mux1~5_combout\ & (!\U14|current_state.t12~q\ & ((\U14|current_state.t11~q\) # (\U14|enled_latch~q\)))) # (!\U6|Mux1~5_combout\ & (((\U14|enled_latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|current_state.t11~q\,
	datab => \U14|current_state.t12~q\,
	datac => \U14|enled_latch~q\,
	datad => \U6|Mux1~5_combout\,
	combout => \U14|Selector21~0_combout\);

-- Location: LCCOMB_X13_Y10_N16
\U14|enled_latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U14|enled_latch~feeder_combout\ = \U14|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U14|Selector21~0_combout\,
	combout => \U14|enled_latch~feeder_combout\);

-- Location: FF_X13_Y10_N17
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

-- Location: CLKCTRL_G3
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

-- Location: M9K_X15_Y9_N0
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

-- Location: LCCOMB_X13_Y9_N24
\U13|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux8~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a8\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datab => \U13|Ram0_rtl_0|auto_generated|ram_block1a8\,
	datac => \U13|current_led_sel\(1),
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \U13|Mux8~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\U13|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux8~1_combout\ = (!\U13|Mux8~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a16\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a16\,
	datad => \U13|Mux8~0_combout\,
	combout => \U13|Mux8~1_combout\);

-- Location: FF_X13_Y9_N3
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

-- Location: LCCOMB_X13_Y9_N20
\U13|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux7~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a9\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a9\,
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a1\,
	combout => \U13|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y9_N14
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

-- Location: FF_X13_Y9_N15
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

-- Location: LCCOMB_X13_Y9_N4
\U13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux6~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a10\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a10\,
	datab => \U13|current_led_sel\(1),
	datac => \U13|current_led_sel\(0),
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a2\,
	combout => \U13|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y9_N0
\U13|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux6~1_combout\ = (!\U13|Mux6~0_combout\ & ((!\U13|current_led_sel\(1)) # (!\U13|Ram0_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a18\,
	datac => \U13|Mux6~0_combout\,
	datad => \U13|current_led_sel\(1),
	combout => \U13|Mux6~1_combout\);

-- Location: FF_X13_Y9_N1
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

-- Location: LCCOMB_X13_Y9_N18
\U13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux5~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a11\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a3\,
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a11\,
	combout => \U13|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y9_N16
\U13|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux5~1_combout\ = (!\U13|Mux5~0_combout\ & ((!\U13|current_led_sel\(1)) # (!\U13|Ram0_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a19\,
	datac => \U13|current_led_sel\(1),
	datad => \U13|Mux5~0_combout\,
	combout => \U13|Mux5~1_combout\);

-- Location: FF_X13_Y9_N17
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

-- Location: LCCOMB_X12_Y9_N28
\U13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux4~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a12\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a4\,
	datab => \U13|Ram0_rtl_0|auto_generated|ram_block1a12\,
	datac => \U13|current_led_sel\(1),
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y9_N12
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

-- Location: FF_X12_Y9_N13
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

-- Location: LCCOMB_X12_Y9_N18
\U13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux3~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a13\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a13\,
	datab => \U13|Ram0_rtl_0|auto_generated|ram_block1a5\,
	datac => \U13|current_led_sel\(1),
	datad => \U13|current_led_sel\(0),
	combout => \U13|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y9_N30
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

-- Location: FF_X12_Y9_N31
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

-- Location: LCCOMB_X13_Y9_N8
\U13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux2~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a14\))) # (!\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|current_led_sel\(0),
	datab => \U13|current_led_sel\(1),
	datac => \U13|Ram0_rtl_0|auto_generated|ram_block1a6\,
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a14\,
	combout => \U13|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\U13|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux2~1_combout\ = (!\U13|Mux2~0_combout\ & ((!\U13|Ram0_rtl_0|auto_generated|ram_block1a22\) # (!\U13|current_led_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|current_led_sel\(1),
	datac => \U13|Mux2~0_combout\,
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a22\,
	combout => \U13|Mux2~1_combout\);

-- Location: FF_X13_Y9_N29
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

-- Location: LCCOMB_X13_Y9_N10
\U13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux1~0_combout\ = (!\U13|current_led_sel\(1) & ((\U13|current_led_sel\(0) & (\U13|Ram0_rtl_0|auto_generated|ram_block1a15\)) # (!\U13|current_led_sel\(0) & ((\U13|Ram0_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U13|Ram0_rtl_0|auto_generated|ram_block1a15\,
	datab => \U13|current_led_sel\(0),
	datac => \U13|current_led_sel\(1),
	datad => \U13|Ram0_rtl_0|auto_generated|ram_block1a7\,
	combout => \U13|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y9_N12
\U13|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U13|Mux1~1_combout\ = (!\U13|Mux1~0_combout\ & ((!\U13|current_led_sel\(1)) # (!\U13|Ram0_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U13|Ram0_rtl_0|auto_generated|ram_block1a23\,
	datac => \U13|current_led_sel\(1),
	datad => \U13|Mux1~0_combout\,
	combout => \U13|Mux1~1_combout\);

-- Location: FF_X13_Y9_N13
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
END structure;


