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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/01/2022 18:31:32"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	\out\ : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
-- out[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL \ww_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \c~inputclkctrl_outclk\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \s14~q\ : std_logic;
SIGNAL \s15~q\ : std_logic;
SIGNAL \s0~0_combout\ : std_logic;
SIGNAL \s0~q\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \s1~q\ : std_logic;
SIGNAL \s8~0_combout\ : std_logic;
SIGNAL \s8~q\ : std_logic;
SIGNAL \s9~q\ : std_logic;
SIGNAL \s10~q\ : std_logic;
SIGNAL \s11~0_combout\ : std_logic;
SIGNAL \s11~q\ : std_logic;
SIGNAL \s12~0_combout\ : std_logic;
SIGNAL \s12~q\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s2~q\ : std_logic;
SIGNAL \s3~q\ : std_logic;
SIGNAL \s5~0_combout\ : std_logic;
SIGNAL \s5~q\ : std_logic;
SIGNAL \s4~0_combout\ : std_logic;
SIGNAL \s4~q\ : std_logic;
SIGNAL \s6~0_combout\ : std_logic;
SIGNAL \s6~q\ : std_logic;
SIGNAL \s7~0_combout\ : std_logic;
SIGNAL \s7~q\ : std_logic;
SIGNAL \s13~q\ : std_logic;
SIGNAL \out[2]~1_combout\ : std_logic;
SIGNAL \out[0]~0_combout\ : std_logic;
SIGNAL \out[0]~2_combout\ : std_logic;
SIGNAL \out[1]~3_combout\ : std_logic;
SIGNAL \out[3]~4_combout\ : std_logic;
SIGNAL \out[1]~5_combout\ : std_logic;
SIGNAL \out[2]~6_combout\ : std_logic;
SIGNAL \out[2]~7_combout\ : std_logic;
SIGNAL \out[3]~8_combout\ : std_logic;
SIGNAL \out[3]~9_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \c~input_o\);

-- Location: IOOBUF_X22_Y0_N2
\out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[0]~2_combout\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[1]~5_combout\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[2]~7_combout\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[3]~9_combout\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: CLKCTRL_G17
\c~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \c~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \c~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N1
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: FF_X23_Y1_N23
s14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	asdata => \s13~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s14~q\);

-- Location: FF_X23_Y1_N3
s15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	asdata => \s14~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s15~q\);

-- Location: LCCOMB_X23_Y1_N0
\s0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s0~0_combout\ = !\s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s15~q\,
	combout => \s0~0_combout\);

-- Location: FF_X23_Y1_N1
s0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s0~q\);

-- Location: LCCOMB_X23_Y1_N28
\s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = !\s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s0~q\,
	combout => \s1~0_combout\);

-- Location: FF_X23_Y1_N29
s1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1~q\);

-- Location: LCCOMB_X23_Y1_N14
\s8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s8~0_combout\ = (!\a~input_o\ & \s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \s1~q\,
	combout => \s8~0_combout\);

-- Location: FF_X23_Y1_N15
s8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s8~q\);

-- Location: FF_X23_Y1_N5
s9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	asdata => \s8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s9~q\);

-- Location: FF_X23_Y1_N21
s10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	asdata => \s9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s10~q\);

-- Location: LCCOMB_X23_Y1_N18
\s11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s11~0_combout\ = (\b~input_o\ & \s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~input_o\,
	datad => \s10~q\,
	combout => \s11~0_combout\);

-- Location: FF_X23_Y1_N19
s11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s11~q\);

-- Location: LCCOMB_X23_Y1_N10
\s12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s12~0_combout\ = (!\b~input_o\ & \s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~input_o\,
	datad => \s10~q\,
	combout => \s12~0_combout\);

-- Location: FF_X23_Y1_N11
s12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12~q\);

-- Location: LCCOMB_X23_Y1_N26
\s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = (\a~input_o\ & \s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \s1~q\,
	combout => \s2~0_combout\);

-- Location: FF_X23_Y1_N27
s2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s2~q\);

-- Location: FF_X23_Y1_N13
s3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	asdata => \s2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s3~q\);

-- Location: LCCOMB_X23_Y1_N24
\s5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s5~0_combout\ = (\b~input_o\ & \s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~input_o\,
	datad => \s3~q\,
	combout => \s5~0_combout\);

-- Location: FF_X23_Y1_N25
s5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s5~q\);

-- Location: LCCOMB_X23_Y1_N6
\s4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s4~0_combout\ = (!\b~input_o\ & \s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~input_o\,
	datad => \s3~q\,
	combout => \s4~0_combout\);

-- Location: FF_X23_Y1_N7
s4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s4~q\);

-- Location: LCCOMB_X23_Y1_N16
\s6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s6~0_combout\ = (\s5~q\) # (\s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s5~q\,
	datad => \s4~q\,
	combout => \s6~0_combout\);

-- Location: FF_X23_Y1_N17
s6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s6~q\);

-- Location: LCCOMB_X23_Y1_N30
\s7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s7~0_combout\ = (\s11~q\) # ((\s12~q\) # (\s6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s11~q\,
	datac => \s12~q\,
	datad => \s6~q\,
	combout => \s7~0_combout\);

-- Location: FF_X23_Y1_N31
s7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	d => \s7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s7~q\);

-- Location: FF_X23_Y1_N9
s13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c~inputclkctrl_outclk\,
	asdata => \s7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s13~q\);

-- Location: LCCOMB_X23_Y1_N2
\out[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[2]~1_combout\ = (!\s13~q\ & (!\s10~q\ & (!\s15~q\ & \s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s13~q\,
	datab => \s10~q\,
	datac => \s15~q\,
	datad => \s0~q\,
	combout => \out[2]~1_combout\);

-- Location: LCCOMB_X23_Y1_N12
\out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[0]~0_combout\ = (\s2~q\) # ((\s5~q\) # ((\s3~q\) # (\s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~q\,
	datab => \s5~q\,
	datac => \s3~q\,
	datad => \s6~q\,
	combout => \out[0]~0_combout\);

-- Location: LCCOMB_X23_Y1_N8
\out[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[0]~2_combout\ = (\out[0]~0_combout\) # (!\out[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out[2]~1_combout\,
	datad => \out[0]~0_combout\,
	combout => \out[0]~2_combout\);

-- Location: LCCOMB_X22_Y1_N4
\out[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[1]~3_combout\ = (\s7~q\) # ((\s2~q\) # ((\s10~q\) # (\s11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7~q\,
	datab => \s2~q\,
	datac => \s10~q\,
	datad => \s11~q\,
	combout => \out[1]~3_combout\);

-- Location: LCCOMB_X23_Y1_N22
\out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[3]~4_combout\ = (!\s3~q\ & (!\s8~q\ & (!\s14~q\ & !\s15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3~q\,
	datab => \s8~q\,
	datac => \s14~q\,
	datad => \s15~q\,
	combout => \out[3]~4_combout\);

-- Location: LCCOMB_X22_Y1_N14
\out[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[1]~5_combout\ = (\out[1]~3_combout\) # (!\out[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out[1]~3_combout\,
	datad => \out[3]~4_combout\,
	combout => \out[1]~5_combout\);

-- Location: LCCOMB_X22_Y1_N0
\out[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[2]~6_combout\ = (\s4~q\) # ((\s11~q\) # ((\s12~q\) # (\s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4~q\,
	datab => \s11~q\,
	datac => \s12~q\,
	datad => \s8~q\,
	combout => \out[2]~6_combout\);

-- Location: LCCOMB_X22_Y1_N10
\out[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[2]~7_combout\ = (\out[2]~6_combout\) # (!\out[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out[2]~6_combout\,
	datad => \out[2]~1_combout\,
	combout => \out[2]~7_combout\);

-- Location: LCCOMB_X23_Y1_N4
\out[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[3]~8_combout\ = (\s6~q\) # ((\s4~q\) # ((\s9~q\) # (\s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s6~q\,
	datab => \s4~q\,
	datac => \s9~q\,
	datad => \s13~q\,
	combout => \out[3]~8_combout\);

-- Location: LCCOMB_X23_Y1_N20
\out[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[3]~9_combout\ = (\out[3]~8_combout\) # (!\out[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out[3]~8_combout\,
	datad => \out[3]~4_combout\,
	combout => \out[3]~9_combout\);

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;
END structure;


