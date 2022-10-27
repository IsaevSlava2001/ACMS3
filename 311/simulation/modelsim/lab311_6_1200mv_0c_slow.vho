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

-- DATE "10/26/2022 21:35:46"

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

ENTITY 	lab311 IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	a : IN std_logic;
	b : IN std_logic
	);
END lab311;

-- Design Ports Information
-- q[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab311 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4~7_combout\ : std_logic;
SIGNAL \inst4~6_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \inst4~3_combout\ : std_logic;
SIGNAL \inst4~4_combout\ : std_logic;
SIGNAL \inst4~8_combout\ : std_logic;
SIGNAL \inst4~9_combout\ : std_logic;
SIGNAL \inst26~q\ : std_logic;
SIGNAL \inst5~4_combout\ : std_logic;
SIGNAL \inst5~5_combout\ : std_logic;
SIGNAL \inst28~q\ : std_logic;
SIGNAL \inst1~6_combout\ : std_logic;
SIGNAL \inst1~7_combout\ : std_logic;
SIGNAL \inst1~4_combout\ : std_logic;
SIGNAL \inst1~3_combout\ : std_logic;
SIGNAL \inst1~8_combout\ : std_logic;
SIGNAL \inst1~9_combout\ : std_logic;
SIGNAL \inst24~q\ : std_logic;
SIGNAL \inst35~4_combout\ : std_logic;
SIGNAL \inst35~5_combout\ : std_logic;
SIGNAL \inst22~q\ : std_logic;

BEGIN

q <= ww_q;
ww_clock <= clock;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X10_Y0_N9
\q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y1_N6
\inst4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~7_combout\ = (\inst28~q\ & (\inst24~q\ $ (((\inst26~q\) # (\inst22~q\))))) # (!\inst28~q\ & ((\inst26~q\ & (\inst22~q\)) # (!\inst26~q\ & ((\inst24~q\) # (!\inst22~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26~q\,
	datab => \inst28~q\,
	datac => \inst22~q\,
	datad => \inst24~q\,
	combout => \inst4~7_combout\);

-- Location: LCCOMB_X13_Y1_N24
\inst4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~6_combout\ = (\inst26~q\ & ((\inst28~q\ & ((!\inst24~q\))) # (!\inst28~q\ & (\inst22~q\ & \inst24~q\)))) # (!\inst26~q\ & (\inst22~q\ $ (\inst28~q\ $ (!\inst24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26~q\,
	datab => \inst22~q\,
	datac => \inst28~q\,
	datad => \inst24~q\,
	combout => \inst4~6_combout\);

-- Location: IOIBUF_X14_Y0_N1
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X13_Y1_N8
\inst4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~3_combout\ = (\inst24~q\ & (!\inst28~q\ & ((\inst22~q\)))) # (!\inst24~q\ & (\inst28~q\ $ (((!\inst26~q\ & !\inst22~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~q\,
	datab => \inst28~q\,
	datac => \inst26~q\,
	datad => \inst22~q\,
	combout => \inst4~3_combout\);

-- Location: LCCOMB_X13_Y1_N2
\inst4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~4_combout\ = (\inst26~q\ & ((\inst28~q\ & (!\inst24~q\)) # (!\inst28~q\ & ((\inst22~q\))))) # (!\inst26~q\ & (\inst28~q\ $ (((\inst24~q\) # (!\inst22~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~q\,
	datab => \inst26~q\,
	datac => \inst28~q\,
	datad => \inst22~q\,
	combout => \inst4~4_combout\);

-- Location: LCCOMB_X13_Y1_N0
\inst4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~8_combout\ = (\a~input_o\ & (\b~input_o\)) # (!\a~input_o\ & ((\b~input_o\ & ((\inst4~4_combout\))) # (!\b~input_o\ & (\inst4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \b~input_o\,
	datac => \inst4~3_combout\,
	datad => \inst4~4_combout\,
	combout => \inst4~8_combout\);

-- Location: LCCOMB_X13_Y1_N4
\inst4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~9_combout\ = (\a~input_o\ & ((\inst4~8_combout\ & (\inst4~7_combout\)) # (!\inst4~8_combout\ & ((\inst4~6_combout\))))) # (!\a~input_o\ & (((\inst4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~7_combout\,
	datab => \inst4~6_combout\,
	datac => \a~input_o\,
	datad => \inst4~8_combout\,
	combout => \inst4~9_combout\);

-- Location: FF_X13_Y1_N5
inst26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26~q\);

-- Location: LCCOMB_X13_Y1_N20
\inst5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~4_combout\ = (\inst28~q\ & (((\inst24~q\)))) # (!\inst28~q\ & (!\inst24~q\ & ((\b~input_o\) # (!\inst26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \inst28~q\,
	datac => \inst24~q\,
	datad => \inst26~q\,
	combout => \inst5~4_combout\);

-- Location: LCCOMB_X13_Y1_N14
\inst5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~5_combout\ = (\inst26~q\ & ((\inst22~q\ & ((\inst5~4_combout\))) # (!\inst22~q\ & (!\inst24~q\)))) # (!\inst26~q\ & (\inst5~4_combout\ $ (((\inst24~q\ & \inst22~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~q\,
	datab => \inst26~q\,
	datac => \inst22~q\,
	datad => \inst5~4_combout\,
	combout => \inst5~5_combout\);

-- Location: FF_X13_Y1_N15
inst28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28~q\);

-- Location: LCCOMB_X13_Y1_N12
\inst1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~6_combout\ = (\inst24~q\ & ((\inst28~q\) # ((\inst26~q\)))) # (!\inst24~q\ & (!\inst22~q\ & ((\inst28~q\) # (\inst26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~q\,
	datab => \inst28~q\,
	datac => \inst22~q\,
	datad => \inst26~q\,
	combout => \inst1~6_combout\);

-- Location: LCCOMB_X13_Y1_N22
\inst1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~7_combout\ = (\inst22~q\ & (\inst24~q\ & ((\inst26~q\) # (\inst28~q\)))) # (!\inst22~q\ & ((\inst26~q\) # ((\inst28~q\) # (\inst24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22~q\,
	datab => \inst26~q\,
	datac => \inst28~q\,
	datad => \inst24~q\,
	combout => \inst1~7_combout\);

-- Location: LCCOMB_X13_Y1_N30
\inst1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~4_combout\ = (\inst24~q\ & ((\inst26~q\) # (\inst28~q\ $ (!\inst22~q\)))) # (!\inst24~q\ & (!\inst22~q\ & ((\inst28~q\) # (\inst26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~q\,
	datab => \inst28~q\,
	datac => \inst26~q\,
	datad => \inst22~q\,
	combout => \inst1~4_combout\);

-- Location: LCCOMB_X13_Y1_N28
\inst1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~3_combout\ = (\inst26~q\ & (((\inst24~q\) # (!\inst22~q\)))) # (!\inst26~q\ & (\inst28~q\ & (\inst22~q\ $ (!\inst24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28~q\,
	datab => \inst26~q\,
	datac => \inst22~q\,
	datad => \inst24~q\,
	combout => \inst1~3_combout\);

-- Location: LCCOMB_X13_Y1_N10
\inst1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~8_combout\ = (\a~input_o\ & (\b~input_o\)) # (!\a~input_o\ & ((\b~input_o\ & (\inst1~4_combout\)) # (!\b~input_o\ & ((\inst1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \b~input_o\,
	datac => \inst1~4_combout\,
	datad => \inst1~3_combout\,
	combout => \inst1~8_combout\);

-- Location: LCCOMB_X13_Y1_N18
\inst1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~9_combout\ = (\a~input_o\ & ((\inst1~8_combout\ & ((\inst1~7_combout\))) # (!\inst1~8_combout\ & (\inst1~6_combout\)))) # (!\a~input_o\ & (((\inst1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~6_combout\,
	datab => \a~input_o\,
	datac => \inst1~7_combout\,
	datad => \inst1~8_combout\,
	combout => \inst1~9_combout\);

-- Location: FF_X13_Y1_N19
inst24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24~q\);

-- Location: LCCOMB_X13_Y1_N26
\inst35~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst35~4_combout\ = (\inst28~q\ & (\inst24~q\ & ((\a~input_o\) # (\inst26~q\)))) # (!\inst28~q\ & (((!\inst26~q\) # (!\inst24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \inst28~q\,
	datac => \inst24~q\,
	datad => \inst26~q\,
	combout => \inst35~4_combout\);

-- Location: LCCOMB_X13_Y1_N16
\inst35~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst35~5_combout\ = (\inst22~q\ & (\inst26~q\ $ (((\inst24~q\) # (\inst35~4_combout\))))) # (!\inst22~q\ & ((\inst35~4_combout\) # ((!\inst24~q\ & !\inst26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24~q\,
	datab => \inst26~q\,
	datac => \inst22~q\,
	datad => \inst35~4_combout\,
	combout => \inst35~5_combout\);

-- Location: FF_X13_Y1_N17
inst22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst35~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22~q\);

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


