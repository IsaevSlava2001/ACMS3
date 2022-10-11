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

-- DATE "10/06/2022 15:30:22"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Isaev21 IS
    PORT (
	F : OUT std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	D0 : IN std_logic;
	D2 : IN std_logic;
	D1 : IN std_logic;
	D3 : IN std_logic;
	D5 : IN std_logic;
	D4 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic
	);
END Isaev21;

-- Design Ports Information
-- F	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Isaev21 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \inst99~2_combout\ : std_logic;
SIGNAL \inst99~3_combout\ : std_logic;
SIGNAL \D5~input_o\ : std_logic;
SIGNAL \D7~input_o\ : std_logic;
SIGNAL \D6~input_o\ : std_logic;
SIGNAL \D4~input_o\ : std_logic;
SIGNAL \inst99~0_combout\ : std_logic;
SIGNAL \inst99~1_combout\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \inst99~4_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_D0 <= D0;
ww_D2 <= D2;
ww_D1 <= D1;
ww_D3 <= D3;
ww_D5 <= D5;
ww_D4 <= D4;
ww_D6 <= D6;
ww_D7 <= D7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y31_N2
\F~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst99~4_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\x2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\D3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\D2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\D0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\D1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\x3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3,
	o => \x3~input_o\);

-- Location: LCCOMB_X18_Y2_N12
\inst99~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst99~2_combout\ = (\x2~input_o\ & (((\x3~input_o\)))) # (!\x2~input_o\ & ((\x3~input_o\ & ((\D1~input_o\))) # (!\x3~input_o\ & (\D0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \D0~input_o\,
	datac => \D1~input_o\,
	datad => \x3~input_o\,
	combout => \inst99~2_combout\);

-- Location: LCCOMB_X18_Y2_N6
\inst99~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst99~3_combout\ = (\x2~input_o\ & ((\inst99~2_combout\ & (\D3~input_o\)) # (!\inst99~2_combout\ & ((\D2~input_o\))))) # (!\x2~input_o\ & (((\inst99~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \D3~input_o\,
	datac => \D2~input_o\,
	datad => \inst99~2_combout\,
	combout => \inst99~3_combout\);

-- Location: IOIBUF_X12_Y0_N8
\D5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5,
	o => \D5~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\D7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7,
	o => \D7~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\D6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6,
	o => \D6~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\D4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4,
	o => \D4~input_o\);

-- Location: LCCOMB_X18_Y2_N8
\inst99~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst99~0_combout\ = (\x2~input_o\ & ((\D6~input_o\) # ((\x3~input_o\)))) # (!\x2~input_o\ & (((\D4~input_o\ & !\x3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \D6~input_o\,
	datac => \D4~input_o\,
	datad => \x3~input_o\,
	combout => \inst99~0_combout\);

-- Location: LCCOMB_X18_Y2_N2
\inst99~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst99~1_combout\ = (\inst99~0_combout\ & (((\D7~input_o\) # (!\x3~input_o\)))) # (!\inst99~0_combout\ & (\D5~input_o\ & ((\x3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5~input_o\,
	datab => \D7~input_o\,
	datac => \inst99~0_combout\,
	datad => \x3~input_o\,
	combout => \inst99~1_combout\);

-- Location: IOIBUF_X33_Y16_N15
\x1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: LCCOMB_X18_Y2_N0
\inst99~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst99~4_combout\ = (\x1~input_o\ & ((\inst99~1_combout\))) # (!\x1~input_o\ & (\inst99~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst99~3_combout\,
	datab => \inst99~1_combout\,
	datad => \x1~input_o\,
	combout => \inst99~4_combout\);

ww_F <= \F~output_o\;
END structure;


