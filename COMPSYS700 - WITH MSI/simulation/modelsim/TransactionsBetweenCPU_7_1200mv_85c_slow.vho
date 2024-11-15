-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/03/2024 18:27:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TransactionsBetweenCPU IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	cpu0_prio : IN std_logic;
	cpu1_prio1 : IN std_logic;
	cpu0_wantedAddr : IN std_logic_vector(2 DOWNTO 0);
	cpu1_wantedAddr : IN std_logic_vector(2 DOWNTO 0)
	);
END TransactionsBetweenCPU;

-- Design Ports Information
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_prio1	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_prio	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wantedAddr[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wantedAddr[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wantedAddr[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wantedAddr[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wantedAddr[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wantedAddr[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TransactionsBetweenCPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_cpu0_prio : std_logic;
SIGNAL ww_cpu1_prio1 : std_logic;
SIGNAL ww_cpu0_wantedAddr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpu1_wantedAddr : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cpu1_prio1~input_o\ : std_logic;
SIGNAL \cpu0_prio~input_o\ : std_logic;
SIGNAL \cpu1_wantedAddr[0]~input_o\ : std_logic;
SIGNAL \cpu1_wantedAddr[1]~input_o\ : std_logic;
SIGNAL \cpu1_wantedAddr[2]~input_o\ : std_logic;
SIGNAL \cpu0_wantedAddr[0]~input_o\ : std_logic;
SIGNAL \cpu0_wantedAddr[1]~input_o\ : std_logic;
SIGNAL \cpu0_wantedAddr[2]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_cpu0_prio <= cpu0_prio;
ww_cpu1_prio1 <= cpu1_prio1;
ww_cpu0_wantedAddr <= cpu0_wantedAddr;
ww_cpu1_wantedAddr <= cpu1_wantedAddr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOIBUF_X49_Y0_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\cpu1_prio1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_prio1,
	o => \cpu1_prio1~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\cpu0_prio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_prio,
	o => \cpu0_prio~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\cpu1_wantedAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_wantedAddr(0),
	o => \cpu1_wantedAddr[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\cpu1_wantedAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_wantedAddr(1),
	o => \cpu1_wantedAddr[1]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\cpu1_wantedAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_wantedAddr(2),
	o => \cpu1_wantedAddr[2]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\cpu0_wantedAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_wantedAddr(0),
	o => \cpu0_wantedAddr[0]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\cpu0_wantedAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_wantedAddr(1),
	o => \cpu0_wantedAddr[1]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\cpu0_wantedAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_wantedAddr(2),
	o => \cpu0_wantedAddr[2]~input_o\);
END structure;


