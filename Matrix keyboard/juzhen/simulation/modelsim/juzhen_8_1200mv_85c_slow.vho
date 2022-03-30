-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "03/29/2022 19:51:17"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	juzhen IS
    PORT (
	kin : IN std_logic_vector(3 DOWNTO 0);
	kout : BUFFER std_logic_vector(3 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	segcs : OUT std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END juzhen;

-- Design Ports Information
-- kout[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kout[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kout[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kout[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kin[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kin[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kin[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kin[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF juzhen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_kin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_kout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_segcs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kout[0]~output_o\ : std_logic;
SIGNAL \kout[1]~output_o\ : std_logic;
SIGNAL \kout[2]~output_o\ : std_logic;
SIGNAL \kout[3]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \segcs[0]~output_o\ : std_logic;
SIGNAL \segcs[1]~output_o\ : std_logic;
SIGNAL \segcs[2]~output_o\ : std_logic;
SIGNAL \segcs[3]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_200Hz[0]~18_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \cnt_200Hz[0]~19\ : std_logic;
SIGNAL \cnt_200Hz[1]~20_combout\ : std_logic;
SIGNAL \cnt_200Hz[1]~21\ : std_logic;
SIGNAL \cnt_200Hz[2]~22_combout\ : std_logic;
SIGNAL \cnt_200Hz[2]~23\ : std_logic;
SIGNAL \cnt_200Hz[3]~24_combout\ : std_logic;
SIGNAL \cnt_200Hz[3]~25\ : std_logic;
SIGNAL \cnt_200Hz[4]~26_combout\ : std_logic;
SIGNAL \cnt_200Hz[4]~27\ : std_logic;
SIGNAL \cnt_200Hz[5]~28_combout\ : std_logic;
SIGNAL \cnt_200Hz[5]~29\ : std_logic;
SIGNAL \cnt_200Hz[6]~30_combout\ : std_logic;
SIGNAL \cnt_200Hz[6]~31\ : std_logic;
SIGNAL \cnt_200Hz[7]~32_combout\ : std_logic;
SIGNAL \cnt_200Hz[7]~33\ : std_logic;
SIGNAL \cnt_200Hz[8]~34_combout\ : std_logic;
SIGNAL \cnt_200Hz[8]~35\ : std_logic;
SIGNAL \cnt_200Hz[9]~36_combout\ : std_logic;
SIGNAL \cnt_200Hz[9]~37\ : std_logic;
SIGNAL \cnt_200Hz[10]~38_combout\ : std_logic;
SIGNAL \cnt_200Hz[10]~39\ : std_logic;
SIGNAL \cnt_200Hz[11]~40_combout\ : std_logic;
SIGNAL \cnt_200Hz[11]~41\ : std_logic;
SIGNAL \cnt_200Hz[12]~42_combout\ : std_logic;
SIGNAL \cnt_200Hz[12]~43\ : std_logic;
SIGNAL \cnt_200Hz[13]~44_combout\ : std_logic;
SIGNAL \cnt_200Hz[13]~45\ : std_logic;
SIGNAL \cnt_200Hz[14]~46_combout\ : std_logic;
SIGNAL \cnt_200Hz[14]~47\ : std_logic;
SIGNAL \cnt_200Hz[15]~48_combout\ : std_logic;
SIGNAL \cnt_200Hz[15]~49\ : std_logic;
SIGNAL \cnt_200Hz[16]~50_combout\ : std_logic;
SIGNAL \cnt_200Hz[16]~51\ : std_logic;
SIGNAL \cnt_200Hz[17]~52_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \kout[0]~reg0_q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LED_UI~0_combout\ : std_logic;
SIGNAL \LED_UI~1_combout\ : std_logic;
SIGNAL \LED_UI~2_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \kout~0_combout\ : std_logic;
SIGNAL \kout[1]~reg0_q\ : std_logic;
SIGNAL \LED_UI~5_combout\ : std_logic;
SIGNAL \LED_UI~4_combout\ : std_logic;
SIGNAL \LED_UI~6_combout\ : std_logic;
SIGNAL \LED_UI~7_combout\ : std_logic;
SIGNAL \LED_UI~8_combout\ : std_logic;
SIGNAL \LED_UI~3_combout\ : std_logic;
SIGNAL \kout[2]~1_combout\ : std_logic;
SIGNAL \kout~2_combout\ : std_logic;
SIGNAL \kout[2]~reg0_q\ : std_logic;
SIGNAL \kout~3_combout\ : std_logic;
SIGNAL \kout[3]~reg0_q\ : std_logic;
SIGNAL \kin[2]~input_o\ : std_logic;
SIGNAL \kin[0]~input_o\ : std_logic;
SIGNAL \kin[3]~input_o\ : std_logic;
SIGNAL \kin[1]~input_o\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \led[0]~reg0_q\ : std_logic;
SIGNAL \led~2_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \led~5_combout\ : std_logic;
SIGNAL \led~3_combout\ : std_logic;
SIGNAL \led~4_combout\ : std_logic;
SIGNAL \led~6_combout\ : std_logic;
SIGNAL \led~7_combout\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \led~10_combout\ : std_logic;
SIGNAL \led~8_combout\ : std_logic;
SIGNAL \led~9_combout\ : std_logic;
SIGNAL \led~11_combout\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;
SIGNAL \led~12_combout\ : std_logic;
SIGNAL \led~13_combout\ : std_logic;
SIGNAL \led~14_combout\ : std_logic;
SIGNAL \led[4]~reg0_q\ : std_logic;
SIGNAL \led[5]~reg0_q\ : std_logic;
SIGNAL cnt_200Hz : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_led~1_combout\ : std_logic;

BEGIN

ww_kin <= kin;
kout <= ww_kout;
led <= ww_led;
ww_clk <= clk;
segcs <= ww_segcs;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_led~1_combout\ <= NOT \led~1_combout\;

-- Location: IOOBUF_X25_Y0_N2
\kout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \kout[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\kout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \kout[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\kout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \kout[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\kout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \kout[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\segcs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segcs[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\segcs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segcs[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\segcs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segcs[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\segcs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segcs[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y3_N14
\cnt_200Hz[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[0]~18_combout\ = cnt_200Hz(0) $ (VCC)
-- \cnt_200Hz[0]~19\ = CARRY(cnt_200Hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(0),
	datad => VCC,
	combout => \cnt_200Hz[0]~18_combout\,
	cout => \cnt_200Hz[0]~19\);

-- Location: LCCOMB_X16_Y2_N24
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!cnt_200Hz(12) & (!cnt_200Hz(11) & (!cnt_200Hz(13) & !cnt_200Hz(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(12),
	datab => cnt_200Hz(11),
	datac => cnt_200Hz(13),
	datad => cnt_200Hz(14),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y3_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!cnt_200Hz(8) & (((!cnt_200Hz(6) & !cnt_200Hz(5))) # (!cnt_200Hz(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(6),
	datab => cnt_200Hz(5),
	datac => cnt_200Hz(8),
	datad => cnt_200Hz(7),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y2_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~2_combout\ & (((\LessThan0~3_combout\) # (!cnt_200Hz(10))) # (!cnt_200Hz(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(9),
	datab => \LessThan0~2_combout\,
	datac => cnt_200Hz(10),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X16_Y2_N22
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (cnt_200Hz(17)) # ((cnt_200Hz(15) & (cnt_200Hz(16) & !\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(15),
	datab => cnt_200Hz(17),
	datac => cnt_200Hz(16),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~4_combout\);

-- Location: FF_X16_Y3_N15
\cnt_200Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[0]~18_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(0));

-- Location: LCCOMB_X16_Y3_N16
\cnt_200Hz[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[1]~20_combout\ = (cnt_200Hz(1) & (!\cnt_200Hz[0]~19\)) # (!cnt_200Hz(1) & ((\cnt_200Hz[0]~19\) # (GND)))
-- \cnt_200Hz[1]~21\ = CARRY((!\cnt_200Hz[0]~19\) # (!cnt_200Hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(1),
	datad => VCC,
	cin => \cnt_200Hz[0]~19\,
	combout => \cnt_200Hz[1]~20_combout\,
	cout => \cnt_200Hz[1]~21\);

-- Location: FF_X16_Y3_N17
\cnt_200Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[1]~20_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(1));

-- Location: LCCOMB_X16_Y3_N18
\cnt_200Hz[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[2]~22_combout\ = (cnt_200Hz(2) & (\cnt_200Hz[1]~21\ $ (GND))) # (!cnt_200Hz(2) & (!\cnt_200Hz[1]~21\ & VCC))
-- \cnt_200Hz[2]~23\ = CARRY((cnt_200Hz(2) & !\cnt_200Hz[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(2),
	datad => VCC,
	cin => \cnt_200Hz[1]~21\,
	combout => \cnt_200Hz[2]~22_combout\,
	cout => \cnt_200Hz[2]~23\);

-- Location: FF_X16_Y3_N19
\cnt_200Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[2]~22_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(2));

-- Location: LCCOMB_X16_Y3_N20
\cnt_200Hz[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[3]~24_combout\ = (cnt_200Hz(3) & (!\cnt_200Hz[2]~23\)) # (!cnt_200Hz(3) & ((\cnt_200Hz[2]~23\) # (GND)))
-- \cnt_200Hz[3]~25\ = CARRY((!\cnt_200Hz[2]~23\) # (!cnt_200Hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(3),
	datad => VCC,
	cin => \cnt_200Hz[2]~23\,
	combout => \cnt_200Hz[3]~24_combout\,
	cout => \cnt_200Hz[3]~25\);

-- Location: FF_X16_Y3_N21
\cnt_200Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[3]~24_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(3));

-- Location: LCCOMB_X16_Y3_N22
\cnt_200Hz[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[4]~26_combout\ = (cnt_200Hz(4) & (\cnt_200Hz[3]~25\ $ (GND))) # (!cnt_200Hz(4) & (!\cnt_200Hz[3]~25\ & VCC))
-- \cnt_200Hz[4]~27\ = CARRY((cnt_200Hz(4) & !\cnt_200Hz[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(4),
	datad => VCC,
	cin => \cnt_200Hz[3]~25\,
	combout => \cnt_200Hz[4]~26_combout\,
	cout => \cnt_200Hz[4]~27\);

-- Location: FF_X16_Y3_N23
\cnt_200Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[4]~26_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(4));

-- Location: LCCOMB_X16_Y3_N24
\cnt_200Hz[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[5]~28_combout\ = (cnt_200Hz(5) & (!\cnt_200Hz[4]~27\)) # (!cnt_200Hz(5) & ((\cnt_200Hz[4]~27\) # (GND)))
-- \cnt_200Hz[5]~29\ = CARRY((!\cnt_200Hz[4]~27\) # (!cnt_200Hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(5),
	datad => VCC,
	cin => \cnt_200Hz[4]~27\,
	combout => \cnt_200Hz[5]~28_combout\,
	cout => \cnt_200Hz[5]~29\);

-- Location: FF_X16_Y3_N25
\cnt_200Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[5]~28_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(5));

-- Location: LCCOMB_X16_Y3_N26
\cnt_200Hz[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[6]~30_combout\ = (cnt_200Hz(6) & (\cnt_200Hz[5]~29\ $ (GND))) # (!cnt_200Hz(6) & (!\cnt_200Hz[5]~29\ & VCC))
-- \cnt_200Hz[6]~31\ = CARRY((cnt_200Hz(6) & !\cnt_200Hz[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(6),
	datad => VCC,
	cin => \cnt_200Hz[5]~29\,
	combout => \cnt_200Hz[6]~30_combout\,
	cout => \cnt_200Hz[6]~31\);

-- Location: FF_X16_Y3_N27
\cnt_200Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[6]~30_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(6));

-- Location: LCCOMB_X16_Y3_N28
\cnt_200Hz[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[7]~32_combout\ = (cnt_200Hz(7) & (!\cnt_200Hz[6]~31\)) # (!cnt_200Hz(7) & ((\cnt_200Hz[6]~31\) # (GND)))
-- \cnt_200Hz[7]~33\ = CARRY((!\cnt_200Hz[6]~31\) # (!cnt_200Hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(7),
	datad => VCC,
	cin => \cnt_200Hz[6]~31\,
	combout => \cnt_200Hz[7]~32_combout\,
	cout => \cnt_200Hz[7]~33\);

-- Location: FF_X16_Y3_N29
\cnt_200Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[7]~32_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(7));

-- Location: LCCOMB_X16_Y3_N30
\cnt_200Hz[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[8]~34_combout\ = (cnt_200Hz(8) & (\cnt_200Hz[7]~33\ $ (GND))) # (!cnt_200Hz(8) & (!\cnt_200Hz[7]~33\ & VCC))
-- \cnt_200Hz[8]~35\ = CARRY((cnt_200Hz(8) & !\cnt_200Hz[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(8),
	datad => VCC,
	cin => \cnt_200Hz[7]~33\,
	combout => \cnt_200Hz[8]~34_combout\,
	cout => \cnt_200Hz[8]~35\);

-- Location: FF_X16_Y3_N31
\cnt_200Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[8]~34_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(8));

-- Location: LCCOMB_X16_Y2_N0
\cnt_200Hz[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[9]~36_combout\ = (cnt_200Hz(9) & (!\cnt_200Hz[8]~35\)) # (!cnt_200Hz(9) & ((\cnt_200Hz[8]~35\) # (GND)))
-- \cnt_200Hz[9]~37\ = CARRY((!\cnt_200Hz[8]~35\) # (!cnt_200Hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(9),
	datad => VCC,
	cin => \cnt_200Hz[8]~35\,
	combout => \cnt_200Hz[9]~36_combout\,
	cout => \cnt_200Hz[9]~37\);

-- Location: FF_X16_Y2_N1
\cnt_200Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[9]~36_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(9));

-- Location: LCCOMB_X16_Y2_N2
\cnt_200Hz[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[10]~38_combout\ = (cnt_200Hz(10) & (\cnt_200Hz[9]~37\ $ (GND))) # (!cnt_200Hz(10) & (!\cnt_200Hz[9]~37\ & VCC))
-- \cnt_200Hz[10]~39\ = CARRY((cnt_200Hz(10) & !\cnt_200Hz[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(10),
	datad => VCC,
	cin => \cnt_200Hz[9]~37\,
	combout => \cnt_200Hz[10]~38_combout\,
	cout => \cnt_200Hz[10]~39\);

-- Location: FF_X16_Y2_N3
\cnt_200Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[10]~38_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(10));

-- Location: LCCOMB_X16_Y2_N4
\cnt_200Hz[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[11]~40_combout\ = (cnt_200Hz(11) & (!\cnt_200Hz[10]~39\)) # (!cnt_200Hz(11) & ((\cnt_200Hz[10]~39\) # (GND)))
-- \cnt_200Hz[11]~41\ = CARRY((!\cnt_200Hz[10]~39\) # (!cnt_200Hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(11),
	datad => VCC,
	cin => \cnt_200Hz[10]~39\,
	combout => \cnt_200Hz[11]~40_combout\,
	cout => \cnt_200Hz[11]~41\);

-- Location: FF_X16_Y2_N5
\cnt_200Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[11]~40_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(11));

-- Location: LCCOMB_X16_Y2_N6
\cnt_200Hz[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[12]~42_combout\ = (cnt_200Hz(12) & (\cnt_200Hz[11]~41\ $ (GND))) # (!cnt_200Hz(12) & (!\cnt_200Hz[11]~41\ & VCC))
-- \cnt_200Hz[12]~43\ = CARRY((cnt_200Hz(12) & !\cnt_200Hz[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(12),
	datad => VCC,
	cin => \cnt_200Hz[11]~41\,
	combout => \cnt_200Hz[12]~42_combout\,
	cout => \cnt_200Hz[12]~43\);

-- Location: FF_X16_Y2_N7
\cnt_200Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[12]~42_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(12));

-- Location: LCCOMB_X16_Y2_N8
\cnt_200Hz[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[13]~44_combout\ = (cnt_200Hz(13) & (!\cnt_200Hz[12]~43\)) # (!cnt_200Hz(13) & ((\cnt_200Hz[12]~43\) # (GND)))
-- \cnt_200Hz[13]~45\ = CARRY((!\cnt_200Hz[12]~43\) # (!cnt_200Hz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(13),
	datad => VCC,
	cin => \cnt_200Hz[12]~43\,
	combout => \cnt_200Hz[13]~44_combout\,
	cout => \cnt_200Hz[13]~45\);

-- Location: FF_X16_Y2_N9
\cnt_200Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[13]~44_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(13));

-- Location: LCCOMB_X16_Y2_N10
\cnt_200Hz[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[14]~46_combout\ = (cnt_200Hz(14) & (\cnt_200Hz[13]~45\ $ (GND))) # (!cnt_200Hz(14) & (!\cnt_200Hz[13]~45\ & VCC))
-- \cnt_200Hz[14]~47\ = CARRY((cnt_200Hz(14) & !\cnt_200Hz[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(14),
	datad => VCC,
	cin => \cnt_200Hz[13]~45\,
	combout => \cnt_200Hz[14]~46_combout\,
	cout => \cnt_200Hz[14]~47\);

-- Location: FF_X16_Y2_N11
\cnt_200Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[14]~46_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(14));

-- Location: LCCOMB_X16_Y2_N12
\cnt_200Hz[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[15]~48_combout\ = (cnt_200Hz(15) & (!\cnt_200Hz[14]~47\)) # (!cnt_200Hz(15) & ((\cnt_200Hz[14]~47\) # (GND)))
-- \cnt_200Hz[15]~49\ = CARRY((!\cnt_200Hz[14]~47\) # (!cnt_200Hz(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(15),
	datad => VCC,
	cin => \cnt_200Hz[14]~47\,
	combout => \cnt_200Hz[15]~48_combout\,
	cout => \cnt_200Hz[15]~49\);

-- Location: FF_X16_Y2_N13
\cnt_200Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[15]~48_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(15));

-- Location: LCCOMB_X16_Y2_N14
\cnt_200Hz[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[16]~50_combout\ = (cnt_200Hz(16) & (\cnt_200Hz[15]~49\ $ (GND))) # (!cnt_200Hz(16) & (!\cnt_200Hz[15]~49\ & VCC))
-- \cnt_200Hz[16]~51\ = CARRY((cnt_200Hz(16) & !\cnt_200Hz[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(16),
	datad => VCC,
	cin => \cnt_200Hz[15]~49\,
	combout => \cnt_200Hz[16]~50_combout\,
	cout => \cnt_200Hz[16]~51\);

-- Location: FF_X16_Y2_N15
\cnt_200Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[16]~50_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(16));

-- Location: LCCOMB_X16_Y2_N16
\cnt_200Hz[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt_200Hz[17]~52_combout\ = \cnt_200Hz[16]~51\ $ (cnt_200Hz(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_200Hz(17),
	cin => \cnt_200Hz[16]~51\,
	combout => \cnt_200Hz[17]~52_combout\);

-- Location: FF_X16_Y2_N17
\cnt_200Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_200Hz[17]~52_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_200Hz(17));

-- Location: LCCOMB_X16_Y3_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (cnt_200Hz(3) & ((cnt_200Hz(2)) # ((cnt_200Hz(0)) # (cnt_200Hz(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(3),
	datab => cnt_200Hz(2),
	datac => cnt_200Hz(0),
	datad => cnt_200Hz(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y3_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (cnt_200Hz(6)) # ((cnt_200Hz(5) & ((cnt_200Hz(4)) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(6),
	datab => cnt_200Hz(5),
	datac => cnt_200Hz(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X17_Y3_N20
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (cnt_200Hz(9)) # ((cnt_200Hz(7) & (cnt_200Hz(8) & \LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(7),
	datab => cnt_200Hz(8),
	datac => cnt_200Hz(9),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X17_Y3_N2
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (cnt_200Hz(11)) # ((cnt_200Hz(12)) # ((cnt_200Hz(10)) # (\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(11),
	datab => cnt_200Hz(12),
	datac => cnt_200Hz(10),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X17_Y3_N28
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!cnt_200Hz(15) & (((!\LessThan1~3_combout\) # (!cnt_200Hz(14))) # (!cnt_200Hz(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(13),
	datab => cnt_200Hz(14),
	datac => cnt_200Hz(15),
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X17_Y3_N24
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (cnt_200Hz(17)) # ((cnt_200Hz(16)) # (!\LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(17),
	datac => cnt_200Hz(16),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: FF_X17_Y3_N25
\kout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kout[0]~reg0_q\);

-- Location: LCCOMB_X16_Y2_N26
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (cnt_200Hz(12)) # ((cnt_200Hz(11)) # ((cnt_200Hz(13)) # (cnt_200Hz(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(12),
	datab => cnt_200Hz(11),
	datac => cnt_200Hz(13),
	datad => cnt_200Hz(10),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X16_Y3_N0
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (cnt_200Hz(3)) # ((cnt_200Hz(2)) # ((cnt_200Hz(0)) # (cnt_200Hz(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(3),
	datab => cnt_200Hz(2),
	datac => cnt_200Hz(0),
	datad => cnt_200Hz(1),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X16_Y3_N2
\LED_UI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~0_combout\ = (cnt_200Hz(5)) # ((cnt_200Hz(4) & \LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(5),
	datac => cnt_200Hz(4),
	datad => \LessThan3~1_combout\,
	combout => \LED_UI~0_combout\);

-- Location: LCCOMB_X16_Y3_N8
\LED_UI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~1_combout\ = (cnt_200Hz(8) & ((cnt_200Hz(7)) # ((cnt_200Hz(6) & \LED_UI~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(8),
	datab => cnt_200Hz(6),
	datac => cnt_200Hz(7),
	datad => \LED_UI~0_combout\,
	combout => \LED_UI~1_combout\);

-- Location: LCCOMB_X17_Y3_N26
\LED_UI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~2_combout\ = (cnt_200Hz(15) & ((\LessThan3~0_combout\) # ((cnt_200Hz(9) & \LED_UI~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => cnt_200Hz(9),
	datac => cnt_200Hz(15),
	datad => \LED_UI~1_combout\,
	combout => \LED_UI~2_combout\);

-- Location: LCCOMB_X17_Y3_N4
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!cnt_200Hz(17) & !cnt_200Hz(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(17),
	datac => cnt_200Hz(16),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X17_Y3_N14
\kout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kout~0_combout\ = (\LessThan1~4_combout\) # (((\LED_UI~2_combout\ & cnt_200Hz(14))) # (!\LessThan1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_UI~2_combout\,
	datab => cnt_200Hz(14),
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~6_combout\,
	combout => \kout~0_combout\);

-- Location: FF_X17_Y3_N15
\kout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kout[1]~reg0_q\);

-- Location: LCCOMB_X16_Y3_N6
\LED_UI~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~5_combout\ = (cnt_200Hz(5) & (cnt_200Hz(7) & (cnt_200Hz(4) & cnt_200Hz(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(5),
	datab => cnt_200Hz(7),
	datac => cnt_200Hz(4),
	datad => cnt_200Hz(6),
	combout => \LED_UI~5_combout\);

-- Location: LCCOMB_X17_Y3_N12
\LED_UI~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~4_combout\ = (cnt_200Hz(11)) # ((cnt_200Hz(12)) # ((cnt_200Hz(8) & cnt_200Hz(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(11),
	datab => cnt_200Hz(8),
	datac => cnt_200Hz(10),
	datad => cnt_200Hz(12),
	combout => \LED_UI~4_combout\);

-- Location: LCCOMB_X17_Y3_N10
\LED_UI~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~6_combout\ = (\LED_UI~4_combout\) # ((\LessThan1~0_combout\ & (\LED_UI~5_combout\ & cnt_200Hz(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LED_UI~5_combout\,
	datac => cnt_200Hz(10),
	datad => \LED_UI~4_combout\,
	combout => \LED_UI~6_combout\);

-- Location: LCCOMB_X17_Y3_N16
\LED_UI~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~7_combout\ = (cnt_200Hz(13) & ((\LED_UI~6_combout\) # ((cnt_200Hz(9) & cnt_200Hz(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(13),
	datab => cnt_200Hz(9),
	datac => cnt_200Hz(10),
	datad => \LED_UI~6_combout\,
	combout => \LED_UI~7_combout\);

-- Location: LCCOMB_X17_Y3_N22
\LED_UI~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~8_combout\ = (cnt_200Hz(14) & ((cnt_200Hz(16)) # ((!cnt_200Hz(15) & \LED_UI~7_combout\)))) # (!cnt_200Hz(14) & (((cnt_200Hz(15)) # (\LED_UI~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(16),
	datab => cnt_200Hz(14),
	datac => cnt_200Hz(15),
	datad => \LED_UI~7_combout\,
	combout => \LED_UI~8_combout\);

-- Location: LCCOMB_X17_Y3_N30
\LED_UI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_UI~3_combout\ = (!cnt_200Hz(16) & !\LED_UI~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_200Hz(16),
	datac => \LED_UI~2_combout\,
	combout => \LED_UI~3_combout\);

-- Location: LCCOMB_X17_Y3_N0
\kout[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kout[2]~1_combout\ = (!cnt_200Hz(16) & (((\LessThan1~4_combout\) # (!\LED_UI~2_combout\)) # (!cnt_200Hz(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_200Hz(16),
	datab => cnt_200Hz(14),
	datac => \LED_UI~2_combout\,
	datad => \LessThan1~4_combout\,
	combout => \kout[2]~1_combout\);

-- Location: LCCOMB_X17_Y3_N8
\kout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kout~2_combout\ = (\LED_UI~8_combout\) # ((cnt_200Hz(17)) # ((\LED_UI~3_combout\) # (\kout[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_UI~8_combout\,
	datab => cnt_200Hz(17),
	datac => \LED_UI~3_combout\,
	datad => \kout[2]~1_combout\,
	combout => \kout~2_combout\);

-- Location: FF_X17_Y3_N9
\kout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kout[2]~reg0_q\);

-- Location: LCCOMB_X17_Y3_N6
\kout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kout~3_combout\ = (!cnt_200Hz(17) & ((\kout[2]~1_combout\) # ((!\LED_UI~8_combout\ & !\LED_UI~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_UI~8_combout\,
	datab => cnt_200Hz(17),
	datac => \LED_UI~3_combout\,
	datad => \kout[2]~1_combout\,
	combout => \kout~3_combout\);

-- Location: FF_X17_Y3_N7
\kout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kout[3]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N22
\kin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kin(2),
	o => \kin[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\kin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kin(0),
	o => \kin[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\kin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kin(3),
	o => \kin[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\kin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kin(1),
	o => \kin[1]~input_o\);

-- Location: LCCOMB_X18_Y3_N0
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = ((\kin[3]~input_o\ $ (!\kin[1]~input_o\)) # (!\kin[0]~input_o\)) # (!\kin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kin[2]~input_o\,
	datab => \kin[0]~input_o\,
	datac => \kin[3]~input_o\,
	datad => \kin[1]~input_o\,
	combout => \led~0_combout\);

-- Location: LCCOMB_X18_Y3_N16
\led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (\kout[1]~reg0_q\ & ((\kout[0]~reg0_q\ & (\kout[3]~reg0_q\ $ (!\kout[2]~reg0_q\))) # (!\kout[0]~reg0_q\ & ((!\kout[2]~reg0_q\) # (!\kout[3]~reg0_q\))))) # (!\kout[1]~reg0_q\ & (((!\kout[2]~reg0_q\) # (!\kout[3]~reg0_q\)) # 
-- (!\kout[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[1]~reg0_q\,
	datab => \kout[0]~reg0_q\,
	datac => \kout[3]~reg0_q\,
	datad => \kout[2]~reg0_q\,
	combout => \led~1_combout\);

-- Location: FF_X18_Y3_N1
\led[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~0_combout\,
	ena => \ALT_INV_led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~reg0_q\);

-- Location: LCCOMB_X18_Y3_N2
\led~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~2_combout\ = ((\kin[0]~input_o\ $ (!\kin[3]~input_o\)) # (!\kin[1]~input_o\)) # (!\kin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kin[2]~input_o\,
	datab => \kin[0]~input_o\,
	datac => \kin[3]~input_o\,
	datad => \kin[1]~input_o\,
	combout => \led~2_combout\);

-- Location: FF_X18_Y3_N3
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~2_combout\,
	ena => \ALT_INV_led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: LCCOMB_X18_Y3_N12
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\kin[2]~input_o\ & (\kin[0]~input_o\ & (!\kin[3]~input_o\ & \kin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kin[2]~input_o\,
	datab => \kin[0]~input_o\,
	datac => \kin[3]~input_o\,
	datad => \kin[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X18_Y3_N18
\led~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~5_combout\ = (\kin[3]~input_o\ & ((\kin[2]~input_o\ & (\kin[0]~input_o\ $ (\kin[1]~input_o\))) # (!\kin[2]~input_o\ & (\kin[0]~input_o\ & \kin[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kin[2]~input_o\,
	datab => \kin[0]~input_o\,
	datac => \kin[3]~input_o\,
	datad => \kin[1]~input_o\,
	combout => \led~5_combout\);

-- Location: LCCOMB_X18_Y3_N26
\led~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~3_combout\ = (\kout[0]~reg0_q\ & (\kout[2]~reg0_q\ & (\kout[1]~reg0_q\ $ (\kout[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[1]~reg0_q\,
	datab => \kout[0]~reg0_q\,
	datac => \kout[3]~reg0_q\,
	datad => \kout[2]~reg0_q\,
	combout => \led~3_combout\);

-- Location: LCCOMB_X18_Y3_N24
\led~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~4_combout\ = ((\kout[0]~reg0_q\ $ (!\kout[2]~reg0_q\)) # (!\kout[3]~reg0_q\)) # (!\kout[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[1]~reg0_q\,
	datab => \kout[0]~reg0_q\,
	datac => \kout[3]~reg0_q\,
	datad => \kout[2]~reg0_q\,
	combout => \led~4_combout\);

-- Location: LCCOMB_X18_Y3_N30
\led~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~6_combout\ = (\Equal4~0_combout\ & (!\led~5_combout\ & ((!\led~4_combout\)))) # (!\Equal4~0_combout\ & ((\led~3_combout\) # ((!\led~5_combout\ & !\led~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \led~5_combout\,
	datac => \led~3_combout\,
	datad => \led~4_combout\,
	combout => \led~6_combout\);

-- Location: LCCOMB_X18_Y3_N28
\led~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~7_combout\ = (\led~6_combout\) # ((\led[2]~reg0_q\ & \led~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led~6_combout\,
	datac => \led[2]~reg0_q\,
	datad => \led~1_combout\,
	combout => \led~7_combout\);

-- Location: FF_X18_Y3_N29
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: LCCOMB_X17_Y3_N18
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\kout[3]~reg0_q\ & (\kout[2]~reg0_q\ & (\kout[1]~reg0_q\ & \kout[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[3]~reg0_q\,
	datab => \kout[2]~reg0_q\,
	datac => \kout[1]~reg0_q\,
	datad => \kout[0]~reg0_q\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X18_Y3_N14
\led~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~10_combout\ = (\Equal4~0_combout\ & ((\Equal3~0_combout\) # ((\led~1_combout\ & !\led[3]~reg0_q\)))) # (!\Equal4~0_combout\ & (\led~1_combout\ & ((!\led[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \led~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \led[3]~reg0_q\,
	combout => \led~10_combout\);

-- Location: LCCOMB_X18_Y3_N8
\led~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~8_combout\ = (\kin[2]~input_o\ & ((\kin[0]~input_o\ & (\kin[3]~input_o\ $ (!\kin[1]~input_o\))) # (!\kin[0]~input_o\ & ((!\kin[1]~input_o\) # (!\kin[3]~input_o\))))) # (!\kin[2]~input_o\ & (((!\kin[1]~input_o\) # (!\kin[3]~input_o\)) # 
-- (!\kin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kin[2]~input_o\,
	datab => \kin[0]~input_o\,
	datac => \kin[3]~input_o\,
	datad => \kin[1]~input_o\,
	combout => \led~8_combout\);

-- Location: LCCOMB_X18_Y3_N10
\led~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~9_combout\ = (\kout[1]~reg0_q\ & (((!\led~8_combout\ & !\kout[0]~reg0_q\)))) # (!\kout[1]~reg0_q\ & (\led~5_combout\ & ((\kout[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[1]~reg0_q\,
	datab => \led~5_combout\,
	datac => \led~8_combout\,
	datad => \kout[0]~reg0_q\,
	combout => \led~9_combout\);

-- Location: LCCOMB_X18_Y3_N6
\led~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~11_combout\ = (!\led~10_combout\ & (((!\led~9_combout\) # (!\kout[3]~reg0_q\)) # (!\kout[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[2]~reg0_q\,
	datab => \kout[3]~reg0_q\,
	datac => \led~10_combout\,
	datad => \led~9_combout\,
	combout => \led~11_combout\);

-- Location: FF_X18_Y3_N7
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

-- Location: LCCOMB_X18_Y3_N4
\led~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~12_combout\ = ((\kout[1]~reg0_q\ & (\kout[0]~reg0_q\ $ (!\kout[2]~reg0_q\))) # (!\kout[1]~reg0_q\ & ((!\kout[2]~reg0_q\) # (!\kout[0]~reg0_q\)))) # (!\kout[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kout[1]~reg0_q\,
	datab => \kout[0]~reg0_q\,
	datac => \kout[3]~reg0_q\,
	datad => \kout[2]~reg0_q\,
	combout => \led~12_combout\);

-- Location: LCCOMB_X18_Y3_N22
\led~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~13_combout\ = (\led[4]~reg0_q\ & ((\led~1_combout\) # ((\led~8_combout\ & !\led~12_combout\)))) # (!\led[4]~reg0_q\ & (\led~8_combout\ & (!\led~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led[4]~reg0_q\,
	datab => \led~8_combout\,
	datac => \led~12_combout\,
	datad => \led~1_combout\,
	combout => \led~13_combout\);

-- Location: LCCOMB_X18_Y3_N20
\led~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~14_combout\ = (\led~13_combout\) # ((\Equal3~0_combout\ & !\led~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \led~5_combout\,
	datac => \led~13_combout\,
	combout => \led~14_combout\);

-- Location: FF_X18_Y3_N21
\led[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[4]~reg0_q\);

-- Location: FF_X18_Y3_N11
\led[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \led~8_combout\,
	sload => VCC,
	ena => \ALT_INV_led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[5]~reg0_q\);

ww_kout(0) <= \kout[0]~output_o\;

ww_kout(1) <= \kout[1]~output_o\;

ww_kout(2) <= \kout[2]~output_o\;

ww_kout(3) <= \kout[3]~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_segcs(0) <= \segcs[0]~output_o\;

ww_segcs(1) <= \segcs[1]~output_o\;

ww_segcs(2) <= \segcs[2]~output_o\;

ww_segcs(3) <= \segcs[3]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;
END structure;


