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

-- DATE "03/31/2022 14:13:12"

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

ENTITY 	smg IS
    PORT (
	seg : OUT std_logic_vector(7 DOWNTO 0);
	clkk : IN std_logic;
	segcs : OUT std_logic_vector(3 DOWNTO 0)
	);
END smg;

-- Design Ports Information
-- seg[7]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcs[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF smg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clkk : std_logic;
SIGNAL ww_segcs : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|flag[0]~1_combout\ : std_logic;
SIGNAL \inst1|flag[1]~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|segcs_SIFNAL~0_combout\ : std_logic;
SIGNAL \inst1|seg[6]~0_combout\ : std_logic;
SIGNAL \inst1|Equal14~0_combout\ : std_logic;
SIGNAL \inst1|seg[4]~1_combout\ : std_logic;
SIGNAL \inst1|Equal13~0_combout\ : std_logic;
SIGNAL \inst1|Equal13~1_combout\ : std_logic;
SIGNAL \inst1|segcs_SIFNAL\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|flag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal14~0_combout\ : std_logic;

BEGIN

seg <= ww_seg;
ww_clkk <= clkk;
segcs <= ww_segcs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clkk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst1|ALT_INV_Equal13~1_combout\ <= NOT \inst1|Equal13~1_combout\;
\inst1|ALT_INV_Equal13~0_combout\ <= NOT \inst1|Equal13~0_combout\;
\inst1|ALT_INV_Equal14~0_combout\ <= NOT \inst1|Equal14~0_combout\;

-- Location: IOOBUF_X0_Y23_N16
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg(7));

-- Location: IOOBUF_X0_Y18_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|seg[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(6));

-- Location: IOOBUF_X0_Y9_N9
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Equal14~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(5));

-- Location: IOOBUF_X0_Y23_N2
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|seg[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_seg(4));

-- Location: IOOBUF_X0_Y23_N9
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Equal13~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(3));

-- Location: IOOBUF_X0_Y21_N9
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Equal13~1_combout\,
	devoe => ww_devoe,
	o => ww_seg(2));

-- Location: IOOBUF_X0_Y18_N23
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg(1));

-- Location: IOOBUF_X0_Y8_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Equal13~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(0));

-- Location: IOOBUF_X0_Y7_N2
\segcs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|segcs_SIFNAL\(3),
	devoe => ww_devoe,
	o => ww_segcs(3));

-- Location: IOOBUF_X0_Y6_N16
\segcs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|segcs_SIFNAL\(2),
	devoe => ww_devoe,
	o => ww_segcs(2));

-- Location: IOOBUF_X0_Y6_N23
\segcs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|segcs_SIFNAL\(1),
	devoe => ww_devoe,
	o => ww_segcs(1));

-- Location: IOOBUF_X0_Y5_N16
\segcs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|segcs_SIFNAL\(0),
	devoe => ww_devoe,
	o => ww_segcs(0));

-- Location: IOIBUF_X0_Y11_N8
\clkk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkk,
	o => \clkk~input_o\);

-- Location: PLL_1
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 240,
	c0_initial => 1,
	c0_low => 240,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 10000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 40000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 24,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6749,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N28
\inst1|flag[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|flag[0]~1_combout\ = !\inst1|flag\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|flag\(0),
	combout => \inst1|flag[0]~1_combout\);

-- Location: FF_X1_Y10_N29
\inst1|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|flag\(0));

-- Location: LCCOMB_X1_Y10_N10
\inst1|flag[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|flag[1]~0_combout\ = \inst1|flag\(1) $ (\inst1|flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|flag\(1),
	datad => \inst1|flag\(0),
	combout => \inst1|flag[1]~0_combout\);

-- Location: FF_X1_Y10_N11
\inst1|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|flag[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|flag\(1));

-- Location: LCCOMB_X1_Y10_N12
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|flag\(1)) # (!\inst1|flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|flag\(1),
	datad => \inst1|flag\(0),
	combout => \inst1|Equal0~1_combout\);

-- Location: FF_X1_Y10_N13
\inst1|segcs_SIFNAL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|segcs_SIFNAL\(1));

-- Location: LCCOMB_X1_Y10_N2
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|flag\(0)) # (!\inst1|flag\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|flag\(1),
	datad => \inst1|flag\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: FF_X1_Y10_N3
\inst1|segcs_SIFNAL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|segcs_SIFNAL\(2));

-- Location: LCCOMB_X1_Y10_N30
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|flag\(1)) # (\inst1|flag\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|flag\(1),
	datad => \inst1|flag\(0),
	combout => \inst1|Equal0~2_combout\);

-- Location: FF_X1_Y10_N31
\inst1|segcs_SIFNAL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|segcs_SIFNAL\(0));

-- Location: LCCOMB_X1_Y10_N0
\inst1|segcs_SIFNAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|segcs_SIFNAL~0_combout\ = (!\inst1|flag\(0)) # (!\inst1|flag\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|flag\(1),
	datad => \inst1|flag\(0),
	combout => \inst1|segcs_SIFNAL~0_combout\);

-- Location: FF_X1_Y10_N1
\inst1|segcs_SIFNAL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|segcs_SIFNAL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|segcs_SIFNAL\(3));

-- Location: LCCOMB_X1_Y10_N24
\inst1|seg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|seg[6]~0_combout\ = (\inst1|segcs_SIFNAL\(2) & (\inst1|segcs_SIFNAL\(3) & (\inst1|segcs_SIFNAL\(1) $ (\inst1|segcs_SIFNAL\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|segcs_SIFNAL\(1),
	datab => \inst1|segcs_SIFNAL\(2),
	datac => \inst1|segcs_SIFNAL\(0),
	datad => \inst1|segcs_SIFNAL\(3),
	combout => \inst1|seg[6]~0_combout\);

-- Location: LCCOMB_X1_Y10_N26
\inst1|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal14~0_combout\ = (\inst1|segcs_SIFNAL\(3) & ((\inst1|segcs_SIFNAL\(1) & (\inst1|segcs_SIFNAL\(2) $ (\inst1|segcs_SIFNAL\(0)))) # (!\inst1|segcs_SIFNAL\(1) & (\inst1|segcs_SIFNAL\(2) & \inst1|segcs_SIFNAL\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|segcs_SIFNAL\(1),
	datab => \inst1|segcs_SIFNAL\(2),
	datac => \inst1|segcs_SIFNAL\(0),
	datad => \inst1|segcs_SIFNAL\(3),
	combout => \inst1|Equal14~0_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst1|seg[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|seg[4]~1_combout\ = ((\inst1|segcs_SIFNAL\(2) $ (!\inst1|segcs_SIFNAL\(0))) # (!\inst1|segcs_SIFNAL\(3))) # (!\inst1|segcs_SIFNAL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|segcs_SIFNAL\(1),
	datab => \inst1|segcs_SIFNAL\(2),
	datac => \inst1|segcs_SIFNAL\(0),
	datad => \inst1|segcs_SIFNAL\(3),
	combout => \inst1|seg[4]~1_combout\);

-- Location: LCCOMB_X1_Y10_N14
\inst1|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal13~0_combout\ = (\inst1|segcs_SIFNAL\(1) & (!\inst1|segcs_SIFNAL\(2) & (\inst1|segcs_SIFNAL\(0) & \inst1|segcs_SIFNAL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|segcs_SIFNAL\(1),
	datab => \inst1|segcs_SIFNAL\(2),
	datac => \inst1|segcs_SIFNAL\(0),
	datad => \inst1|segcs_SIFNAL\(3),
	combout => \inst1|Equal13~0_combout\);

-- Location: LCCOMB_X1_Y10_N8
\inst1|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal13~1_combout\ = (!\inst1|segcs_SIFNAL\(1) & (\inst1|segcs_SIFNAL\(2) & (\inst1|segcs_SIFNAL\(0) & \inst1|segcs_SIFNAL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|segcs_SIFNAL\(1),
	datab => \inst1|segcs_SIFNAL\(2),
	datac => \inst1|segcs_SIFNAL\(0),
	datad => \inst1|segcs_SIFNAL\(3),
	combout => \inst1|Equal13~1_combout\);
END structure;


