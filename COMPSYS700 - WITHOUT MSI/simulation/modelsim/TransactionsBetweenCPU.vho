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

-- DATE "10/11/2024 20:30:01"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TransactionsBetweenCPU IS
    PORT (
	cpu0_wr_en : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	dataout1 : OUT std_logic_vector(31 DOWNTO 0);
	cpu1_wr_en : OUT std_logic;
	dataout2 : OUT std_logic_vector(31 DOWNTO 0);
	wantedaddr1 : IN std_logic_vector(2 DOWNTO 0);
	ready1 : OUT std_logic;
	cpu0_rd_en : OUT std_logic;
	ready2 : OUT std_logic;
	cpu1_rd_en : OUT std_logic;
	cpu0_sdram_addr : OUT std_logic_vector(2 DOWNTO 0);
	cpu1_sdram_addr2 : OUT std_logic_vector(2 DOWNTO 0);
	cpu0_sdram_data_out : OUT std_logic_vector(31 DOWNTO 0);
	cpu1_sdram_data_out1 : OUT std_logic_vector(31 DOWNTO 0);
	wantedaddr0 : IN std_logic_vector(2 DOWNTO 0)
	);
END TransactionsBetweenCPU;

-- Design Ports Information
-- cpu0_wr_en	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[31]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[30]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[29]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[28]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[26]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[25]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[24]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[23]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[22]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[21]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[20]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[19]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[18]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[17]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[16]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[13]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[12]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[10]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[9]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[3]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout1[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wr_en	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[31]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[30]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[29]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[28]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[27]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[26]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[25]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[22]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[21]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[20]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[19]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[18]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[17]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[14]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[11]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[9]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[8]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[7]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[4]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout2[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready1	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_rd_en	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_rd_en	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_addr[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_addr[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_addr[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_addr2[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_addr2[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_addr2[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[31]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[30]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[29]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[28]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[27]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[26]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[25]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[24]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[23]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[22]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[21]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[20]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[19]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[18]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[17]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[16]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[15]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[14]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[11]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[9]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[3]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_sdram_data_out[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[30]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[28]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[27]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[26]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[25]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[24]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[23]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[22]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[21]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[20]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[19]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[18]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[17]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[16]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[15]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[14]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[13]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[12]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[11]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[10]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[9]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[8]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[7]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[6]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[4]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_sdram_data_out1[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wantedaddr0[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wantedaddr0[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wantedaddr0[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wantedaddr1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wantedaddr1[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wantedaddr1[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_cpu0_wr_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dataout1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cpu1_wr_en : std_logic;
SIGNAL ww_dataout2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wantedaddr1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ready1 : std_logic;
SIGNAL ww_cpu0_rd_en : std_logic;
SIGNAL ww_ready2 : std_logic;
SIGNAL ww_cpu1_rd_en : std_logic;
SIGNAL ww_cpu0_sdram_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpu1_sdram_addr2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpu0_sdram_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cpu1_sdram_data_out1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wantedaddr0 : std_logic_vector(2 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu0_wr_en~output_o\ : std_logic;
SIGNAL \dataout1[31]~output_o\ : std_logic;
SIGNAL \dataout1[30]~output_o\ : std_logic;
SIGNAL \dataout1[29]~output_o\ : std_logic;
SIGNAL \dataout1[28]~output_o\ : std_logic;
SIGNAL \dataout1[27]~output_o\ : std_logic;
SIGNAL \dataout1[26]~output_o\ : std_logic;
SIGNAL \dataout1[25]~output_o\ : std_logic;
SIGNAL \dataout1[24]~output_o\ : std_logic;
SIGNAL \dataout1[23]~output_o\ : std_logic;
SIGNAL \dataout1[22]~output_o\ : std_logic;
SIGNAL \dataout1[21]~output_o\ : std_logic;
SIGNAL \dataout1[20]~output_o\ : std_logic;
SIGNAL \dataout1[19]~output_o\ : std_logic;
SIGNAL \dataout1[18]~output_o\ : std_logic;
SIGNAL \dataout1[17]~output_o\ : std_logic;
SIGNAL \dataout1[16]~output_o\ : std_logic;
SIGNAL \dataout1[15]~output_o\ : std_logic;
SIGNAL \dataout1[14]~output_o\ : std_logic;
SIGNAL \dataout1[13]~output_o\ : std_logic;
SIGNAL \dataout1[12]~output_o\ : std_logic;
SIGNAL \dataout1[11]~output_o\ : std_logic;
SIGNAL \dataout1[10]~output_o\ : std_logic;
SIGNAL \dataout1[9]~output_o\ : std_logic;
SIGNAL \dataout1[8]~output_o\ : std_logic;
SIGNAL \dataout1[7]~output_o\ : std_logic;
SIGNAL \dataout1[6]~output_o\ : std_logic;
SIGNAL \dataout1[5]~output_o\ : std_logic;
SIGNAL \dataout1[4]~output_o\ : std_logic;
SIGNAL \dataout1[3]~output_o\ : std_logic;
SIGNAL \dataout1[2]~output_o\ : std_logic;
SIGNAL \dataout1[1]~output_o\ : std_logic;
SIGNAL \dataout1[0]~output_o\ : std_logic;
SIGNAL \cpu1_wr_en~output_o\ : std_logic;
SIGNAL \dataout2[31]~output_o\ : std_logic;
SIGNAL \dataout2[30]~output_o\ : std_logic;
SIGNAL \dataout2[29]~output_o\ : std_logic;
SIGNAL \dataout2[28]~output_o\ : std_logic;
SIGNAL \dataout2[27]~output_o\ : std_logic;
SIGNAL \dataout2[26]~output_o\ : std_logic;
SIGNAL \dataout2[25]~output_o\ : std_logic;
SIGNAL \dataout2[24]~output_o\ : std_logic;
SIGNAL \dataout2[23]~output_o\ : std_logic;
SIGNAL \dataout2[22]~output_o\ : std_logic;
SIGNAL \dataout2[21]~output_o\ : std_logic;
SIGNAL \dataout2[20]~output_o\ : std_logic;
SIGNAL \dataout2[19]~output_o\ : std_logic;
SIGNAL \dataout2[18]~output_o\ : std_logic;
SIGNAL \dataout2[17]~output_o\ : std_logic;
SIGNAL \dataout2[16]~output_o\ : std_logic;
SIGNAL \dataout2[15]~output_o\ : std_logic;
SIGNAL \dataout2[14]~output_o\ : std_logic;
SIGNAL \dataout2[13]~output_o\ : std_logic;
SIGNAL \dataout2[12]~output_o\ : std_logic;
SIGNAL \dataout2[11]~output_o\ : std_logic;
SIGNAL \dataout2[10]~output_o\ : std_logic;
SIGNAL \dataout2[9]~output_o\ : std_logic;
SIGNAL \dataout2[8]~output_o\ : std_logic;
SIGNAL \dataout2[7]~output_o\ : std_logic;
SIGNAL \dataout2[6]~output_o\ : std_logic;
SIGNAL \dataout2[5]~output_o\ : std_logic;
SIGNAL \dataout2[4]~output_o\ : std_logic;
SIGNAL \dataout2[3]~output_o\ : std_logic;
SIGNAL \dataout2[2]~output_o\ : std_logic;
SIGNAL \dataout2[1]~output_o\ : std_logic;
SIGNAL \dataout2[0]~output_o\ : std_logic;
SIGNAL \ready1~output_o\ : std_logic;
SIGNAL \cpu0_rd_en~output_o\ : std_logic;
SIGNAL \ready2~output_o\ : std_logic;
SIGNAL \cpu1_rd_en~output_o\ : std_logic;
SIGNAL \cpu0_sdram_addr[2]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_addr[1]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_addr[0]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_addr2[2]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_addr2[1]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_addr2[0]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[31]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[30]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[29]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[28]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[27]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[26]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[25]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[24]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[23]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[22]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[21]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[20]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[19]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[18]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[17]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[16]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[15]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[14]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[13]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[12]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[11]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[10]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[9]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[8]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[7]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[6]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[5]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[4]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[3]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[2]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[1]~output_o\ : std_logic;
SIGNAL \cpu0_sdram_data_out[0]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[31]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[30]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[29]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[28]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[27]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[26]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[25]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[24]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[23]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[22]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[21]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[20]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[19]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[18]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[17]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[16]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[15]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[14]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[13]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[12]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[11]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[10]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[9]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[8]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[7]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[6]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[5]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[4]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[3]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[2]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[1]~output_o\ : std_logic;
SIGNAL \cpu1_sdram_data_out1[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst0|CurrentState.initial~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst0|CurrentState.initial~q\ : std_logic;
SIGNAL \wantedaddr0[1]~input_o\ : std_logic;
SIGNAL \inst0|Selector191~0_combout\ : std_logic;
SIGNAL \inst0|CurrentState.writeData~q\ : std_logic;
SIGNAL \inst0|dataToSendToCache[0]~0_combout\ : std_logic;
SIGNAL \inst0|CurrentState.requestData~q\ : std_logic;
SIGNAL \inst0|wantedAddressLatch[0]~0_combout\ : std_logic;
SIGNAL \inst0|wantedAddressCache[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector192~0_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \wantedaddr0[2]~input_o\ : std_logic;
SIGNAL \inst0|wantedAddressLatch[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.none~0_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst0|emptyCacheIndex[1]~0_combout\ : std_logic;
SIGNAL \inst0|emptyCacheIndex[1]~4_combout\ : std_logic;
SIGNAL \inst0|emptyCacheIndex~1_combout\ : std_logic;
SIGNAL \inst0|cache[0].valid~4_combout\ : std_logic;
SIGNAL \inst0|cache[2].valid~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].valid~q\ : std_logic;
SIGNAL \inst0|cache[3].valid~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].valid~q\ : std_logic;
SIGNAL \inst0|emptyCacheIndex~2_combout\ : std_logic;
SIGNAL \inst0|emptyCacheIndex~3_combout\ : std_logic;
SIGNAL \inst0|cache[1].valid~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].valid~q\ : std_logic;
SIGNAL \inst0|isCacheFull~1_combout\ : std_logic;
SIGNAL \inst0|evictCounter[0]~1_combout\ : std_logic;
SIGNAL \inst0|evictCounter[1]~0_combout\ : std_logic;
SIGNAL \inst0|dirtyBit~3_combout\ : std_logic;
SIGNAL \inst0|cache[0].address[2]~2_combout\ : std_logic;
SIGNAL \wantedaddr0[0]~input_o\ : std_logic;
SIGNAL \inst0|Selector11~0_combout\ : std_logic;
SIGNAL \inst0|process_0~6_combout\ : std_logic;
SIGNAL \inst0|process_0~7_combout\ : std_logic;
SIGNAL \inst0|isInCache~1_combout\ : std_logic;
SIGNAL \inst0|wantedAddressCache[0]~0_combout\ : std_logic;
SIGNAL \inst0|Selector10~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|dirtyBit~0_combout\ : std_logic;
SIGNAL \inst0|dirtyBit~1_combout\ : std_logic;
SIGNAL \inst0|cache[2].address[2]~2_combout\ : std_logic;
SIGNAL \inst0|process_0~2_combout\ : std_logic;
SIGNAL \inst0|dirtyBit~4_combout\ : std_logic;
SIGNAL \inst0|dirtyBit~5_combout\ : std_logic;
SIGNAL \inst0|cache[3].address[2]~2_combout\ : std_logic;
SIGNAL \inst0|cache[3].address[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|process_0~4_combout\ : std_logic;
SIGNAL \inst0|process_0~5_combout\ : std_logic;
SIGNAL \inst0|cache[2].address[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|process_0~3_combout\ : std_logic;
SIGNAL \inst0|isInCache~0_combout\ : std_logic;
SIGNAL \inst0|sdramState~0_combout\ : std_logic;
SIGNAL \inst0|sdramState~q\ : std_logic;
SIGNAL \inst0|hit~0_combout\ : std_logic;
SIGNAL \inst0|hit~q\ : std_logic;
SIGNAL \inst0|Selector193~0_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst0|wantedAddressCache[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector9~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].address[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[1].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst0|dirtyBit~2_combout\ : std_logic;
SIGNAL \inst0|cache[1].address[0]~2_combout\ : std_logic;
SIGNAL \inst0|cache[1].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~1_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~2_combout\ : std_logic;
SIGNAL \inst0|Selector7~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].valid~5_combout\ : std_logic;
SIGNAL \inst0|cache[0].valid~q\ : std_logic;
SIGNAL \inst0|isCacheFull~0_combout\ : std_logic;
SIGNAL \inst0|indexOfCache[0]~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst0|Selector82~0_combout\ : std_logic;
SIGNAL \inst0|process_0~8_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~3_combout\ : std_logic;
SIGNAL \inst0|indexOfCache[1]~6_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~4_combout\ : std_logic;
SIGNAL \inst0|Selector82~1_combout\ : std_logic;
SIGNAL \inst0|cache[2].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst0|cache[2].dirtyBit~q\ : std_logic;
SIGNAL \inst0|cache[3].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst0|Selector119~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst0|cache[3].dirtyBit~q\ : std_logic;
SIGNAL \inst0|indexOfCache~5_combout\ : std_logic;
SIGNAL \inst0|Selector45~1_combout\ : std_logic;
SIGNAL \inst0|cache[1].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst0|Selector45~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst0|cache[1].dirtyBit~q\ : std_logic;
SIGNAL \inst0|cache[0].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst0|cache[0].data[10]~0_combout\ : std_logic;
SIGNAL \inst0|cache~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst0|cache[0].dirtyBit~q\ : std_logic;
SIGNAL \inst0|Mux0~0_combout\ : std_logic;
SIGNAL \inst0|Mux0~1_combout\ : std_logic;
SIGNAL \inst0|Selector155~5_combout\ : std_logic;
SIGNAL \inst0|write_en~q\ : std_logic;
SIGNAL \inst0|Selector2~0_combout\ : std_logic;
SIGNAL \inst0|Selector2~1_combout\ : std_logic;
SIGNAL \inst0|Selector2~2_combout\ : std_logic;
SIGNAL \inst0|Selector155~4_combout\ : std_logic;
SIGNAL \inst0|Sdram_addr[2]~0_combout\ : std_logic;
SIGNAL \inst0|Sdram_addr[2]~1_combout\ : std_logic;
SIGNAL \inst0|Selector3~0_combout\ : std_logic;
SIGNAL \inst0|Selector3~1_combout\ : std_logic;
SIGNAL \inst0|Selector3~2_combout\ : std_logic;
SIGNAL \inst0|Selector4~0_combout\ : std_logic;
SIGNAL \inst0|Selector4~1_combout\ : std_logic;
SIGNAL \inst0|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|Decoder1~4_combout\ : std_logic;
SIGNAL \inst0|Selector33~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[10]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[2]~3_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[2]~2_combout\ : std_logic;
SIGNAL \inst0|cache[0].data[10]~1_combout\ : std_logic;
SIGNAL \inst0|Selector177~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[10]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[2]~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[10]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[2]~2_combout\ : std_logic;
SIGNAL \inst0|Selector177~1_combout\ : std_logic;
SIGNAL \inst0|Sdram_data_out[10]~2_combout\ : std_logic;
SIGNAL \wantedaddr1[2]~input_o\ : std_logic;
SIGNAL \inst1|Selector191~0_combout\ : std_logic;
SIGNAL \inst1|CurrentState.writeData~q\ : std_logic;
SIGNAL \inst1|dataToSendToCache[0]~0_combout\ : std_logic;
SIGNAL \inst1|CurrentState.requestData~q\ : std_logic;
SIGNAL \inst1|wantedAddressLatch[0]~0_combout\ : std_logic;
SIGNAL \inst1|Selector192~0_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \wantedaddr1[0]~input_o\ : std_logic;
SIGNAL \inst1|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].valid~4_combout\ : std_logic;
SIGNAL \inst1|cache[2].valid~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].valid~q\ : std_logic;
SIGNAL \inst1|isCacheFull~1_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.none~0_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst1|emptyCacheIndex[1]~0_combout\ : std_logic;
SIGNAL \inst1|emptyCacheIndex[1]~4_combout\ : std_logic;
SIGNAL \inst1|emptyCacheIndex~1_combout\ : std_logic;
SIGNAL \inst1|cache[1].valid~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].valid~q\ : std_logic;
SIGNAL \inst1|emptyCacheIndex~2_combout\ : std_logic;
SIGNAL \inst1|emptyCacheIndex~3_combout\ : std_logic;
SIGNAL \inst1|cache[3].valid~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].valid~q\ : std_logic;
SIGNAL \inst1|isCacheFull~0_combout\ : std_logic;
SIGNAL \inst1|evictCounter[0]~1_combout\ : std_logic;
SIGNAL \inst1|dirtyBit~0_combout\ : std_logic;
SIGNAL \inst1|evictCounter[1]~0_combout\ : std_logic;
SIGNAL \inst1|dirtyBit~1_combout\ : std_logic;
SIGNAL \inst1|cache[2].address[0]~2_combout\ : std_logic;
SIGNAL \wantedaddr1[1]~input_o\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|dirtyBit~4_combout\ : std_logic;
SIGNAL \inst1|dirtyBit~5_combout\ : std_logic;
SIGNAL \inst1|cache[3].address[1]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|isInCache~0_combout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].valid~5_combout\ : std_logic;
SIGNAL \inst1|cache[0].valid~q\ : std_logic;
SIGNAL \inst1|dirtyBit~3_combout\ : std_logic;
SIGNAL \inst1|cache[0].address[0]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|sdramState~0_combout\ : std_logic;
SIGNAL \inst1|sdramState~q\ : std_logic;
SIGNAL \inst1|wantedAddressCache[0]~0_combout\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|dirtyBit~2_combout\ : std_logic;
SIGNAL \inst1|dirtyBit~6_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[2]~2_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~1_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~2_combout\ : std_logic;
SIGNAL \inst1|isInCache~1_combout\ : std_logic;
SIGNAL \inst1|hit~0_combout\ : std_logic;
SIGNAL \inst1|hit~q\ : std_logic;
SIGNAL \inst1|Selector193~0_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~1_combout\ : std_logic;
SIGNAL \inst1|Selector2~2_combout\ : std_logic;
SIGNAL \inst1|indexOfCache[0]~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst1|Selector82~3_combout\ : std_logic;
SIGNAL \inst1|indexOfCache[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|indexOfCache[1]~6_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~3_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~4_combout\ : std_logic;
SIGNAL \inst1|Selector82~2_combout\ : std_logic;
SIGNAL \inst1|cache[2].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst1|cache[2].dirtyBit~q\ : std_logic;
SIGNAL \inst1|cache[3].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst1|Selector119~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst1|cache[3].dirtyBit~q\ : std_logic;
SIGNAL \inst1|indexOfCache~5_combout\ : std_logic;
SIGNAL \inst1|Selector45~1_combout\ : std_logic;
SIGNAL \inst1|cache[1].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst1|Selector45~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst1|cache[1].dirtyBit~q\ : std_logic;
SIGNAL \inst1|cache[0].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst1|cache~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].data[1]~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst1|cache[0].dirtyBit~q\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Selector155~4_combout\ : std_logic;
SIGNAL \inst1|Sdram_addr[2]~0_combout\ : std_logic;
SIGNAL \inst1|Sdram_addr[2]~1_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|Selector3~2_combout\ : std_logic;
SIGNAL \inst1|Selector155~5_combout\ : std_logic;
SIGNAL \inst1|write_en~q\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|Decoder0~2_combout\ : std_logic;
SIGNAL \inst3|memory[7][10]~0_combout\ : std_logic;
SIGNAL \inst3|Decoder1~3_combout\ : std_logic;
SIGNAL \inst3|memory[7][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~0_combout\ : std_logic;
SIGNAL \inst3|memory~1_combout\ : std_logic;
SIGNAL \inst3|Decoder0~0_combout\ : std_logic;
SIGNAL \inst3|memory[5][10]~2_combout\ : std_logic;
SIGNAL \inst3|memory[5][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~2_combout\ : std_logic;
SIGNAL \inst3|memory~5_combout\ : std_logic;
SIGNAL \inst3|Decoder0~1_combout\ : std_logic;
SIGNAL \inst3|memory[4][10]~6_combout\ : std_logic;
SIGNAL \inst3|memory[4][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~1_combout\ : std_logic;
SIGNAL \inst3|memory~3_combout\ : std_logic;
SIGNAL \inst3|memory[6][10]~4_combout\ : std_logic;
SIGNAL \inst3|memory[6][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~0_combout\ : std_logic;
SIGNAL \inst3|Mux21~1_combout\ : std_logic;
SIGNAL \inst3|Decoder1~7_combout\ : std_logic;
SIGNAL \inst3|memory~13_combout\ : std_logic;
SIGNAL \inst3|Decoder0~5_combout\ : std_logic;
SIGNAL \inst3|memory[3][2]~14_combout\ : std_logic;
SIGNAL \inst3|memory[3][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~6_combout\ : std_logic;
SIGNAL \inst3|memory~11_combout\ : std_logic;
SIGNAL \inst3|memory[0][1]~12_combout\ : std_logic;
SIGNAL \inst3|memory[0][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~5_combout\ : std_logic;
SIGNAL \inst3|memory~9_combout\ : std_logic;
SIGNAL \inst3|Decoder0~4_combout\ : std_logic;
SIGNAL \inst3|memory[1][2]~10_combout\ : std_logic;
SIGNAL \inst3|memory[1][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~2_combout\ : std_logic;
SIGNAL \inst3|Mux21~3_combout\ : std_logic;
SIGNAL \inst3|Mux21~4_combout\ : std_logic;
SIGNAL \inst1|read_en~feeder_combout\ : std_logic;
SIGNAL \inst1|read_en~q\ : std_logic;
SIGNAL \inst3|data_out2[10]~0_combout\ : std_logic;
SIGNAL \inst1|Selector33~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[1]~3_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[10]~2_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[1]~2_combout\ : std_logic;
SIGNAL \inst1|cache[0].data[1]~1_combout\ : std_logic;
SIGNAL \inst1|Selector177~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[2]~0_combout\ : std_logic;
SIGNAL \inst1|Selector177~1_combout\ : std_logic;
SIGNAL \inst1|Sdram_data_out[10]~2_combout\ : std_logic;
SIGNAL \inst3|memory~7_combout\ : std_logic;
SIGNAL \inst3|Decoder0~3_combout\ : std_logic;
SIGNAL \inst3|memory[2][2]~8_combout\ : std_logic;
SIGNAL \inst3|memory[2][10]~q\ : std_logic;
SIGNAL \inst3|Mux53~2_combout\ : std_logic;
SIGNAL \inst3|Mux53~3_combout\ : std_logic;
SIGNAL \inst3|Mux53~0_combout\ : std_logic;
SIGNAL \inst3|Mux53~1_combout\ : std_logic;
SIGNAL \inst3|Mux53~4_combout\ : std_logic;
SIGNAL \inst0|read_en~feeder_combout\ : std_logic;
SIGNAL \inst0|read_en~q\ : std_logic;
SIGNAL \inst3|data_out1[10]~0_combout\ : std_logic;
SIGNAL \inst0|dataToSendToCache[0]~1_combout\ : std_logic;
SIGNAL \inst0|Selector41~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector185~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector185~1_combout\ : std_logic;
SIGNAL \inst3|memory~15_combout\ : std_logic;
SIGNAL \inst3|memory[5][2]~q\ : std_logic;
SIGNAL \inst3|memory~17_combout\ : std_logic;
SIGNAL \inst3|memory~18_combout\ : std_logic;
SIGNAL \inst3|memory[4][2]~q\ : std_logic;
SIGNAL \inst3|memory~16_combout\ : std_logic;
SIGNAL \inst3|memory[6][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~0_combout\ : std_logic;
SIGNAL \inst3|Mux29~1_combout\ : std_logic;
SIGNAL \inst3|memory~21_combout\ : std_logic;
SIGNAL \inst3|memory[2][2]~q\ : std_logic;
SIGNAL \inst3|memory~24_combout\ : std_logic;
SIGNAL \inst3|memory[3][2]~q\ : std_logic;
SIGNAL \inst3|memory~23_combout\ : std_logic;
SIGNAL \inst3|memory[0][2]~q\ : std_logic;
SIGNAL \inst3|memory~22_combout\ : std_logic;
SIGNAL \inst3|memory[1][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~2_combout\ : std_logic;
SIGNAL \inst3|Mux29~3_combout\ : std_logic;
SIGNAL \inst3|Mux29~4_combout\ : std_logic;
SIGNAL \inst1|dataToSendToCache[0]~1_combout\ : std_logic;
SIGNAL \inst1|Selector41~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector185~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector185~1_combout\ : std_logic;
SIGNAL \inst3|memory~19_combout\ : std_logic;
SIGNAL \inst3|memory[7][0]~20_combout\ : std_logic;
SIGNAL \inst3|memory[7][2]~q\ : std_logic;
SIGNAL \inst3|Mux61~0_combout\ : std_logic;
SIGNAL \inst3|Mux61~1_combout\ : std_logic;
SIGNAL \inst3|Mux61~2_combout\ : std_logic;
SIGNAL \inst3|Mux61~3_combout\ : std_logic;
SIGNAL \inst3|Mux61~4_combout\ : std_logic;
SIGNAL \inst0|Selector42~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector186~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector186~1_combout\ : std_logic;
SIGNAL \inst3|memory~33_combout\ : std_logic;
SIGNAL \inst3|memory[3][1]~q\ : std_logic;
SIGNAL \inst3|memory~29_combout\ : std_logic;
SIGNAL \inst3|memory~30_combout\ : std_logic;
SIGNAL \inst3|memory[2][1]~q\ : std_logic;
SIGNAL \inst3|memory~32_combout\ : std_logic;
SIGNAL \inst3|memory[0][1]~q\ : std_logic;
SIGNAL \inst3|memory~31_combout\ : std_logic;
SIGNAL \inst3|memory[1][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~2_combout\ : std_logic;
SIGNAL \inst3|Mux30~3_combout\ : std_logic;
SIGNAL \inst3|memory~28_combout\ : std_logic;
SIGNAL \inst3|memory[7][1]~q\ : std_logic;
SIGNAL \inst3|memory~26_combout\ : std_logic;
SIGNAL \inst3|memory[6][1]~q\ : std_logic;
SIGNAL \inst3|memory~27_combout\ : std_logic;
SIGNAL \inst3|memory[4][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~0_combout\ : std_logic;
SIGNAL \inst3|Mux30~1_combout\ : std_logic;
SIGNAL \inst3|Mux30~4_combout\ : std_logic;
SIGNAL \inst1|Selector42~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector186~0_combout\ : std_logic;
SIGNAL \inst1|Selector186~1_combout\ : std_logic;
SIGNAL \inst3|memory~25_combout\ : std_logic;
SIGNAL \inst3|memory[5][1]~q\ : std_logic;
SIGNAL \inst3|Mux62~0_combout\ : std_logic;
SIGNAL \inst3|Mux62~1_combout\ : std_logic;
SIGNAL \inst3|Mux62~2_combout\ : std_logic;
SIGNAL \inst3|Mux62~3_combout\ : std_logic;
SIGNAL \inst3|Mux62~4_combout\ : std_logic;
SIGNAL \inst0|Selector43~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector187~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector187~1_combout\ : std_logic;
SIGNAL \inst3|memory~37_combout\ : std_logic;
SIGNAL \inst3|memory[7][0]~q\ : std_logic;
SIGNAL \inst3|memory~35_combout\ : std_logic;
SIGNAL \inst3|memory[6][0]~q\ : std_logic;
SIGNAL \inst3|memory~36_combout\ : std_logic;
SIGNAL \inst3|memory[4][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~0_combout\ : std_logic;
SIGNAL \inst3|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|memory~38_combout\ : std_logic;
SIGNAL \inst3|memory[2][0]~q\ : std_logic;
SIGNAL \inst3|memory~42_combout\ : std_logic;
SIGNAL \inst3|memory[3][0]~q\ : std_logic;
SIGNAL \inst3|memory~41_combout\ : std_logic;
SIGNAL \inst3|memory[0][0]~q\ : std_logic;
SIGNAL \inst3|memory~39_combout\ : std_logic;
SIGNAL \inst3|memory~40_combout\ : std_logic;
SIGNAL \inst3|memory[1][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~2_combout\ : std_logic;
SIGNAL \inst3|Mux31~3_combout\ : std_logic;
SIGNAL \inst3|Mux31~4_combout\ : std_logic;
SIGNAL \inst1|Selector43~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector187~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector187~1_combout\ : std_logic;
SIGNAL \inst3|memory~34_combout\ : std_logic;
SIGNAL \inst3|memory[5][0]~q\ : std_logic;
SIGNAL \inst3|Mux63~0_combout\ : std_logic;
SIGNAL \inst3|Mux63~1_combout\ : std_logic;
SIGNAL \inst3|Mux63~2_combout\ : std_logic;
SIGNAL \inst3|Mux63~3_combout\ : std_logic;
SIGNAL \inst3|Mux63~4_combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst1|Sdram_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[0].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|data_out1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[0].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|wantedAddressLatch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|data_out2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|wantedAddressLatch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|Sdram_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|Sdram_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|Sdram_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|dataToSendToCache\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[2].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[3].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[1].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|cache[2].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cache[3].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cache[0].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cache[1].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[1].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[2].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[3].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[1].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[2].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[0].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[3].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|indexOfCache\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst0|emptyCacheIndex\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst0|wantedAddressCache\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|indexOfCache\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|emptyCacheIndex\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|wantedAddressCache\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|dataToSendToCache\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

cpu0_wr_en <= ww_cpu0_wr_en;
ww_clk <= clk;
ww_rst <= rst;
dataout1 <= ww_dataout1;
cpu1_wr_en <= ww_cpu1_wr_en;
dataout2 <= ww_dataout2;
ww_wantedaddr1 <= wantedaddr1;
ready1 <= ww_ready1;
cpu0_rd_en <= ww_cpu0_rd_en;
ready2 <= ww_ready2;
cpu1_rd_en <= ww_cpu1_rd_en;
cpu0_sdram_addr <= ww_cpu0_sdram_addr;
cpu1_sdram_addr2 <= ww_cpu1_sdram_addr2;
cpu0_sdram_data_out <= ww_cpu0_sdram_data_out;
cpu1_sdram_data_out1 <= ww_cpu1_sdram_data_out1;
ww_wantedaddr0 <= wantedaddr0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y73_N16
\cpu0_wr_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|write_en~q\,
	devoe => ww_devoe,
	o => \cpu0_wr_en~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\dataout1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[31]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\dataout1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[30]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\dataout1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[29]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\dataout1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\dataout1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[27]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\dataout1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[26]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\dataout1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[25]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\dataout1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[24]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\dataout1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[23]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\dataout1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[22]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\dataout1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[21]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\dataout1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\dataout1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[19]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\dataout1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[18]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\dataout1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\dataout1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[16]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\dataout1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[15]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\dataout1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\dataout1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[13]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\dataout1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\dataout1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[11]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\dataout1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[10]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\dataout1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\dataout1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[8]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\dataout1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\dataout1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\dataout1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\dataout1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\dataout1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \dataout1[3]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\dataout1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(2),
	devoe => ww_devoe,
	o => \dataout1[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\dataout1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(1),
	devoe => ww_devoe,
	o => \dataout1[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\dataout1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(0),
	devoe => ww_devoe,
	o => \dataout1[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\cpu1_wr_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_en~q\,
	devoe => ww_devoe,
	o => \cpu1_wr_en~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\dataout2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[31]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\dataout2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[30]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\dataout2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[29]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\dataout2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[28]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\dataout2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\dataout2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\dataout2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[25]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\dataout2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[24]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\dataout2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\dataout2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[22]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\dataout2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\dataout2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[20]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\dataout2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[19]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\dataout2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[18]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\dataout2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[17]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\dataout2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[16]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\dataout2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[15]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\dataout2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\dataout2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[13]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\dataout2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dataout2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[11]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\dataout2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\dataout2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\dataout2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[8]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\dataout2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\dataout2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\dataout2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\dataout2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\dataout2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \dataout2[3]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\dataout2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(2),
	devoe => ww_devoe,
	o => \dataout2[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\dataout2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(1),
	devoe => ww_devoe,
	o => \dataout2[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\dataout2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(0),
	devoe => ww_devoe,
	o => \dataout2[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\ready1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \ready1~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\cpu0_rd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|read_en~q\,
	devoe => ww_devoe,
	o => \cpu0_rd_en~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\ready2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~combout\,
	devoe => ww_devoe,
	o => \ready2~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\cpu1_rd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|read_en~q\,
	devoe => ww_devoe,
	o => \cpu1_rd_en~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\cpu0_sdram_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_addr\(2),
	devoe => ww_devoe,
	o => \cpu0_sdram_addr[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\cpu0_sdram_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_addr\(1),
	devoe => ww_devoe,
	o => \cpu0_sdram_addr[1]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\cpu0_sdram_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_addr\(0),
	devoe => ww_devoe,
	o => \cpu0_sdram_addr[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\cpu1_sdram_addr2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_addr\(2),
	devoe => ww_devoe,
	o => \cpu1_sdram_addr2[2]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\cpu1_sdram_addr2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_addr\(1),
	devoe => ww_devoe,
	o => \cpu1_sdram_addr2[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\cpu1_sdram_addr2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_addr\(0),
	devoe => ww_devoe,
	o => \cpu1_sdram_addr2[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\cpu0_sdram_data_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[31]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\cpu0_sdram_data_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[30]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\cpu0_sdram_data_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[29]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\cpu0_sdram_data_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[28]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\cpu0_sdram_data_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[27]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\cpu0_sdram_data_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[26]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\cpu0_sdram_data_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[25]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\cpu0_sdram_data_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\cpu0_sdram_data_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[23]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\cpu0_sdram_data_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[22]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\cpu0_sdram_data_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[21]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\cpu0_sdram_data_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[20]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\cpu0_sdram_data_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[19]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\cpu0_sdram_data_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[18]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\cpu0_sdram_data_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[17]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\cpu0_sdram_data_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[16]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\cpu0_sdram_data_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\cpu0_sdram_data_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[14]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\cpu0_sdram_data_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\cpu0_sdram_data_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\cpu0_sdram_data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[11]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\cpu0_sdram_data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\cpu0_sdram_data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[9]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\cpu0_sdram_data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[8]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\cpu0_sdram_data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[7]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\cpu0_sdram_data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\cpu0_sdram_data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\cpu0_sdram_data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\cpu0_sdram_data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\cpu0_sdram_data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(2),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[2]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\cpu0_sdram_data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(1),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[1]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\cpu0_sdram_data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(0),
	devoe => ww_devoe,
	o => \cpu0_sdram_data_out[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\cpu1_sdram_data_out1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[31]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\cpu1_sdram_data_out1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[30]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\cpu1_sdram_data_out1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[29]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\cpu1_sdram_data_out1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[28]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\cpu1_sdram_data_out1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[27]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\cpu1_sdram_data_out1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[26]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\cpu1_sdram_data_out1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[25]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\cpu1_sdram_data_out1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[24]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\cpu1_sdram_data_out1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[23]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\cpu1_sdram_data_out1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[22]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\cpu1_sdram_data_out1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[21]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\cpu1_sdram_data_out1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[20]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\cpu1_sdram_data_out1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\cpu1_sdram_data_out1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[18]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\cpu1_sdram_data_out1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[17]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\cpu1_sdram_data_out1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[16]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\cpu1_sdram_data_out1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[15]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\cpu1_sdram_data_out1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[14]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\cpu1_sdram_data_out1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[13]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\cpu1_sdram_data_out1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[12]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\cpu1_sdram_data_out1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[11]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\cpu1_sdram_data_out1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[10]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\cpu1_sdram_data_out1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[9]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\cpu1_sdram_data_out1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[8]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\cpu1_sdram_data_out1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[7]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\cpu1_sdram_data_out1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\cpu1_sdram_data_out1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[5]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\cpu1_sdram_data_out1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[4]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\cpu1_sdram_data_out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[3]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\cpu1_sdram_data_out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(2),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\cpu1_sdram_data_out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(1),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[1]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\cpu1_sdram_data_out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(0),
	devoe => ww_devoe,
	o => \cpu1_sdram_data_out1[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: LCCOMB_X21_Y68_N22
\inst0|CurrentState.initial~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|CurrentState.initial~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst0|CurrentState.initial~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X21_Y68_N23
\inst0|CurrentState.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|CurrentState.initial~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|CurrentState.initial~q\);

-- Location: IOIBUF_X18_Y73_N15
\wantedaddr0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wantedaddr0(1),
	o => \wantedaddr0[1]~input_o\);

-- Location: LCCOMB_X21_Y68_N24
\inst0|Selector191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector191~0_combout\ = ((\inst0|CurrentState.requestData~q\ & \inst0|hit~q\)) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.requestData~q\,
	datac => \inst0|CurrentState.initial~q\,
	datad => \inst0|hit~q\,
	combout => \inst0|Selector191~0_combout\);

-- Location: FF_X21_Y68_N25
\inst0|CurrentState.writeData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector191~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|CurrentState.writeData~q\);

-- Location: LCCOMB_X21_Y68_N6
\inst0|dataToSendToCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dataToSendToCache[0]~0_combout\ = (\inst0|CurrentState.writeData~q\) # ((!\inst0|hit~q\ & \inst0|CurrentState.requestData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|hit~q\,
	datac => \inst0|CurrentState.requestData~q\,
	datad => \inst0|CurrentState.writeData~q\,
	combout => \inst0|dataToSendToCache[0]~0_combout\);

-- Location: FF_X21_Y68_N7
\inst0|CurrentState.requestData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|dataToSendToCache[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|CurrentState.requestData~q\);

-- Location: LCCOMB_X21_Y68_N4
\inst0|wantedAddressLatch[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|wantedAddressLatch[0]~0_combout\ = (!\rst~input_o\ & ((\inst0|hit~q\) # (!\inst0|CurrentState.requestData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.requestData~q\,
	datac => \rst~input_o\,
	datad => \inst0|hit~q\,
	combout => \inst0|wantedAddressLatch[0]~0_combout\);

-- Location: FF_X19_Y68_N5
\inst0|wantedAddressLatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wantedaddr0[1]~input_o\,
	sload => VCC,
	ena => \inst0|wantedAddressLatch[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressLatch\(1));

-- Location: LCCOMB_X20_Y69_N4
\inst0|wantedAddressCache[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|wantedAddressCache[1]~feeder_combout\ = \inst0|wantedAddressLatch\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|wantedAddressLatch\(1),
	combout => \inst0|wantedAddressCache[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y68_N28
\inst0|Selector192~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector192~0_combout\ = (\inst0|CurrentState.writeData~q\) # ((\inst0|CurrentState.requestData~q\ & (\inst0|cpuCacheOperation.read_cache~q\ & !\inst0|hit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.requestData~q\,
	datab => \inst0|CurrentState.writeData~q\,
	datac => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|hit~q\,
	combout => \inst0|Selector192~0_combout\);

-- Location: FF_X21_Y68_N29
\inst0|cpuCacheOperation.read_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector192~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpuCacheOperation.read_cache~q\);

-- Location: IOIBUF_X13_Y73_N15
\wantedaddr0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wantedaddr0(2),
	o => \wantedaddr0[2]~input_o\);

-- Location: LCCOMB_X17_Y68_N28
\inst0|wantedAddressLatch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|wantedAddressLatch[2]~feeder_combout\ = \wantedaddr0[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wantedaddr0[2]~input_o\,
	combout => \inst0|wantedAddressLatch[2]~feeder_combout\);

-- Location: FF_X17_Y68_N29
\inst0|wantedAddressLatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|wantedAddressLatch[2]~feeder_combout\,
	ena => \inst0|wantedAddressLatch[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressLatch\(2));

-- Location: LCCOMB_X21_Y68_N18
\inst0|cpuCacheOperation.none~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cpuCacheOperation.none~0_combout\ = ((\inst0|cpuCacheOperation.none~q\) # (\inst0|hit~q\)) # (!\inst0|CurrentState.requestData~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.requestData~q\,
	datac => \inst0|cpuCacheOperation.none~q\,
	datad => \inst0|hit~q\,
	combout => \inst0|cpuCacheOperation.none~0_combout\);

-- Location: FF_X21_Y68_N19
\inst0|cpuCacheOperation.none\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|cpuCacheOperation.none~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpuCacheOperation.none~q\);

-- Location: LCCOMB_X19_Y67_N18
\inst0|emptyCacheIndex[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|emptyCacheIndex[1]~0_combout\ = (\inst0|cpuCacheOperation.none~q\ & ((\inst0|cpuCacheOperation.write_cache~q\ & ((!\inst0|isInCache~1_combout\))) # (!\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.none~q\,
	datab => \inst0|sdramState~q\,
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|isInCache~1_combout\,
	combout => \inst0|emptyCacheIndex[1]~0_combout\);

-- Location: LCCOMB_X18_Y67_N14
\inst0|emptyCacheIndex[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|emptyCacheIndex[1]~4_combout\ = (!\rst~input_o\ & \inst0|emptyCacheIndex[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \inst0|emptyCacheIndex[1]~0_combout\,
	combout => \inst0|emptyCacheIndex[1]~4_combout\);

-- Location: FF_X18_Y67_N15
\inst0|emptyCacheIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|emptyCacheIndex~1_combout\,
	sload => VCC,
	ena => \inst0|emptyCacheIndex[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|emptyCacheIndex\(1));

-- Location: LCCOMB_X18_Y67_N20
\inst0|emptyCacheIndex~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|emptyCacheIndex~1_combout\ = (\inst0|cache[0].valid~q\ & ((\inst0|isCacheFull~1_combout\ & ((\inst0|emptyCacheIndex\(1)))) # (!\inst0|isCacheFull~1_combout\ & (\inst0|cache[1].valid~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~1_combout\,
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|cache[0].valid~q\,
	datad => \inst0|emptyCacheIndex\(1),
	combout => \inst0|emptyCacheIndex~1_combout\);

-- Location: FF_X18_Y67_N13
\inst0|emptyCacheIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|emptyCacheIndex~3_combout\,
	ena => \inst0|emptyCacheIndex[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|emptyCacheIndex\(0));

-- Location: LCCOMB_X18_Y67_N2
\inst0|cache[0].valid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].valid~4_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (!\inst0|sdramState~q\)) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((!\inst0|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|sdramState~q\,
	datac => \inst0|Selector7~0_combout\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|cache[0].valid~4_combout\);

-- Location: LCCOMB_X18_Y67_N18
\inst0|cache[2].valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].valid~0_combout\ = (\inst0|cache[2].valid~q\) # ((\inst0|emptyCacheIndex~1_combout\ & (!\inst0|emptyCacheIndex~3_combout\ & !\inst0|cache[0].valid~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|emptyCacheIndex~1_combout\,
	datab => \inst0|emptyCacheIndex~3_combout\,
	datac => \inst0|cache[2].valid~q\,
	datad => \inst0|cache[0].valid~4_combout\,
	combout => \inst0|cache[2].valid~0_combout\);

-- Location: FF_X18_Y67_N19
\inst0|cache[2].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].valid~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].valid~q\);

-- Location: LCCOMB_X18_Y67_N24
\inst0|cache[3].valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].valid~0_combout\ = (\inst0|cache[3].valid~q\) # ((\inst0|emptyCacheIndex~1_combout\ & (\inst0|emptyCacheIndex~3_combout\ & !\inst0|cache[0].valid~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|emptyCacheIndex~1_combout\,
	datab => \inst0|emptyCacheIndex~3_combout\,
	datac => \inst0|cache[3].valid~q\,
	datad => \inst0|cache[0].valid~4_combout\,
	combout => \inst0|cache[3].valid~0_combout\);

-- Location: FF_X18_Y67_N25
\inst0|cache[3].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].valid~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].valid~q\);

-- Location: LCCOMB_X18_Y67_N6
\inst0|emptyCacheIndex~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|emptyCacheIndex~2_combout\ = (\inst0|cache[0].valid~q\ & (((\inst0|cache[2].valid~q\ & !\inst0|cache[3].valid~q\)) # (!\inst0|cache[1].valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].valid~q\,
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|cache[2].valid~q\,
	datad => \inst0|cache[3].valid~q\,
	combout => \inst0|emptyCacheIndex~2_combout\);

-- Location: LCCOMB_X18_Y67_N12
\inst0|emptyCacheIndex~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|emptyCacheIndex~3_combout\ = (\inst0|emptyCacheIndex~2_combout\) # ((\inst0|isCacheFull~0_combout\ & \inst0|emptyCacheIndex\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~0_combout\,
	datac => \inst0|emptyCacheIndex\(0),
	datad => \inst0|emptyCacheIndex~2_combout\,
	combout => \inst0|emptyCacheIndex~3_combout\);

-- Location: LCCOMB_X18_Y67_N4
\inst0|cache[1].valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].valid~0_combout\ = (\inst0|cache[1].valid~q\) # ((!\inst0|emptyCacheIndex~1_combout\ & (\inst0|emptyCacheIndex~3_combout\ & !\inst0|cache[0].valid~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|emptyCacheIndex~1_combout\,
	datab => \inst0|emptyCacheIndex~3_combout\,
	datac => \inst0|cache[1].valid~q\,
	datad => \inst0|cache[0].valid~4_combout\,
	combout => \inst0|cache[1].valid~0_combout\);

-- Location: FF_X18_Y67_N5
\inst0|cache[1].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].valid~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].valid~q\);

-- Location: LCCOMB_X18_Y67_N8
\inst0|isCacheFull~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|isCacheFull~1_combout\ = (\inst0|cache[1].valid~q\ & (\inst0|cache[2].valid~q\ & \inst0|cache[3].valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|cache[2].valid~q\,
	datad => \inst0|cache[3].valid~q\,
	combout => \inst0|isCacheFull~1_combout\);

-- Location: LCCOMB_X18_Y67_N10
\inst0|evictCounter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|evictCounter[0]~1_combout\ = \inst0|evictCounter\(0) $ (((\inst0|isCacheFull~0_combout\ & \inst0|emptyCacheIndex[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~0_combout\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|emptyCacheIndex[1]~0_combout\,
	combout => \inst0|evictCounter[0]~1_combout\);

-- Location: FF_X18_Y67_N11
\inst0|evictCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|evictCounter[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|evictCounter\(0));

-- Location: LCCOMB_X18_Y67_N16
\inst0|evictCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|evictCounter[1]~0_combout\ = \inst0|evictCounter\(1) $ (((\inst0|isCacheFull~0_combout\ & (\inst0|evictCounter\(0) & \inst0|emptyCacheIndex[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~0_combout\,
	datab => \inst0|evictCounter\(0),
	datac => \inst0|evictCounter\(1),
	datad => \inst0|emptyCacheIndex[1]~0_combout\,
	combout => \inst0|evictCounter[1]~0_combout\);

-- Location: FF_X18_Y67_N17
\inst0|evictCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|evictCounter[1]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|evictCounter\(1));

-- Location: LCCOMB_X19_Y67_N12
\inst0|dirtyBit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dirtyBit~3_combout\ = (\inst0|cache[0].valid~q\ & (((\inst0|evictCounter\(1)) # (\inst0|evictCounter\(0))) # (!\inst0|isCacheFull~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~1_combout\,
	datab => \inst0|cache[0].valid~q\,
	datac => \inst0|evictCounter\(1),
	datad => \inst0|evictCounter\(0),
	combout => \inst0|dirtyBit~3_combout\);

-- Location: LCCOMB_X18_Y68_N26
\inst0|cache[0].address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].address[2]~2_combout\ = (!\inst0|dirtyBit~3_combout\ & ((\inst0|Selector7~0_combout\) # ((\inst0|cpuCacheOperation.read_cache~q\ & \inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|sdramState~q\,
	datac => \inst0|Selector7~0_combout\,
	datad => \inst0|dirtyBit~3_combout\,
	combout => \inst0|cache[0].address[2]~2_combout\);

-- Location: FF_X18_Y68_N7
\inst0|cache[0].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector9~0_combout\,
	sload => VCC,
	ena => \inst0|cache[0].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].address\(2));

-- Location: FF_X18_Y68_N31
\inst0|cache[0].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector10~0_combout\,
	sload => VCC,
	ena => \inst0|cache[0].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].address\(1));

-- Location: IOIBUF_X11_Y73_N22
\wantedaddr0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wantedaddr0(0),
	o => \wantedaddr0[0]~input_o\);

-- Location: FF_X19_Y68_N15
\inst0|wantedAddressLatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wantedaddr0[0]~input_o\,
	sload => VCC,
	ena => \inst0|wantedAddressLatch[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressLatch\(0));

-- Location: FF_X20_Y69_N19
\inst0|wantedAddressCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|wantedAddressLatch\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst0|wantedAddressCache[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressCache\(0));

-- Location: LCCOMB_X20_Y68_N4
\inst0|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector11~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|wantedAddressLatch\(0)))) # (!\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|wantedAddressCache\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|wantedAddressCache\(0),
	datad => \inst0|wantedAddressLatch\(0),
	combout => \inst0|Selector11~0_combout\);

-- Location: FF_X18_Y68_N17
\inst0|cache[0].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector11~0_combout\,
	sload => VCC,
	ena => \inst0|cache[0].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].address\(0));

-- Location: LCCOMB_X18_Y68_N16
\inst0|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~6_combout\ = (\inst0|cache[0].address\(1) & (\inst0|wantedAddressLatch\(1) & (\inst0|wantedAddressLatch\(0) $ (!\inst0|cache[0].address\(0))))) # (!\inst0|cache[0].address\(1) & (!\inst0|wantedAddressLatch\(1) & 
-- (\inst0|wantedAddressLatch\(0) $ (!\inst0|cache[0].address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].address\(1),
	datab => \inst0|wantedAddressLatch\(0),
	datac => \inst0|cache[0].address\(0),
	datad => \inst0|wantedAddressLatch\(1),
	combout => \inst0|process_0~6_combout\);

-- Location: LCCOMB_X18_Y68_N6
\inst0|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~7_combout\ = (\inst0|cache[0].valid~q\ & (\inst0|process_0~6_combout\ & (\inst0|wantedAddressLatch\(2) $ (!\inst0|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].valid~q\,
	datab => \inst0|wantedAddressLatch\(2),
	datac => \inst0|cache[0].address\(2),
	datad => \inst0|process_0~6_combout\,
	combout => \inst0|process_0~7_combout\);

-- Location: LCCOMB_X19_Y68_N6
\inst0|isInCache~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|isInCache~1_combout\ = (\inst0|indexOfCache~2_combout\) # ((\inst0|process_0~7_combout\) # (!\inst0|isInCache~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~2_combout\,
	datac => \inst0|process_0~7_combout\,
	datad => \inst0|isInCache~0_combout\,
	combout => \inst0|isInCache~1_combout\);

-- Location: LCCOMB_X20_Y69_N18
\inst0|wantedAddressCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|wantedAddressCache[0]~0_combout\ = (!\inst0|sdramState~q\ & (\inst0|cpuCacheOperation.read_cache~q\ & !\inst0|isInCache~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState~q\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|isInCache~1_combout\,
	combout => \inst0|wantedAddressCache[0]~0_combout\);

-- Location: FF_X20_Y69_N5
\inst0|wantedAddressCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|wantedAddressCache[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|wantedAddressCache[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressCache\(1));

-- Location: LCCOMB_X20_Y68_N18
\inst0|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector10~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|wantedAddressLatch\(1))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|wantedAddressCache\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|wantedAddressLatch\(1),
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|wantedAddressCache\(1),
	combout => \inst0|Selector10~0_combout\);

-- Location: LCCOMB_X20_Y68_N2
\inst0|cache[2].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].address[1]~feeder_combout\ = \inst0|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector10~0_combout\,
	combout => \inst0|cache[2].address[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y68_N28
\inst0|dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dirtyBit~0_combout\ = (!\inst0|cache[2].valid~q\ & (\inst0|cache[0].valid~q\ & \inst0|cache[1].valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].valid~q\,
	datac => \inst0|cache[0].valid~q\,
	datad => \inst0|cache[1].valid~q\,
	combout => \inst0|dirtyBit~0_combout\);

-- Location: LCCOMB_X20_Y68_N10
\inst0|dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dirtyBit~1_combout\ = (\inst0|dirtyBit~0_combout\) # ((\inst0|isCacheFull~0_combout\ & (!\inst0|evictCounter\(0) & \inst0|evictCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~0_combout\,
	datab => \inst0|evictCounter\(0),
	datac => \inst0|evictCounter\(1),
	datad => \inst0|dirtyBit~0_combout\,
	combout => \inst0|dirtyBit~1_combout\);

-- Location: LCCOMB_X20_Y68_N14
\inst0|cache[2].address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].address[2]~2_combout\ = (\inst0|dirtyBit~1_combout\ & ((\inst0|Selector7~0_combout\) # ((\inst0|cpuCacheOperation.read_cache~q\ & \inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~1_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|sdramState~q\,
	datad => \inst0|Selector7~0_combout\,
	combout => \inst0|cache[2].address[2]~2_combout\);

-- Location: FF_X20_Y68_N3
\inst0|cache[2].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].address[1]~feeder_combout\,
	ena => \inst0|cache[2].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].address\(1));

-- Location: FF_X20_Y68_N13
\inst0|cache[2].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector11~0_combout\,
	sload => VCC,
	ena => \inst0|cache[2].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].address\(0));

-- Location: LCCOMB_X19_Y68_N12
\inst0|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~2_combout\ = (\inst0|cache[2].address\(1) & (\inst0|wantedAddressLatch\(1) & (\inst0|cache[2].address\(0) $ (!\inst0|wantedAddressLatch\(0))))) # (!\inst0|cache[2].address\(1) & (!\inst0|wantedAddressLatch\(1) & 
-- (\inst0|cache[2].address\(0) $ (!\inst0|wantedAddressLatch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].address\(1),
	datab => \inst0|cache[2].address\(0),
	datac => \inst0|wantedAddressLatch\(0),
	datad => \inst0|wantedAddressLatch\(1),
	combout => \inst0|process_0~2_combout\);

-- Location: LCCOMB_X17_Y68_N0
\inst0|dirtyBit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dirtyBit~4_combout\ = (\inst0|cache[0].valid~q\ & (((\inst0|evictCounter\(1) & \inst0|evictCounter\(0))) # (!\inst0|cache[3].valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[0].valid~q\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|cache[3].valid~q\,
	combout => \inst0|dirtyBit~4_combout\);

-- Location: LCCOMB_X17_Y68_N26
\inst0|dirtyBit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dirtyBit~5_combout\ = (\inst0|cache[1].valid~q\ & (\inst0|cache[2].valid~q\ & \inst0|dirtyBit~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|cache[2].valid~q\,
	datad => \inst0|dirtyBit~4_combout\,
	combout => \inst0|dirtyBit~5_combout\);

-- Location: LCCOMB_X17_Y68_N12
\inst0|cache[3].address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].address[2]~2_combout\ = (\inst0|dirtyBit~5_combout\ & ((\inst0|Selector7~0_combout\) # ((\inst0|cpuCacheOperation.read_cache~q\ & \inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~5_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|Selector7~0_combout\,
	datad => \inst0|sdramState~q\,
	combout => \inst0|cache[3].address[2]~2_combout\);

-- Location: FF_X17_Y68_N21
\inst0|cache[3].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector10~0_combout\,
	sload => VCC,
	ena => \inst0|cache[3].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].address\(1));

-- Location: LCCOMB_X17_Y68_N30
\inst0|cache[3].address[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].address[0]~feeder_combout\ = \inst0|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector11~0_combout\,
	combout => \inst0|cache[3].address[0]~feeder_combout\);

-- Location: FF_X17_Y68_N31
\inst0|cache[3].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].address[0]~feeder_combout\,
	ena => \inst0|cache[3].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].address\(0));

-- Location: LCCOMB_X19_Y68_N4
\inst0|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~4_combout\ = (\inst0|cache[3].address\(1) & (\inst0|wantedAddressLatch\(1) & (\inst0|cache[3].address\(0) $ (!\inst0|wantedAddressLatch\(0))))) # (!\inst0|cache[3].address\(1) & (!\inst0|wantedAddressLatch\(1) & 
-- (\inst0|cache[3].address\(0) $ (!\inst0|wantedAddressLatch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].address\(1),
	datab => \inst0|cache[3].address\(0),
	datac => \inst0|wantedAddressLatch\(1),
	datad => \inst0|wantedAddressLatch\(0),
	combout => \inst0|process_0~4_combout\);

-- Location: FF_X17_Y68_N25
\inst0|cache[3].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector9~0_combout\,
	sload => VCC,
	ena => \inst0|cache[3].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].address\(2));

-- Location: LCCOMB_X17_Y68_N24
\inst0|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~5_combout\ = (\inst0|cache[3].valid~q\ & (\inst0|cache[3].address\(2) $ (!\inst0|wantedAddressLatch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache[3].valid~q\,
	datac => \inst0|cache[3].address\(2),
	datad => \inst0|wantedAddressLatch\(2),
	combout => \inst0|process_0~5_combout\);

-- Location: LCCOMB_X20_Y68_N8
\inst0|cache[2].address[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].address[2]~feeder_combout\ = \inst0|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector9~0_combout\,
	combout => \inst0|cache[2].address[2]~feeder_combout\);

-- Location: FF_X20_Y68_N9
\inst0|cache[2].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].address[2]~feeder_combout\,
	ena => \inst0|cache[2].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].address\(2));

-- Location: LCCOMB_X17_Y68_N14
\inst0|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~3_combout\ = (\inst0|cache[2].valid~q\ & (\inst0|cache[2].address\(2) $ (!\inst0|wantedAddressLatch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache[2].address\(2),
	datac => \inst0|cache[2].valid~q\,
	datad => \inst0|wantedAddressLatch\(2),
	combout => \inst0|process_0~3_combout\);

-- Location: LCCOMB_X19_Y68_N18
\inst0|isInCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|isInCache~0_combout\ = (\inst0|process_0~2_combout\ & (!\inst0|process_0~3_combout\ & ((!\inst0|process_0~5_combout\) # (!\inst0|process_0~4_combout\)))) # (!\inst0|process_0~2_combout\ & (((!\inst0|process_0~5_combout\)) # 
-- (!\inst0|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~2_combout\,
	datab => \inst0|process_0~4_combout\,
	datac => \inst0|process_0~5_combout\,
	datad => \inst0|process_0~3_combout\,
	combout => \inst0|isInCache~0_combout\);

-- Location: LCCOMB_X16_Y68_N24
\inst0|sdramState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|sdramState~0_combout\ = (\inst0|sdramState~q\) # ((!\inst0|indexOfCache~2_combout\ & (\inst0|isInCache~0_combout\ & !\inst0|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~2_combout\,
	datab => \inst0|isInCache~0_combout\,
	datac => \inst0|sdramState~q\,
	datad => \inst0|process_0~7_combout\,
	combout => \inst0|sdramState~0_combout\);

-- Location: FF_X16_Y68_N25
\inst0|sdramState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|sdramState~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst0|sdramState~q\,
	ena => \inst0|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|sdramState~q\);

-- Location: LCCOMB_X21_Y68_N16
\inst0|hit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|hit~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|sdramState~q\) # (\inst0|isInCache~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|sdramState~q\,
	datac => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|isInCache~1_combout\,
	combout => \inst0|hit~0_combout\);

-- Location: FF_X21_Y68_N17
\inst0|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|hit~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|hit~q\);

-- Location: LCCOMB_X21_Y68_N0
\inst0|Selector193~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector193~0_combout\ = ((\inst0|CurrentState.requestData~q\ & ((\inst0|hit~q\) # (\inst0|cpuCacheOperation.write_cache~q\)))) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.initial~q\,
	datab => \inst0|hit~q\,
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|CurrentState.requestData~q\,
	combout => \inst0|Selector193~0_combout\);

-- Location: FF_X21_Y68_N1
\inst0|cpuCacheOperation.write_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector193~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpuCacheOperation.write_cache~q\);

-- Location: LCCOMB_X20_Y69_N30
\inst0|wantedAddressCache[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|wantedAddressCache[2]~feeder_combout\ = \inst0|wantedAddressLatch\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|wantedAddressLatch\(2),
	combout => \inst0|wantedAddressCache[2]~feeder_combout\);

-- Location: FF_X20_Y69_N31
\inst0|wantedAddressCache[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|wantedAddressCache[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|wantedAddressCache[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressCache\(2));

-- Location: LCCOMB_X20_Y68_N24
\inst0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector9~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|wantedAddressLatch\(2)))) # (!\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|wantedAddressCache\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|wantedAddressCache\(2),
	datad => \inst0|wantedAddressLatch\(2),
	combout => \inst0|Selector9~0_combout\);

-- Location: LCCOMB_X20_Y68_N6
\inst0|cache[1].address[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].address[2]~feeder_combout\ = \inst0|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector9~0_combout\,
	combout => \inst0|cache[1].address[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y68_N20
\inst0|cache[1].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].dirtyBit~0_combout\ = (\inst0|evictCounter\(0) & !\inst0|evictCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|evictCounter\(0),
	datac => \inst0|evictCounter\(1),
	combout => \inst0|cache[1].dirtyBit~0_combout\);

-- Location: LCCOMB_X18_Y68_N24
\inst0|dirtyBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dirtyBit~2_combout\ = (\inst0|cache[0].valid~q\ & (((\inst0|isCacheFull~0_combout\ & \inst0|cache[1].dirtyBit~0_combout\)) # (!\inst0|cache[1].valid~q\))) # (!\inst0|cache[0].valid~q\ & (((\inst0|isCacheFull~0_combout\ & 
-- \inst0|cache[1].dirtyBit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].valid~q\,
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|isCacheFull~0_combout\,
	datad => \inst0|cache[1].dirtyBit~0_combout\,
	combout => \inst0|dirtyBit~2_combout\);

-- Location: LCCOMB_X20_Y68_N16
\inst0|cache[1].address[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].address[0]~2_combout\ = (\inst0|dirtyBit~2_combout\ & ((\inst0|Selector7~0_combout\) # ((\inst0|cpuCacheOperation.read_cache~q\ & \inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~2_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|sdramState~q\,
	datad => \inst0|Selector7~0_combout\,
	combout => \inst0|cache[1].address[0]~2_combout\);

-- Location: FF_X20_Y68_N7
\inst0|cache[1].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].address[2]~feeder_combout\,
	ena => \inst0|cache[1].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].address\(2));

-- Location: FF_X20_Y68_N21
\inst0|cache[1].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector11~0_combout\,
	sload => VCC,
	ena => \inst0|cache[1].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].address\(0));

-- Location: LCCOMB_X20_Y68_N22
\inst0|cache[1].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].address[1]~feeder_combout\ = \inst0|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector10~0_combout\,
	combout => \inst0|cache[1].address[1]~feeder_combout\);

-- Location: FF_X20_Y68_N23
\inst0|cache[1].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].address[1]~feeder_combout\,
	ena => \inst0|cache[1].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].address\(1));

-- Location: LCCOMB_X19_Y68_N16
\inst0|indexOfCache~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~1_combout\ = (\inst0|cache[1].address\(0) & (\inst0|wantedAddressLatch\(0) & (\inst0|cache[1].address\(1) $ (!\inst0|wantedAddressLatch\(1))))) # (!\inst0|cache[1].address\(0) & (!\inst0|wantedAddressLatch\(0) & 
-- (\inst0|cache[1].address\(1) $ (!\inst0|wantedAddressLatch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].address\(0),
	datab => \inst0|cache[1].address\(1),
	datac => \inst0|wantedAddressLatch\(0),
	datad => \inst0|wantedAddressLatch\(1),
	combout => \inst0|indexOfCache~1_combout\);

-- Location: LCCOMB_X19_Y68_N26
\inst0|indexOfCache~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~2_combout\ = (\inst0|cache[1].valid~q\ & (\inst0|indexOfCache~1_combout\ & (\inst0|cache[1].address\(2) $ (!\inst0|wantedAddressLatch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].address\(2),
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|wantedAddressLatch\(2),
	datad => \inst0|indexOfCache~1_combout\,
	combout => \inst0|indexOfCache~2_combout\);

-- Location: LCCOMB_X19_Y68_N24
\inst0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector7~0_combout\ = (!\inst0|indexOfCache~2_combout\ & (\inst0|cpuCacheOperation.write_cache~q\ & (!\inst0|process_0~7_combout\ & \inst0|isInCache~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~2_combout\,
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|process_0~7_combout\,
	datad => \inst0|isInCache~0_combout\,
	combout => \inst0|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y67_N22
\inst0|cache[0].valid~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].valid~5_combout\ = (\inst0|cache[0].valid~q\) # ((\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|sdramState~q\))) # (!\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector7~0_combout\,
	datab => \inst0|sdramState~q\,
	datac => \inst0|cache[0].valid~q\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|cache[0].valid~5_combout\);

-- Location: FF_X18_Y67_N23
\inst0|cache[0].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].valid~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].valid~q\);

-- Location: LCCOMB_X18_Y67_N30
\inst0|isCacheFull~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|isCacheFull~0_combout\ = (\inst0|cache[0].valid~q\ & (\inst0|cache[1].valid~q\ & (\inst0|cache[2].valid~q\ & \inst0|cache[3].valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].valid~q\,
	datab => \inst0|cache[1].valid~q\,
	datac => \inst0|cache[2].valid~q\,
	datad => \inst0|cache[3].valid~q\,
	combout => \inst0|isCacheFull~0_combout\);

-- Location: LCCOMB_X21_Y68_N30
\inst0|indexOfCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache[0]~0_combout\ = (\inst0|sdramState~q\ & \inst0|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|sdramState~q\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|indexOfCache[0]~0_combout\);

-- Location: LCCOMB_X18_Y68_N18
\inst0|cache[2].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].dirtyBit~0_combout\ = (((\inst0|evictCounter\(0)) # (!\inst0|isCacheFull~0_combout\)) # (!\inst0|indexOfCache[0]~0_combout\)) # (!\inst0|evictCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|indexOfCache[0]~0_combout\,
	datac => \inst0|isCacheFull~0_combout\,
	datad => \inst0|evictCounter\(0),
	combout => \inst0|cache[2].dirtyBit~0_combout\);

-- Location: LCCOMB_X19_Y68_N8
\inst0|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector82~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & !\inst0|isInCache~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|isInCache~0_combout\,
	combout => \inst0|Selector82~0_combout\);

-- Location: LCCOMB_X19_Y68_N10
\inst0|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~8_combout\ = (\inst0|cache[2].valid~q\ & (\inst0|process_0~2_combout\ & (\inst0|cache[2].address\(2) $ (!\inst0|wantedAddressLatch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].valid~q\,
	datab => \inst0|cache[2].address\(2),
	datac => \inst0|wantedAddressLatch\(2),
	datad => \inst0|process_0~2_combout\,
	combout => \inst0|process_0~8_combout\);

-- Location: LCCOMB_X19_Y68_N22
\inst0|indexOfCache~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~3_combout\ = (\inst0|process_0~5_combout\ & ((\inst0|process_0~4_combout\) # ((\inst0|indexOfCache~2_combout\ & !\inst0|process_0~8_combout\)))) # (!\inst0|process_0~5_combout\ & (((\inst0|indexOfCache~2_combout\ & 
-- !\inst0|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~5_combout\,
	datab => \inst0|process_0~4_combout\,
	datac => \inst0|indexOfCache~2_combout\,
	datad => \inst0|process_0~8_combout\,
	combout => \inst0|indexOfCache~3_combout\);

-- Location: LCCOMB_X21_Y68_N12
\inst0|indexOfCache[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache[1]~6_combout\ = (!\rst~input_o\ & (\inst0|cpuCacheOperation.none~q\ & ((!\inst0|cpuCacheOperation.read_cache~q\) # (!\inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState~q\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \rst~input_o\,
	datad => \inst0|cpuCacheOperation.none~q\,
	combout => \inst0|indexOfCache[1]~6_combout\);

-- Location: FF_X19_Y68_N29
\inst0|indexOfCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|indexOfCache~4_combout\,
	ena => \inst0|indexOfCache[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|indexOfCache\(0));

-- Location: LCCOMB_X19_Y68_N28
\inst0|indexOfCache~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~4_combout\ = (\inst0|isInCache~1_combout\ & (\inst0|indexOfCache~3_combout\)) # (!\inst0|isInCache~1_combout\ & ((\inst0|indexOfCache\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datac => \inst0|indexOfCache\(0),
	datad => \inst0|isInCache~1_combout\,
	combout => \inst0|indexOfCache~4_combout\);

-- Location: LCCOMB_X19_Y68_N30
\inst0|Selector82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector82~1_combout\ = (\inst0|Selector82~0_combout\ & (((\inst0|dirtyBit~1_combout\ & \inst0|Selector7~0_combout\)) # (!\inst0|indexOfCache~4_combout\))) # (!\inst0|Selector82~0_combout\ & (((\inst0|dirtyBit~1_combout\ & 
-- \inst0|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector82~0_combout\,
	datab => \inst0|indexOfCache~4_combout\,
	datac => \inst0|dirtyBit~1_combout\,
	datad => \inst0|Selector7~0_combout\,
	combout => \inst0|Selector82~1_combout\);

-- Location: LCCOMB_X18_Y68_N12
\inst0|cache[2].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].dirtyBit~1_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|cache[2].dirtyBit~0_combout\ & (\inst0|cache[2].dirtyBit~q\))) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|Selector82~1_combout\) # 
-- ((\inst0|cache[2].dirtyBit~0_combout\ & \inst0|cache[2].dirtyBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|cache[2].dirtyBit~0_combout\,
	datac => \inst0|cache[2].dirtyBit~q\,
	datad => \inst0|Selector82~1_combout\,
	combout => \inst0|cache[2].dirtyBit~1_combout\);

-- Location: FF_X18_Y68_N13
\inst0|cache[2].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].dirtyBit~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].dirtyBit~q\);

-- Location: LCCOMB_X18_Y68_N0
\inst0|cache[3].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].dirtyBit~0_combout\ = (((!\inst0|evictCounter\(0)) # (!\inst0|isCacheFull~0_combout\)) # (!\inst0|indexOfCache[0]~0_combout\)) # (!\inst0|evictCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|indexOfCache[0]~0_combout\,
	datac => \inst0|isCacheFull~0_combout\,
	datad => \inst0|evictCounter\(0),
	combout => \inst0|cache[3].dirtyBit~0_combout\);

-- Location: LCCOMB_X19_Y68_N20
\inst0|Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector119~0_combout\ = (\inst0|dirtyBit~5_combout\ & ((\inst0|Selector7~0_combout\) # ((\inst0|Selector82~0_combout\ & \inst0|indexOfCache~4_combout\)))) # (!\inst0|dirtyBit~5_combout\ & (((\inst0|Selector82~0_combout\ & 
-- \inst0|indexOfCache~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~5_combout\,
	datab => \inst0|Selector7~0_combout\,
	datac => \inst0|Selector82~0_combout\,
	datad => \inst0|indexOfCache~4_combout\,
	combout => \inst0|Selector119~0_combout\);

-- Location: LCCOMB_X18_Y68_N14
\inst0|cache[3].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].dirtyBit~1_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|cache[3].dirtyBit~0_combout\ & (\inst0|cache[3].dirtyBit~q\))) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|Selector119~0_combout\) # 
-- ((\inst0|cache[3].dirtyBit~0_combout\ & \inst0|cache[3].dirtyBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|cache[3].dirtyBit~0_combout\,
	datac => \inst0|cache[3].dirtyBit~q\,
	datad => \inst0|Selector119~0_combout\,
	combout => \inst0|cache[3].dirtyBit~1_combout\);

-- Location: FF_X18_Y68_N15
\inst0|cache[3].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].dirtyBit~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].dirtyBit~q\);

-- Location: FF_X19_Y68_N1
\inst0|indexOfCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|indexOfCache~5_combout\,
	ena => \inst0|indexOfCache[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|indexOfCache\(1));

-- Location: LCCOMB_X19_Y68_N0
\inst0|indexOfCache~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~5_combout\ = ((!\inst0|indexOfCache~2_combout\ & (!\inst0|process_0~7_combout\ & \inst0|indexOfCache\(1)))) # (!\inst0|isInCache~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~2_combout\,
	datab => \inst0|process_0~7_combout\,
	datac => \inst0|indexOfCache\(1),
	datad => \inst0|isInCache~0_combout\,
	combout => \inst0|indexOfCache~5_combout\);

-- Location: LCCOMB_X19_Y68_N2
\inst0|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector45~1_combout\ = (\inst0|isInCache~1_combout\ & (!\inst0|indexOfCache~5_combout\ & (\inst0|cpuCacheOperation.write_cache~q\ & \inst0|indexOfCache~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isInCache~1_combout\,
	datab => \inst0|indexOfCache~5_combout\,
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|indexOfCache~4_combout\,
	combout => \inst0|Selector45~1_combout\);

-- Location: LCCOMB_X18_Y68_N2
\inst0|cache[1].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].dirtyBit~1_combout\ = (\inst0|cache[1].dirtyBit~q\ & (((!\inst0|indexOfCache[0]~0_combout\) # (!\inst0|isCacheFull~0_combout\)) # (!\inst0|cache[1].dirtyBit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].dirtyBit~q\,
	datab => \inst0|cache[1].dirtyBit~0_combout\,
	datac => \inst0|isCacheFull~0_combout\,
	datad => \inst0|indexOfCache[0]~0_combout\,
	combout => \inst0|cache[1].dirtyBit~1_combout\);

-- Location: LCCOMB_X18_Y68_N22
\inst0|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector45~0_combout\ = (\inst0|dirtyBit~2_combout\ & \inst0|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|dirtyBit~2_combout\,
	datac => \inst0|Selector7~0_combout\,
	combout => \inst0|Selector45~0_combout\);

-- Location: LCCOMB_X18_Y68_N10
\inst0|cache[1].dirtyBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].dirtyBit~2_combout\ = (\inst0|cache[1].dirtyBit~1_combout\) # ((!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|Selector45~1_combout\) # (\inst0|Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|Selector45~1_combout\,
	datac => \inst0|cache[1].dirtyBit~1_combout\,
	datad => \inst0|Selector45~0_combout\,
	combout => \inst0|cache[1].dirtyBit~2_combout\);

-- Location: FF_X18_Y68_N11
\inst0|cache[1].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].dirtyBit~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].dirtyBit~q\);

-- Location: LCCOMB_X18_Y67_N28
\inst0|cache[0].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].dirtyBit~0_combout\ = (!\inst0|evictCounter\(1) & !\inst0|evictCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|evictCounter\(1),
	datac => \inst0|evictCounter\(0),
	combout => \inst0|cache[0].dirtyBit~0_combout\);

-- Location: LCCOMB_X18_Y67_N26
\inst0|cache[0].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].dirtyBit~1_combout\ = (\inst0|cache[0].dirtyBit~q\ & (((!\inst0|indexOfCache[0]~0_combout\) # (!\inst0|cache[0].dirtyBit~0_combout\)) # (!\inst0|isCacheFull~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~0_combout\,
	datab => \inst0|cache[0].dirtyBit~0_combout\,
	datac => \inst0|indexOfCache[0]~0_combout\,
	datad => \inst0|cache[0].dirtyBit~q\,
	combout => \inst0|cache[0].dirtyBit~1_combout\);

-- Location: LCCOMB_X19_Y67_N8
\inst0|cache[0].data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].data[10]~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|isInCache~1_combout\) # (!\inst0|dirtyBit~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~3_combout\,
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|isInCache~1_combout\,
	combout => \inst0|cache[0].data[10]~0_combout\);

-- Location: LCCOMB_X19_Y68_N14
\inst0|cache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~0_combout\ = (\inst0|isInCache~1_combout\ & ((\inst0|indexOfCache~3_combout\) # (\inst0|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|indexOfCache~5_combout\,
	datad => \inst0|isInCache~1_combout\,
	combout => \inst0|cache~0_combout\);

-- Location: LCCOMB_X18_Y67_N0
\inst0|cache[0].dirtyBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].dirtyBit~2_combout\ = (\inst0|cache[0].dirtyBit~1_combout\) # ((!\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|cache[0].data[10]~0_combout\ & !\inst0|cache~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].dirtyBit~1_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|cache[0].data[10]~0_combout\,
	datad => \inst0|cache~0_combout\,
	combout => \inst0|cache[0].dirtyBit~2_combout\);

-- Location: FF_X18_Y67_N1
\inst0|cache[0].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].dirtyBit~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].dirtyBit~q\);

-- Location: LCCOMB_X18_Y68_N28
\inst0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux0~0_combout\ = (\inst0|evictCounter\(1) & (((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & ((\inst0|evictCounter\(0) & (\inst0|cache[1].dirtyBit~q\)) # (!\inst0|evictCounter\(0) & ((\inst0|cache[0].dirtyBit~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].dirtyBit~q\,
	datab => \inst0|cache[0].dirtyBit~q\,
	datac => \inst0|evictCounter\(1),
	datad => \inst0|evictCounter\(0),
	combout => \inst0|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y68_N8
\inst0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux0~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Mux0~0_combout\ & ((\inst0|cache[3].dirtyBit~q\))) # (!\inst0|Mux0~0_combout\ & (\inst0|cache[2].dirtyBit~q\)))) # (!\inst0|evictCounter\(1) & (((\inst0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].dirtyBit~q\,
	datab => \inst0|cache[3].dirtyBit~q\,
	datac => \inst0|evictCounter\(1),
	datad => \inst0|Mux0~0_combout\,
	combout => \inst0|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y68_N20
\inst0|Selector155~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector155~5_combout\ = (\inst0|isCacheFull~0_combout\ & (\inst0|Mux0~1_combout\ & ((\inst0|indexOfCache[0]~0_combout\) # (\inst0|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isCacheFull~0_combout\,
	datab => \inst0|indexOfCache[0]~0_combout\,
	datac => \inst0|Selector7~0_combout\,
	datad => \inst0|Mux0~1_combout\,
	combout => \inst0|Selector155~5_combout\);

-- Location: FF_X21_Y68_N21
\inst0|write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector155~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|write_en~q\);

-- Location: LCCOMB_X18_Y68_N4
\inst0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector2~0_combout\ = (\inst0|evictCounter\(1) & (((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & ((\inst0|evictCounter\(0) & ((\inst0|cache[1].address\(2)))) # (!\inst0|evictCounter\(0) & (\inst0|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].address\(2),
	datab => \inst0|evictCounter\(1),
	datac => \inst0|evictCounter\(0),
	datad => \inst0|cache[1].address\(2),
	combout => \inst0|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y68_N10
\inst0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector2~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Selector2~0_combout\ & (\inst0|cache[3].address\(2))) # (!\inst0|Selector2~0_combout\ & ((\inst0|cache[2].address\(2)))))) # (!\inst0|evictCounter\(1) & (((\inst0|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[3].address\(2),
	datac => \inst0|cache[2].address\(2),
	datad => \inst0|Selector2~0_combout\,
	combout => \inst0|Selector2~1_combout\);

-- Location: LCCOMB_X16_Y68_N2
\inst0|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector2~2_combout\ = (\inst0|sdramState~q\ & (((\inst0|Selector2~1_combout\)))) # (!\inst0|sdramState~q\ & ((\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|wantedAddressLatch\(2))) # (!\inst0|cpuCacheOperation.read_cache~q\ & 
-- ((\inst0|Selector2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState~q\,
	datab => \inst0|wantedAddressLatch\(2),
	datac => \inst0|Selector2~1_combout\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|Selector2~2_combout\);

-- Location: LCCOMB_X21_Y68_N26
\inst0|Selector155~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector155~4_combout\ = (\inst0|isCacheFull~0_combout\ & \inst0|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|isCacheFull~0_combout\,
	datad => \inst0|Mux0~1_combout\,
	combout => \inst0|Selector155~4_combout\);

-- Location: LCCOMB_X16_Y68_N28
\inst0|Sdram_addr[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_addr[2]~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (!\inst0|sdramState~0_combout\ & ((!\inst0|Selector7~0_combout\) # (!\inst0|Selector155~4_combout\)))) # (!\inst0|cpuCacheOperation.read_cache~q\ & 
-- (((!\inst0|Selector7~0_combout\)) # (!\inst0|Selector155~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|Selector155~4_combout\,
	datac => \inst0|Selector7~0_combout\,
	datad => \inst0|sdramState~0_combout\,
	combout => \inst0|Sdram_addr[2]~0_combout\);

-- Location: LCCOMB_X16_Y68_N14
\inst0|Sdram_addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_addr[2]~1_combout\ = (!\rst~input_o\ & (!\inst0|Sdram_addr[2]~0_combout\ & ((\inst0|Selector155~4_combout\) # (!\inst0|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState~q\,
	datab => \inst0|Selector155~4_combout\,
	datac => \rst~input_o\,
	datad => \inst0|Sdram_addr[2]~0_combout\,
	combout => \inst0|Sdram_addr[2]~1_combout\);

-- Location: FF_X16_Y68_N3
\inst0|Sdram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector2~2_combout\,
	ena => \inst0|Sdram_addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_addr\(2));

-- Location: LCCOMB_X18_Y68_N30
\inst0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector3~0_combout\ = (\inst0|evictCounter\(1) & ((\inst0|cache[2].address\(1)) # ((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & (((\inst0|cache[0].address\(1) & !\inst0|evictCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[2].address\(1),
	datac => \inst0|cache[0].address\(1),
	datad => \inst0|evictCounter\(0),
	combout => \inst0|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y68_N20
\inst0|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector3~1_combout\ = (\inst0|Selector3~0_combout\ & (((\inst0|cache[3].address\(1))) # (!\inst0|evictCounter\(0)))) # (!\inst0|Selector3~0_combout\ & (\inst0|evictCounter\(0) & ((\inst0|cache[1].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector3~0_combout\,
	datab => \inst0|evictCounter\(0),
	datac => \inst0|cache[3].address\(1),
	datad => \inst0|cache[1].address\(1),
	combout => \inst0|Selector3~1_combout\);

-- Location: LCCOMB_X16_Y68_N8
\inst0|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector3~2_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|sdramState~q\ & (\inst0|Selector3~1_combout\)) # (!\inst0|sdramState~q\ & ((\inst0|wantedAddressLatch\(1)))))) # (!\inst0|cpuCacheOperation.read_cache~q\ & 
-- (\inst0|Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector3~1_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|sdramState~q\,
	datad => \inst0|wantedAddressLatch\(1),
	combout => \inst0|Selector3~2_combout\);

-- Location: FF_X16_Y68_N9
\inst0|Sdram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector3~2_combout\,
	ena => \inst0|Sdram_addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_addr\(1));

-- Location: LCCOMB_X20_Y68_N20
\inst0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector4~0_combout\ = (\inst0|evictCounter\(1) & (\inst0|evictCounter\(0))) # (!\inst0|evictCounter\(1) & ((\inst0|evictCounter\(0) & (\inst0|cache[1].address\(0))) # (!\inst0|evictCounter\(0) & ((\inst0|cache[0].address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|evictCounter\(0),
	datac => \inst0|cache[1].address\(0),
	datad => \inst0|cache[0].address\(0),
	combout => \inst0|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y68_N12
\inst0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector4~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Selector4~0_combout\ & (\inst0|cache[3].address\(0))) # (!\inst0|Selector4~0_combout\ & ((\inst0|cache[2].address\(0)))))) # (!\inst0|evictCounter\(1) & (((\inst0|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[3].address\(0),
	datac => \inst0|cache[2].address\(0),
	datad => \inst0|Selector4~0_combout\,
	combout => \inst0|Selector4~1_combout\);

-- Location: LCCOMB_X16_Y68_N30
\inst0|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector4~2_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|sdramState~q\ & (\inst0|Selector4~1_combout\)) # (!\inst0|sdramState~q\ & ((\inst0|wantedAddressLatch\(0)))))) # (!\inst0|cpuCacheOperation.read_cache~q\ & 
-- (\inst0|Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector4~1_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|sdramState~q\,
	datad => \inst0|wantedAddressLatch\(0),
	combout => \inst0|Selector4~2_combout\);

-- Location: FF_X16_Y68_N31
\inst0|Sdram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector4~2_combout\,
	ena => \inst0|Sdram_addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_addr\(0));

-- Location: LCCOMB_X24_Y68_N8
\inst3|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~4_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(1) & (!\inst0|Sdram_addr\(2) & !\inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(1),
	datac => \inst0|Sdram_addr\(2),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~4_combout\);

-- Location: LCCOMB_X21_Y67_N12
\inst0|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector33~0_combout\ = (!\inst0|cpuCacheOperation.write_cache~q\ & \inst3|data_out1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst3|data_out1\(10),
	combout => \inst0|Selector33~0_combout\);

-- Location: LCCOMB_X21_Y67_N4
\inst0|cache[2].data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[10]~feeder_combout\ = \inst0|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector33~0_combout\,
	combout => \inst0|cache[2].data[10]~feeder_combout\);

-- Location: LCCOMB_X20_Y68_N30
\inst0|cache[2].data[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[2]~3_combout\ = (!\inst0|Selector7~0_combout\ & ((!\inst0|sdramState~q\) # (!\inst0|cpuCacheOperation.read_cache~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|sdramState~q\,
	datad => \inst0|Selector7~0_combout\,
	combout => \inst0|cache[2].data[2]~3_combout\);

-- Location: LCCOMB_X21_Y67_N18
\inst0|cache[2].data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[2]~2_combout\ = (\inst0|dirtyBit~1_combout\ & (((\inst0|Selector82~0_combout\ & !\inst0|indexOfCache~4_combout\)) # (!\inst0|cache[2].data[2]~3_combout\))) # (!\inst0|dirtyBit~1_combout\ & (\inst0|Selector82~0_combout\ & 
-- (!\inst0|indexOfCache~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~1_combout\,
	datab => \inst0|Selector82~0_combout\,
	datac => \inst0|indexOfCache~4_combout\,
	datad => \inst0|cache[2].data[2]~3_combout\,
	combout => \inst0|cache[2].data[2]~2_combout\);

-- Location: FF_X21_Y67_N5
\inst0|cache[2].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[2].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(10));

-- Location: LCCOMB_X19_Y67_N14
\inst0|cache[0].data[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].data[10]~1_combout\ = (\inst0|dirtyBit~3_combout\ & (((\inst0|cache[0].data[10]~0_combout\ & !\inst0|cache~0_combout\)))) # (!\inst0|dirtyBit~3_combout\ & ((\inst0|indexOfCache[0]~0_combout\) # ((\inst0|cache[0].data[10]~0_combout\ & 
-- !\inst0|cache~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~3_combout\,
	datab => \inst0|indexOfCache[0]~0_combout\,
	datac => \inst0|cache[0].data[10]~0_combout\,
	datad => \inst0|cache~0_combout\,
	combout => \inst0|cache[0].data[10]~1_combout\);

-- Location: FF_X19_Y67_N5
\inst0|cache[0].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector33~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst0|cache[0].data[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(10));

-- Location: LCCOMB_X19_Y67_N4
\inst0|Selector177~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector177~0_combout\ = (\inst0|evictCounter\(1) & ((\inst0|cache[2].data\(10)) # ((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & (((\inst0|cache[0].data\(10) & !\inst0|evictCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[2].data\(10),
	datac => \inst0|cache[0].data\(10),
	datad => \inst0|evictCounter\(0),
	combout => \inst0|Selector177~0_combout\);

-- Location: LCCOMB_X20_Y67_N24
\inst0|cache[1].data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[10]~feeder_combout\ = \inst0|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector33~0_combout\,
	combout => \inst0|cache[1].data[10]~feeder_combout\);

-- Location: LCCOMB_X20_Y67_N0
\inst0|cache[1].data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[2]~0_combout\ = (\inst0|Selector45~1_combout\) # ((\inst0|dirtyBit~2_combout\ & ((\inst0|Selector7~0_combout\) # (\inst0|indexOfCache[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|dirtyBit~2_combout\,
	datab => \inst0|Selector7~0_combout\,
	datac => \inst0|Selector45~1_combout\,
	datad => \inst0|indexOfCache[0]~0_combout\,
	combout => \inst0|cache[1].data[2]~0_combout\);

-- Location: FF_X20_Y67_N25
\inst0|cache[1].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(10));

-- Location: LCCOMB_X20_Y67_N2
\inst0|cache[3].data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[10]~feeder_combout\ = \inst0|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector33~0_combout\,
	combout => \inst0|cache[3].data[10]~feeder_combout\);

-- Location: LCCOMB_X20_Y67_N20
\inst0|cache[3].data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[2]~2_combout\ = (\inst0|Selector119~0_combout\) # ((\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|sdramState~q\ & \inst0|dirtyBit~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|sdramState~q\,
	datac => \inst0|dirtyBit~5_combout\,
	datad => \inst0|Selector119~0_combout\,
	combout => \inst0|cache[3].data[2]~2_combout\);

-- Location: FF_X20_Y67_N3
\inst0|cache[3].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[3].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(10));

-- Location: LCCOMB_X19_Y67_N24
\inst0|Selector177~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector177~1_combout\ = (\inst0|evictCounter\(0) & ((\inst0|Selector177~0_combout\ & ((\inst0|cache[3].data\(10)))) # (!\inst0|Selector177~0_combout\ & (\inst0|cache[1].data\(10))))) # (!\inst0|evictCounter\(0) & (\inst0|Selector177~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|Selector177~0_combout\,
	datac => \inst0|cache[1].data\(10),
	datad => \inst0|cache[3].data\(10),
	combout => \inst0|Selector177~1_combout\);

-- Location: LCCOMB_X19_Y67_N16
\inst0|Sdram_data_out[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_data_out[10]~2_combout\ = (!\rst~input_o\ & (\inst0|isCacheFull~0_combout\ & (\inst0|Mux0~1_combout\ & \inst0|emptyCacheIndex[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst0|isCacheFull~0_combout\,
	datac => \inst0|Mux0~1_combout\,
	datad => \inst0|emptyCacheIndex[1]~0_combout\,
	combout => \inst0|Sdram_data_out[10]~2_combout\);

-- Location: FF_X19_Y67_N25
\inst0|Sdram_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector177~1_combout\,
	ena => \inst0|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(10));

-- Location: IOIBUF_X29_Y73_N1
\wantedaddr1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wantedaddr1(2),
	o => \wantedaddr1[2]~input_o\);

-- Location: LCCOMB_X27_Y69_N28
\inst1|Selector191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector191~0_combout\ = ((\inst1|hit~q\ & \inst1|CurrentState.requestData~q\)) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.initial~q\,
	datab => \inst1|hit~q\,
	datad => \inst1|CurrentState.requestData~q\,
	combout => \inst1|Selector191~0_combout\);

-- Location: FF_X27_Y69_N29
\inst1|CurrentState.writeData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector191~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|CurrentState.writeData~q\);

-- Location: LCCOMB_X27_Y69_N18
\inst1|dataToSendToCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataToSendToCache[0]~0_combout\ = (\inst1|CurrentState.writeData~q\) # ((!\inst1|hit~q\ & \inst1|CurrentState.requestData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|hit~q\,
	datac => \inst1|CurrentState.requestData~q\,
	datad => \inst1|CurrentState.writeData~q\,
	combout => \inst1|dataToSendToCache[0]~0_combout\);

-- Location: FF_X27_Y69_N19
\inst1|CurrentState.requestData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|dataToSendToCache[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|CurrentState.requestData~q\);

-- Location: LCCOMB_X26_Y69_N24
\inst1|wantedAddressLatch[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|wantedAddressLatch[0]~0_combout\ = (!\rst~input_o\ & ((\inst1|hit~q\) # (!\inst1|CurrentState.requestData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|hit~q\,
	datac => \rst~input_o\,
	datad => \inst1|CurrentState.requestData~q\,
	combout => \inst1|wantedAddressLatch[0]~0_combout\);

-- Location: FF_X28_Y69_N3
\inst1|wantedAddressLatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wantedaddr1[2]~input_o\,
	sload => VCC,
	ena => \inst1|wantedAddressLatch[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressLatch\(2));

-- Location: LCCOMB_X27_Y69_N24
\inst1|Selector192~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector192~0_combout\ = (\inst1|CurrentState.writeData~q\) # ((!\inst1|hit~q\ & (\inst1|cpuCacheOperation.read_cache~q\ & \inst1|CurrentState.requestData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|CurrentState.writeData~q\,
	datab => \inst1|hit~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|CurrentState.requestData~q\,
	combout => \inst1|Selector192~0_combout\);

-- Location: FF_X27_Y69_N25
\inst1|cpuCacheOperation.read_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector192~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpuCacheOperation.read_cache~q\);

-- Location: IOIBUF_X31_Y73_N1
\wantedaddr1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wantedaddr1(0),
	o => \wantedaddr1[0]~input_o\);

-- Location: FF_X28_Y69_N27
\inst1|wantedAddressLatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wantedaddr1[0]~input_o\,
	sload => VCC,
	ena => \inst1|wantedAddressLatch[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressLatch\(0));

-- Location: FF_X26_Y68_N7
\inst1|wantedAddressCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|wantedAddressLatch\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|wantedAddressCache[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressCache\(0));

-- Location: LCCOMB_X26_Y68_N6
\inst1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector11~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|wantedAddressLatch\(0))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|wantedAddressCache\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wantedAddressLatch\(0),
	datac => \inst1|wantedAddressCache\(0),
	datad => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector11~0_combout\);

-- Location: LCCOMB_X28_Y68_N2
\inst1|cache[0].valid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].valid~4_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & ((!\inst1|sdramState~q\))) # (!\inst1|cpuCacheOperation.read_cache~q\ & (!\inst1|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector7~0_combout\,
	datac => \inst1|sdramState~q\,
	combout => \inst1|cache[0].valid~4_combout\);

-- Location: LCCOMB_X28_Y68_N0
\inst1|cache[2].valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].valid~0_combout\ = (\inst1|cache[2].valid~q\) # ((!\inst1|emptyCacheIndex~3_combout\ & (\inst1|emptyCacheIndex~1_combout\ & !\inst1|cache[0].valid~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|emptyCacheIndex~3_combout\,
	datab => \inst1|emptyCacheIndex~1_combout\,
	datac => \inst1|cache[2].valid~q\,
	datad => \inst1|cache[0].valid~4_combout\,
	combout => \inst1|cache[2].valid~0_combout\);

-- Location: FF_X28_Y68_N1
\inst1|cache[2].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].valid~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].valid~q\);

-- Location: LCCOMB_X28_Y68_N24
\inst1|isCacheFull~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|isCacheFull~1_combout\ = (\inst1|cache[3].valid~q\ & (\inst1|cache[1].valid~q\ & \inst1|cache[2].valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].valid~q\,
	datab => \inst1|cache[1].valid~q\,
	datad => \inst1|cache[2].valid~q\,
	combout => \inst1|isCacheFull~1_combout\);

-- Location: LCCOMB_X27_Y69_N26
\inst1|cpuCacheOperation.none~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpuCacheOperation.none~0_combout\ = (\inst1|hit~q\) # ((\inst1|cpuCacheOperation.none~q\) # (!\inst1|CurrentState.requestData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|hit~q\,
	datac => \inst1|cpuCacheOperation.none~q\,
	datad => \inst1|CurrentState.requestData~q\,
	combout => \inst1|cpuCacheOperation.none~0_combout\);

-- Location: FF_X27_Y69_N27
\inst1|cpuCacheOperation.none\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cpuCacheOperation.none~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpuCacheOperation.none~q\);

-- Location: LCCOMB_X29_Y69_N20
\inst1|emptyCacheIndex[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|emptyCacheIndex[1]~0_combout\ = (\inst1|cpuCacheOperation.none~q\ & ((\inst1|cpuCacheOperation.write_cache~q\ & ((!\inst1|isInCache~1_combout\))) # (!\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.none~q\,
	datab => \inst1|sdramState~q\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|isInCache~1_combout\,
	combout => \inst1|emptyCacheIndex[1]~0_combout\);

-- Location: LCCOMB_X28_Y68_N8
\inst1|emptyCacheIndex[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|emptyCacheIndex[1]~4_combout\ = (!\rst~input_o\ & \inst1|emptyCacheIndex[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst1|emptyCacheIndex[1]~0_combout\,
	combout => \inst1|emptyCacheIndex[1]~4_combout\);

-- Location: FF_X28_Y68_N19
\inst1|emptyCacheIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|emptyCacheIndex~1_combout\,
	ena => \inst1|emptyCacheIndex[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|emptyCacheIndex\(1));

-- Location: LCCOMB_X28_Y68_N18
\inst1|emptyCacheIndex~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|emptyCacheIndex~1_combout\ = (\inst1|cache[0].valid~q\ & ((\inst1|isCacheFull~1_combout\ & (\inst1|emptyCacheIndex\(1))) # (!\inst1|isCacheFull~1_combout\ & ((\inst1|cache[1].valid~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isCacheFull~1_combout\,
	datab => \inst1|cache[0].valid~q\,
	datac => \inst1|emptyCacheIndex\(1),
	datad => \inst1|cache[1].valid~q\,
	combout => \inst1|emptyCacheIndex~1_combout\);

-- Location: LCCOMB_X28_Y68_N28
\inst1|cache[1].valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].valid~0_combout\ = (\inst1|cache[1].valid~q\) # ((\inst1|emptyCacheIndex~3_combout\ & (!\inst1|emptyCacheIndex~1_combout\ & !\inst1|cache[0].valid~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|emptyCacheIndex~3_combout\,
	datab => \inst1|emptyCacheIndex~1_combout\,
	datac => \inst1|cache[1].valid~q\,
	datad => \inst1|cache[0].valid~4_combout\,
	combout => \inst1|cache[1].valid~0_combout\);

-- Location: FF_X28_Y68_N29
\inst1|cache[1].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].valid~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].valid~q\);

-- Location: LCCOMB_X28_Y68_N12
\inst1|emptyCacheIndex~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|emptyCacheIndex~2_combout\ = (\inst1|cache[0].valid~q\ & (((!\inst1|cache[3].valid~q\ & \inst1|cache[2].valid~q\)) # (!\inst1|cache[1].valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].valid~q\,
	datab => \inst1|cache[1].valid~q\,
	datac => \inst1|cache[0].valid~q\,
	datad => \inst1|cache[2].valid~q\,
	combout => \inst1|emptyCacheIndex~2_combout\);

-- Location: FF_X28_Y68_N27
\inst1|emptyCacheIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|emptyCacheIndex~3_combout\,
	ena => \inst1|emptyCacheIndex[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|emptyCacheIndex\(0));

-- Location: LCCOMB_X28_Y68_N26
\inst1|emptyCacheIndex~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|emptyCacheIndex~3_combout\ = (\inst1|emptyCacheIndex~2_combout\) # ((\inst1|emptyCacheIndex\(0) & \inst1|isCacheFull~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|emptyCacheIndex~2_combout\,
	datac => \inst1|emptyCacheIndex\(0),
	datad => \inst1|isCacheFull~0_combout\,
	combout => \inst1|emptyCacheIndex~3_combout\);

-- Location: LCCOMB_X28_Y68_N10
\inst1|cache[3].valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].valid~0_combout\ = (\inst1|cache[3].valid~q\) # ((\inst1|emptyCacheIndex~3_combout\ & (\inst1|emptyCacheIndex~1_combout\ & !\inst1|cache[0].valid~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|emptyCacheIndex~3_combout\,
	datab => \inst1|emptyCacheIndex~1_combout\,
	datac => \inst1|cache[3].valid~q\,
	datad => \inst1|cache[0].valid~4_combout\,
	combout => \inst1|cache[3].valid~0_combout\);

-- Location: FF_X28_Y68_N11
\inst1|cache[3].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].valid~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].valid~q\);

-- Location: LCCOMB_X28_Y68_N6
\inst1|isCacheFull~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|isCacheFull~0_combout\ = (\inst1|cache[3].valid~q\ & (\inst1|cache[1].valid~q\ & (\inst1|cache[0].valid~q\ & \inst1|cache[2].valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].valid~q\,
	datab => \inst1|cache[1].valid~q\,
	datac => \inst1|cache[0].valid~q\,
	datad => \inst1|cache[2].valid~q\,
	combout => \inst1|isCacheFull~0_combout\);

-- Location: LCCOMB_X28_Y68_N22
\inst1|evictCounter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|evictCounter[0]~1_combout\ = \inst1|evictCounter\(0) $ (((\inst1|isCacheFull~0_combout\ & \inst1|emptyCacheIndex[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isCacheFull~0_combout\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|emptyCacheIndex[1]~0_combout\,
	combout => \inst1|evictCounter[0]~1_combout\);

-- Location: FF_X28_Y68_N23
\inst1|evictCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|evictCounter[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|evictCounter\(0));

-- Location: LCCOMB_X28_Y68_N16
\inst1|dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~0_combout\ = (\inst1|cache[1].valid~q\ & (\inst1|cache[0].valid~q\ & !\inst1|cache[2].valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cache[1].valid~q\,
	datac => \inst1|cache[0].valid~q\,
	datad => \inst1|cache[2].valid~q\,
	combout => \inst1|dirtyBit~0_combout\);

-- Location: LCCOMB_X28_Y68_N4
\inst1|evictCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|evictCounter[1]~0_combout\ = \inst1|evictCounter\(1) $ (((\inst1|isCacheFull~0_combout\ & (\inst1|evictCounter\(0) & \inst1|emptyCacheIndex[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isCacheFull~0_combout\,
	datab => \inst1|evictCounter\(0),
	datac => \inst1|evictCounter\(1),
	datad => \inst1|emptyCacheIndex[1]~0_combout\,
	combout => \inst1|evictCounter[1]~0_combout\);

-- Location: FF_X28_Y68_N5
\inst1|evictCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|evictCounter[1]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|evictCounter\(1));

-- Location: LCCOMB_X28_Y68_N30
\inst1|dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~1_combout\ = (\inst1|dirtyBit~0_combout\) # ((!\inst1|evictCounter\(0) & (\inst1|evictCounter\(1) & \inst1|isCacheFull~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(0),
	datab => \inst1|dirtyBit~0_combout\,
	datac => \inst1|evictCounter\(1),
	datad => \inst1|isCacheFull~0_combout\,
	combout => \inst1|dirtyBit~1_combout\);

-- Location: LCCOMB_X26_Y69_N2
\inst1|cache[2].address[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].address[0]~2_combout\ = (\inst1|dirtyBit~1_combout\ & ((\inst1|Selector7~0_combout\) # ((\inst1|sdramState~q\ & \inst1|cpuCacheOperation.read_cache~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState~q\,
	datab => \inst1|dirtyBit~1_combout\,
	datac => \inst1|Selector7~0_combout\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|cache[2].address[0]~2_combout\);

-- Location: FF_X26_Y69_N31
\inst1|cache[2].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector11~0_combout\,
	sload => VCC,
	ena => \inst1|cache[2].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].address\(0));

-- Location: IOIBUF_X33_Y73_N8
\wantedaddr1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wantedaddr1(1),
	o => \wantedaddr1[1]~input_o\);

-- Location: FF_X28_Y69_N9
\inst1|wantedAddressLatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wantedaddr1[1]~input_o\,
	sload => VCC,
	ena => \inst1|wantedAddressLatch[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressLatch\(1));

-- Location: FF_X26_Y68_N13
\inst1|wantedAddressCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|wantedAddressLatch\(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|wantedAddressCache[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressCache\(1));

-- Location: LCCOMB_X26_Y68_N12
\inst1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|wantedAddressLatch\(1))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|wantedAddressCache\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wantedAddressLatch\(1),
	datac => \inst1|wantedAddressCache\(1),
	datad => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector10~0_combout\);

-- Location: FF_X26_Y69_N1
\inst1|cache[2].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector10~0_combout\,
	sload => VCC,
	ena => \inst1|cache[2].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].address\(1));

-- Location: LCCOMB_X28_Y69_N12
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|cache[2].address\(0) & (\inst1|wantedAddressLatch\(0) & (\inst1|cache[2].address\(1) $ (!\inst1|wantedAddressLatch\(1))))) # (!\inst1|cache[2].address\(0) & (!\inst1|wantedAddressLatch\(0) & 
-- (\inst1|cache[2].address\(1) $ (!\inst1|wantedAddressLatch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(0),
	datab => \inst1|cache[2].address\(1),
	datac => \inst1|wantedAddressLatch\(0),
	datad => \inst1|wantedAddressLatch\(1),
	combout => \inst1|process_0~2_combout\);

-- Location: FF_X26_Y69_N21
\inst1|cache[2].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector9~0_combout\,
	sload => VCC,
	ena => \inst1|cache[2].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].address\(2));

-- Location: LCCOMB_X28_Y69_N4
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|cache[2].valid~q\ & (\inst1|cache[2].address\(2) $ (!\inst1|wantedAddressLatch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(2),
	datab => \inst1|cache[2].valid~q\,
	datac => \inst1|wantedAddressLatch\(2),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X29_Y69_N22
\inst1|dirtyBit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~4_combout\ = (\inst1|cache[0].valid~q\ & (((\inst1|evictCounter\(1) & \inst1|evictCounter\(0))) # (!\inst1|cache[3].valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].valid~q\,
	datab => \inst1|cache[3].valid~q\,
	datac => \inst1|evictCounter\(1),
	datad => \inst1|evictCounter\(0),
	combout => \inst1|dirtyBit~4_combout\);

-- Location: LCCOMB_X29_Y69_N8
\inst1|dirtyBit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~5_combout\ = (\inst1|cache[1].valid~q\ & (\inst1|dirtyBit~4_combout\ & \inst1|cache[2].valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].valid~q\,
	datac => \inst1|dirtyBit~4_combout\,
	datad => \inst1|cache[2].valid~q\,
	combout => \inst1|dirtyBit~5_combout\);

-- Location: LCCOMB_X27_Y69_N20
\inst1|cache[3].address[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].address[1]~2_combout\ = (\inst1|dirtyBit~5_combout\ & ((\inst1|Selector7~0_combout\) # ((\inst1|cpuCacheOperation.read_cache~q\ & \inst1|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~5_combout\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst1|sdramState~q\,
	datad => \inst1|Selector7~0_combout\,
	combout => \inst1|cache[3].address[1]~2_combout\);

-- Location: FF_X27_Y69_N9
\inst1|cache[3].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector9~0_combout\,
	sload => VCC,
	ena => \inst1|cache[3].address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].address\(2));

-- Location: LCCOMB_X28_Y69_N30
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|cache[3].valid~q\ & (\inst1|cache[3].address\(2) $ (!\inst1|wantedAddressLatch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].valid~q\,
	datab => \inst1|cache[3].address\(2),
	datac => \inst1|wantedAddressLatch\(2),
	combout => \inst1|process_0~5_combout\);

-- Location: FF_X27_Y69_N23
\inst1|cache[3].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector11~0_combout\,
	sload => VCC,
	ena => \inst1|cache[3].address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].address\(0));

-- Location: FF_X27_Y69_N13
\inst1|cache[3].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector10~0_combout\,
	sload => VCC,
	ena => \inst1|cache[3].address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].address\(1));

-- Location: LCCOMB_X28_Y69_N8
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|wantedAddressLatch\(0) & (\inst1|cache[3].address\(0) & (\inst1|wantedAddressLatch\(1) $ (!\inst1|cache[3].address\(1))))) # (!\inst1|wantedAddressLatch\(0) & (!\inst1|cache[3].address\(0) & 
-- (\inst1|wantedAddressLatch\(1) $ (!\inst1|cache[3].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wantedAddressLatch\(0),
	datab => \inst1|cache[3].address\(0),
	datac => \inst1|wantedAddressLatch\(1),
	datad => \inst1|cache[3].address\(1),
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X28_Y69_N20
\inst1|isInCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|isInCache~0_combout\ = (\inst1|process_0~2_combout\ & (!\inst1|process_0~3_combout\ & ((!\inst1|process_0~4_combout\) # (!\inst1|process_0~5_combout\)))) # (!\inst1|process_0~2_combout\ & (((!\inst1|process_0~4_combout\) # 
-- (!\inst1|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|process_0~5_combout\,
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|isInCache~0_combout\);

-- Location: LCCOMB_X28_Y69_N28
\inst1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|isInCache~0_combout\ & (!\inst1|indexOfCache~2_combout\ & !\inst1|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.write_cache~q\,
	datab => \inst1|isInCache~0_combout\,
	datac => \inst1|indexOfCache~2_combout\,
	datad => \inst1|process_0~7_combout\,
	combout => \inst1|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y68_N2
\inst1|cache[0].valid~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].valid~5_combout\ = (\inst1|cache[0].valid~q\) # ((\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|sdramState~q\)) # (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState~q\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst1|cache[0].valid~q\,
	datad => \inst1|Selector7~0_combout\,
	combout => \inst1|cache[0].valid~5_combout\);

-- Location: FF_X26_Y68_N3
\inst1|cache[0].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].valid~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].valid~q\);

-- Location: LCCOMB_X29_Y69_N10
\inst1|dirtyBit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~3_combout\ = (\inst1|cache[0].valid~q\ & ((\inst1|evictCounter\(1)) # ((\inst1|evictCounter\(0)) # (!\inst1|isCacheFull~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].valid~q\,
	datab => \inst1|evictCounter\(1),
	datac => \inst1|isCacheFull~1_combout\,
	datad => \inst1|evictCounter\(0),
	combout => \inst1|dirtyBit~3_combout\);

-- Location: LCCOMB_X29_Y69_N18
\inst1|cache[0].address[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].address[0]~2_combout\ = (!\inst1|dirtyBit~3_combout\ & ((\inst1|Selector7~0_combout\) # ((\inst1|sdramState~q\ & \inst1|cpuCacheOperation.read_cache~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~3_combout\,
	datab => \inst1|sdramState~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|Selector7~0_combout\,
	combout => \inst1|cache[0].address[0]~2_combout\);

-- Location: FF_X28_Y69_N7
\inst1|cache[0].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector9~0_combout\,
	sload => VCC,
	ena => \inst1|cache[0].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].address\(2));

-- Location: FF_X28_Y69_N15
\inst1|cache[0].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector10~0_combout\,
	sload => VCC,
	ena => \inst1|cache[0].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].address\(1));

-- Location: FF_X28_Y69_N25
\inst1|cache[0].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector11~0_combout\,
	sload => VCC,
	ena => \inst1|cache[0].address[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].address\(0));

-- Location: LCCOMB_X28_Y69_N24
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|wantedAddressLatch\(0) & (\inst1|cache[0].address\(0) & (\inst1|cache[0].address\(1) $ (!\inst1|wantedAddressLatch\(1))))) # (!\inst1|wantedAddressLatch\(0) & (!\inst1|cache[0].address\(0) & 
-- (\inst1|cache[0].address\(1) $ (!\inst1|wantedAddressLatch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wantedAddressLatch\(0),
	datab => \inst1|cache[0].address\(1),
	datac => \inst1|cache[0].address\(0),
	datad => \inst1|wantedAddressLatch\(1),
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X28_Y69_N6
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (\inst1|cache[0].valid~q\ & (\inst1|process_0~6_combout\ & (\inst1|wantedAddressLatch\(2) $ (!\inst1|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wantedAddressLatch\(2),
	datab => \inst1|cache[0].valid~q\,
	datac => \inst1|cache[0].address\(2),
	datad => \inst1|process_0~6_combout\,
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X28_Y69_N18
\inst1|sdramState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdramState~0_combout\ = (\inst1|sdramState~q\) # ((!\inst1|process_0~7_combout\ & (!\inst1|indexOfCache~2_combout\ & \inst1|isInCache~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|sdramState~q\,
	datac => \inst1|indexOfCache~2_combout\,
	datad => \inst1|isInCache~0_combout\,
	combout => \inst1|sdramState~0_combout\);

-- Location: FF_X29_Y69_N29
\inst1|sdramState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|sdramState~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|sdramState~q\,
	sload => VCC,
	ena => \inst1|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdramState~q\);

-- Location: LCCOMB_X26_Y68_N16
\inst1|wantedAddressCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|wantedAddressCache[0]~0_combout\ = (!\inst1|sdramState~q\ & (\inst1|cpuCacheOperation.read_cache~q\ & !\inst1|isInCache~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|isInCache~1_combout\,
	combout => \inst1|wantedAddressCache[0]~0_combout\);

-- Location: FF_X26_Y68_N23
\inst1|wantedAddressCache[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|wantedAddressLatch\(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|wantedAddressCache[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressCache\(2));

-- Location: LCCOMB_X26_Y68_N22
\inst1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|wantedAddressLatch\(2))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|wantedAddressCache\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wantedAddressLatch\(2),
	datac => \inst1|wantedAddressCache\(2),
	datad => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector9~0_combout\);

-- Location: LCCOMB_X27_Y68_N26
\inst1|cache[1].address[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[2]~feeder_combout\ = \inst1|Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector9~0_combout\,
	combout => \inst1|cache[1].address[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y69_N28
\inst1|dirtyBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~2_combout\ = (\inst1|cache[0].valid~q\ & !\inst1|cache[1].valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cache[0].valid~q\,
	datad => \inst1|cache[1].valid~q\,
	combout => \inst1|dirtyBit~2_combout\);

-- Location: LCCOMB_X26_Y69_N26
\inst1|dirtyBit~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dirtyBit~6_combout\ = (\inst1|dirtyBit~2_combout\) # ((!\inst1|evictCounter\(1) & (\inst1|evictCounter\(0) & \inst1|isCacheFull~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|dirtyBit~2_combout\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|isCacheFull~0_combout\,
	combout => \inst1|dirtyBit~6_combout\);

-- Location: LCCOMB_X27_Y68_N28
\inst1|cache[1].address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[2]~2_combout\ = (\inst1|dirtyBit~6_combout\ & ((\inst1|Selector7~0_combout\) # ((\inst1|cpuCacheOperation.read_cache~q\ & \inst1|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|sdramState~q\,
	datac => \inst1|dirtyBit~6_combout\,
	datad => \inst1|Selector7~0_combout\,
	combout => \inst1|cache[1].address[2]~2_combout\);

-- Location: FF_X27_Y68_N27
\inst1|cache[1].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].address[2]~feeder_combout\,
	ena => \inst1|cache[1].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].address\(2));

-- Location: LCCOMB_X27_Y68_N12
\inst1|cache[1].address[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[0]~feeder_combout\ = \inst1|Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector11~0_combout\,
	combout => \inst1|cache[1].address[0]~feeder_combout\);

-- Location: FF_X27_Y68_N13
\inst1|cache[1].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].address[0]~feeder_combout\,
	ena => \inst1|cache[1].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].address\(0));

-- Location: LCCOMB_X27_Y68_N22
\inst1|cache[1].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[1]~feeder_combout\ = \inst1|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector10~0_combout\,
	combout => \inst1|cache[1].address[1]~feeder_combout\);

-- Location: FF_X27_Y68_N23
\inst1|cache[1].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].address[1]~feeder_combout\,
	ena => \inst1|cache[1].address[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].address\(1));

-- Location: LCCOMB_X28_Y69_N16
\inst1|indexOfCache~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~1_combout\ = (\inst1|cache[1].address\(0) & (\inst1|wantedAddressLatch\(0) & (\inst1|cache[1].address\(1) $ (!\inst1|wantedAddressLatch\(1))))) # (!\inst1|cache[1].address\(0) & (!\inst1|wantedAddressLatch\(0) & 
-- (\inst1|cache[1].address\(1) $ (!\inst1|wantedAddressLatch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(0),
	datab => \inst1|cache[1].address\(1),
	datac => \inst1|wantedAddressLatch\(0),
	datad => \inst1|wantedAddressLatch\(1),
	combout => \inst1|indexOfCache~1_combout\);

-- Location: LCCOMB_X28_Y69_N22
\inst1|indexOfCache~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~2_combout\ = (\inst1|cache[1].valid~q\ & (\inst1|indexOfCache~1_combout\ & (\inst1|cache[1].address\(2) $ (!\inst1|wantedAddressLatch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(2),
	datab => \inst1|cache[1].valid~q\,
	datac => \inst1|wantedAddressLatch\(2),
	datad => \inst1|indexOfCache~1_combout\,
	combout => \inst1|indexOfCache~2_combout\);

-- Location: LCCOMB_X28_Y69_N14
\inst1|isInCache~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|isInCache~1_combout\ = (\inst1|indexOfCache~2_combout\) # ((\inst1|process_0~7_combout\) # (!\inst1|isInCache~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~2_combout\,
	datab => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~7_combout\,
	combout => \inst1|isInCache~1_combout\);

-- Location: LCCOMB_X26_Y69_N22
\inst1|hit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|hit~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|isInCache~1_combout\) # (\inst1|sdramState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|isInCache~1_combout\,
	datac => \inst1|sdramState~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|hit~0_combout\);

-- Location: FF_X26_Y69_N23
\inst1|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|hit~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|hit~q\);

-- Location: LCCOMB_X27_Y69_N14
\inst1|Selector193~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector193~0_combout\ = ((\inst1|CurrentState.requestData~q\ & ((\inst1|hit~q\) # (\inst1|cpuCacheOperation.write_cache~q\)))) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.initial~q\,
	datab => \inst1|hit~q\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|CurrentState.requestData~q\,
	combout => \inst1|Selector193~0_combout\);

-- Location: FF_X27_Y69_N15
\inst1|cpuCacheOperation.write_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector193~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpuCacheOperation.write_cache~q\);

-- Location: LCCOMB_X27_Y69_N10
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|evictCounter\(1) & (((\inst1|evictCounter\(0))))) # (!\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0) & (\inst1|cache[1].address\(2))) # (!\inst1|evictCounter\(0) & ((\inst1|cache[0].address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|cache[1].address\(2),
	datac => \inst1|evictCounter\(0),
	datad => \inst1|cache[0].address\(2),
	combout => \inst1|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y69_N8
\inst1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~1_combout\ = (\inst1|Selector2~0_combout\ & (((\inst1|cache[3].address\(2)) # (!\inst1|evictCounter\(1))))) # (!\inst1|Selector2~0_combout\ & (\inst1|cache[2].address\(2) & ((\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector2~0_combout\,
	datab => \inst1|cache[2].address\(2),
	datac => \inst1|cache[3].address\(2),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector2~1_combout\);

-- Location: LCCOMB_X27_Y68_N0
\inst1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~2_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|sdramState~q\ & (\inst1|Selector2~1_combout\)) # (!\inst1|sdramState~q\ & ((\inst1|wantedAddressLatch\(2)))))) # (!\inst1|cpuCacheOperation.read_cache~q\ & 
-- (\inst1|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector2~1_combout\,
	datac => \inst1|sdramState~q\,
	datad => \inst1|wantedAddressLatch\(2),
	combout => \inst1|Selector2~2_combout\);

-- Location: LCCOMB_X26_Y69_N20
\inst1|indexOfCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache[0]~0_combout\ = (\inst1|sdramState~q\ & \inst1|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|indexOfCache[0]~0_combout\);

-- Location: LCCOMB_X25_Y69_N14
\inst1|cache[2].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].dirtyBit~0_combout\ = (((\inst1|evictCounter\(0)) # (!\inst1|isCacheFull~0_combout\)) # (!\inst1|evictCounter\(1))) # (!\inst1|indexOfCache[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache[0]~0_combout\,
	datab => \inst1|evictCounter\(1),
	datac => \inst1|isCacheFull~0_combout\,
	datad => \inst1|evictCounter\(0),
	combout => \inst1|cache[2].dirtyBit~0_combout\);

-- Location: LCCOMB_X27_Y69_N30
\inst1|Selector82~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector82~3_combout\ = (!\inst1|isInCache~0_combout\ & \inst1|cpuCacheOperation.write_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isInCache~0_combout\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector82~3_combout\);

-- Location: LCCOMB_X29_Y69_N30
\inst1|indexOfCache[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache[0]~feeder_combout\ = \inst1|indexOfCache~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|indexOfCache~4_combout\,
	combout => \inst1|indexOfCache[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y69_N16
\inst1|indexOfCache[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache[1]~6_combout\ = (\inst1|cpuCacheOperation.none~q\ & (!\rst~input_o\ & ((!\inst1|cpuCacheOperation.read_cache~q\) # (!\inst1|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState~q\,
	datab => \inst1|cpuCacheOperation.none~q\,
	datac => \rst~input_o\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|indexOfCache[1]~6_combout\);

-- Location: FF_X29_Y69_N31
\inst1|indexOfCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|indexOfCache[0]~feeder_combout\,
	ena => \inst1|indexOfCache[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|indexOfCache\(0));

-- Location: LCCOMB_X28_Y69_N2
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|cache[2].valid~q\ & (\inst1|process_0~2_combout\ & (\inst1|cache[2].address\(2) $ (!\inst1|wantedAddressLatch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(2),
	datab => \inst1|cache[2].valid~q\,
	datac => \inst1|wantedAddressLatch\(2),
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X28_Y69_N0
\inst1|indexOfCache~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~3_combout\ = (\inst1|process_0~5_combout\ & ((\inst1|process_0~4_combout\) # ((\inst1|indexOfCache~2_combout\ & !\inst1|process_0~8_combout\)))) # (!\inst1|process_0~5_combout\ & (((\inst1|indexOfCache~2_combout\ & 
-- !\inst1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~5_combout\,
	datab => \inst1|process_0~4_combout\,
	datac => \inst1|indexOfCache~2_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|indexOfCache~3_combout\);

-- Location: LCCOMB_X28_Y69_N26
\inst1|indexOfCache~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~4_combout\ = (\inst1|isInCache~1_combout\ & ((\inst1|indexOfCache~3_combout\))) # (!\inst1|isInCache~1_combout\ & (\inst1|indexOfCache\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache\(0),
	datab => \inst1|isInCache~1_combout\,
	datad => \inst1|indexOfCache~3_combout\,
	combout => \inst1|indexOfCache~4_combout\);

-- Location: LCCOMB_X27_Y69_N16
\inst1|Selector82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector82~2_combout\ = (\inst1|Selector82~3_combout\ & (((\inst1|dirtyBit~1_combout\ & \inst1|Selector7~0_combout\)) # (!\inst1|indexOfCache~4_combout\))) # (!\inst1|Selector82~3_combout\ & (\inst1|dirtyBit~1_combout\ & 
-- (\inst1|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector82~3_combout\,
	datab => \inst1|dirtyBit~1_combout\,
	datac => \inst1|Selector7~0_combout\,
	datad => \inst1|indexOfCache~4_combout\,
	combout => \inst1|Selector82~2_combout\);

-- Location: LCCOMB_X26_Y69_N4
\inst1|cache[2].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].dirtyBit~1_combout\ = (\inst1|cache[2].dirtyBit~0_combout\ & ((\inst1|cache[2].dirtyBit~q\) # ((!\inst1|cpuCacheOperation.read_cache~q\ & \inst1|Selector82~2_combout\)))) # (!\inst1|cache[2].dirtyBit~0_combout\ & 
-- (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|Selector82~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].dirtyBit~0_combout\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst1|cache[2].dirtyBit~q\,
	datad => \inst1|Selector82~2_combout\,
	combout => \inst1|cache[2].dirtyBit~1_combout\);

-- Location: FF_X26_Y69_N5
\inst1|cache[2].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].dirtyBit~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].dirtyBit~q\);

-- Location: LCCOMB_X25_Y69_N10
\inst1|cache[3].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].dirtyBit~0_combout\ = (((!\inst1|evictCounter\(0)) # (!\inst1|isCacheFull~0_combout\)) # (!\inst1|evictCounter\(1))) # (!\inst1|indexOfCache[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache[0]~0_combout\,
	datab => \inst1|evictCounter\(1),
	datac => \inst1|isCacheFull~0_combout\,
	datad => \inst1|evictCounter\(0),
	combout => \inst1|cache[3].dirtyBit~0_combout\);

-- Location: LCCOMB_X27_Y69_N2
\inst1|Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector119~0_combout\ = (\inst1|dirtyBit~5_combout\ & ((\inst1|Selector7~0_combout\) # ((\inst1|Selector82~3_combout\ & \inst1|indexOfCache~4_combout\)))) # (!\inst1|dirtyBit~5_combout\ & (((\inst1|Selector82~3_combout\ & 
-- \inst1|indexOfCache~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~5_combout\,
	datab => \inst1|Selector7~0_combout\,
	datac => \inst1|Selector82~3_combout\,
	datad => \inst1|indexOfCache~4_combout\,
	combout => \inst1|Selector119~0_combout\);

-- Location: LCCOMB_X26_Y69_N10
\inst1|cache[3].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].dirtyBit~1_combout\ = (\inst1|cache[3].dirtyBit~0_combout\ & ((\inst1|cache[3].dirtyBit~q\) # ((!\inst1|cpuCacheOperation.read_cache~q\ & \inst1|Selector119~0_combout\)))) # (!\inst1|cache[3].dirtyBit~0_combout\ & 
-- (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|Selector119~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].dirtyBit~0_combout\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst1|cache[3].dirtyBit~q\,
	datad => \inst1|Selector119~0_combout\,
	combout => \inst1|cache[3].dirtyBit~1_combout\);

-- Location: FF_X26_Y69_N11
\inst1|cache[3].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].dirtyBit~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].dirtyBit~q\);

-- Location: FF_X29_Y69_N25
\inst1|indexOfCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|indexOfCache~5_combout\,
	ena => \inst1|indexOfCache[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|indexOfCache\(1));

-- Location: LCCOMB_X29_Y69_N24
\inst1|indexOfCache~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~5_combout\ = ((!\inst1|indexOfCache~2_combout\ & (!\inst1|process_0~7_combout\ & \inst1|indexOfCache\(1)))) # (!\inst1|isInCache~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~2_combout\,
	datab => \inst1|process_0~7_combout\,
	datac => \inst1|indexOfCache\(1),
	datad => \inst1|isInCache~0_combout\,
	combout => \inst1|indexOfCache~5_combout\);

-- Location: LCCOMB_X28_Y69_N10
\inst1|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector45~1_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|indexOfCache~3_combout\ & (\inst1|isInCache~1_combout\ & !\inst1|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.write_cache~q\,
	datab => \inst1|indexOfCache~3_combout\,
	datac => \inst1|isInCache~1_combout\,
	datad => \inst1|indexOfCache~5_combout\,
	combout => \inst1|Selector45~1_combout\);

-- Location: LCCOMB_X25_Y69_N16
\inst1|cache[1].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].dirtyBit~0_combout\ = (\inst1|evictCounter\(0) & !\inst1|evictCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|cache[1].dirtyBit~0_combout\);

-- Location: LCCOMB_X26_Y69_N14
\inst1|cache[1].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].dirtyBit~1_combout\ = (\inst1|cache[1].dirtyBit~q\ & (((!\inst1|isCacheFull~0_combout\) # (!\inst1|cache[1].dirtyBit~0_combout\)) # (!\inst1|indexOfCache[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].dirtyBit~q\,
	datab => \inst1|indexOfCache[0]~0_combout\,
	datac => \inst1|cache[1].dirtyBit~0_combout\,
	datad => \inst1|isCacheFull~0_combout\,
	combout => \inst1|cache[1].dirtyBit~1_combout\);

-- Location: LCCOMB_X26_Y69_N18
\inst1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector45~0_combout\ = (\inst1|Selector7~0_combout\ & ((\inst1|dirtyBit~2_combout\) # ((\inst1|isCacheFull~0_combout\ & \inst1|cache[1].dirtyBit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector7~0_combout\,
	datab => \inst1|isCacheFull~0_combout\,
	datac => \inst1|cache[1].dirtyBit~0_combout\,
	datad => \inst1|dirtyBit~2_combout\,
	combout => \inst1|Selector45~0_combout\);

-- Location: LCCOMB_X26_Y69_N6
\inst1|cache[1].dirtyBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].dirtyBit~2_combout\ = (\inst1|cache[1].dirtyBit~1_combout\) # ((!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|Selector45~1_combout\) # (\inst1|Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector45~1_combout\,
	datac => \inst1|cache[1].dirtyBit~1_combout\,
	datad => \inst1|Selector45~0_combout\,
	combout => \inst1|cache[1].dirtyBit~2_combout\);

-- Location: FF_X26_Y69_N7
\inst1|cache[1].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].dirtyBit~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].dirtyBit~q\);

-- Location: LCCOMB_X26_Y69_N30
\inst1|cache[0].dirtyBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].dirtyBit~0_combout\ = (!\inst1|evictCounter\(0) & !\inst1|evictCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|cache[0].dirtyBit~0_combout\);

-- Location: LCCOMB_X26_Y69_N12
\inst1|cache[0].dirtyBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].dirtyBit~1_combout\ = (\inst1|cache[0].dirtyBit~q\ & (((!\inst1|isCacheFull~0_combout\) # (!\inst1|indexOfCache[0]~0_combout\)) # (!\inst1|cache[0].dirtyBit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].dirtyBit~0_combout\,
	datab => \inst1|indexOfCache[0]~0_combout\,
	datac => \inst1|cache[0].dirtyBit~q\,
	datad => \inst1|isCacheFull~0_combout\,
	combout => \inst1|cache[0].dirtyBit~1_combout\);

-- Location: LCCOMB_X29_Y69_N16
\inst1|cache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~0_combout\ = (\inst1|isInCache~1_combout\ & ((\inst1|indexOfCache~5_combout\) # (\inst1|indexOfCache~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|indexOfCache~5_combout\,
	datac => \inst1|indexOfCache~3_combout\,
	datad => \inst1|isInCache~1_combout\,
	combout => \inst1|cache~0_combout\);

-- Location: LCCOMB_X30_Y69_N16
\inst1|cache[0].data[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].data[1]~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|isInCache~1_combout\) # (!\inst1|dirtyBit~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~3_combout\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|isInCache~1_combout\,
	combout => \inst1|cache[0].data[1]~0_combout\);

-- Location: LCCOMB_X26_Y69_N8
\inst1|cache[0].dirtyBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].dirtyBit~2_combout\ = (\inst1|cache[0].dirtyBit~1_combout\) # ((!\inst1|cpuCacheOperation.read_cache~q\ & (!\inst1|cache~0_combout\ & \inst1|cache[0].data[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].dirtyBit~1_combout\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst1|cache~0_combout\,
	datad => \inst1|cache[0].data[1]~0_combout\,
	combout => \inst1|cache[0].dirtyBit~2_combout\);

-- Location: FF_X26_Y69_N9
\inst1|cache[0].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].dirtyBit~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].dirtyBit~q\);

-- Location: LCCOMB_X25_Y69_N18
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|evictCounter\(0) & ((\inst1|cache[1].dirtyBit~q\) # ((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & (((\inst1|cache[0].dirtyBit~q\ & !\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].dirtyBit~q\,
	datab => \inst1|cache[0].dirtyBit~q\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y69_N24
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Mux0~0_combout\ & ((\inst1|cache[3].dirtyBit~q\))) # (!\inst1|Mux0~0_combout\ & (\inst1|cache[2].dirtyBit~q\)))) # (!\inst1|evictCounter\(1) & (((\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].dirtyBit~q\,
	datab => \inst1|evictCounter\(1),
	datac => \inst1|cache[3].dirtyBit~q\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y69_N14
\inst1|Selector155~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector155~4_combout\ = (\inst1|isCacheFull~0_combout\ & \inst1|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|isCacheFull~0_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Selector155~4_combout\);

-- Location: LCCOMB_X28_Y68_N20
\inst1|Sdram_addr[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_addr[2]~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & (!\inst1|sdramState~0_combout\ & ((!\inst1|Selector155~4_combout\) # (!\inst1|Selector7~0_combout\)))) # (!\inst1|cpuCacheOperation.read_cache~q\ & 
-- (((!\inst1|Selector155~4_combout\)) # (!\inst1|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector7~0_combout\,
	datac => \inst1|sdramState~0_combout\,
	datad => \inst1|Selector155~4_combout\,
	combout => \inst1|Sdram_addr[2]~0_combout\);

-- Location: LCCOMB_X28_Y68_N14
\inst1|Sdram_addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_addr[2]~1_combout\ = (!\rst~input_o\ & (!\inst1|Sdram_addr[2]~0_combout\ & ((\inst1|Selector155~4_combout\) # (!\inst1|sdramState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst1|Selector155~4_combout\,
	datac => \inst1|sdramState~q\,
	datad => \inst1|Sdram_addr[2]~0_combout\,
	combout => \inst1|Sdram_addr[2]~1_combout\);

-- Location: FF_X27_Y68_N1
\inst1|Sdram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector2~2_combout\,
	ena => \inst1|Sdram_addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_addr\(2));

-- Location: LCCOMB_X26_Y69_N0
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0)) # ((\inst1|cache[2].address\(1))))) # (!\inst1|evictCounter\(1) & (!\inst1|evictCounter\(0) & ((\inst1|cache[0].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[2].address\(1),
	datad => \inst1|cache[0].address\(1),
	combout => \inst1|Selector3~0_combout\);

-- Location: LCCOMB_X27_Y69_N12
\inst1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = (\inst1|Selector3~0_combout\ & (((\inst1|cache[3].address\(1))) # (!\inst1|evictCounter\(0)))) # (!\inst1|Selector3~0_combout\ & (\inst1|evictCounter\(0) & ((\inst1|cache[1].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector3~0_combout\,
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[3].address\(1),
	datad => \inst1|cache[1].address\(1),
	combout => \inst1|Selector3~1_combout\);

-- Location: LCCOMB_X27_Y68_N14
\inst1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~2_combout\ = (\inst1|sdramState~q\ & (\inst1|Selector3~1_combout\)) # (!\inst1|sdramState~q\ & ((\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|wantedAddressLatch\(1)))) # (!\inst1|cpuCacheOperation.read_cache~q\ & 
-- (\inst1|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector3~1_combout\,
	datab => \inst1|sdramState~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|wantedAddressLatch\(1),
	combout => \inst1|Selector3~2_combout\);

-- Location: FF_X27_Y68_N15
\inst1|Sdram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector3~2_combout\,
	ena => \inst1|Sdram_addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_addr\(1));

-- Location: LCCOMB_X25_Y69_N0
\inst1|Selector155~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector155~5_combout\ = (\inst1|isCacheFull~0_combout\ & (\inst1|Mux0~1_combout\ & ((\inst1|Selector7~0_combout\) # (\inst1|indexOfCache[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isCacheFull~0_combout\,
	datab => \inst1|Selector7~0_combout\,
	datac => \inst1|indexOfCache[0]~0_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Selector155~5_combout\);

-- Location: FF_X25_Y69_N1
\inst1|write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector155~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_en~q\);

-- Location: LCCOMB_X27_Y69_N0
\inst1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|evictCounter\(0) & ((\inst1|cache[1].address\(0)) # ((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & (((\inst1|cache[0].address\(0) & !\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(0),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[0].address\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y69_N22
\inst1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~1_combout\ = (\inst1|Selector4~0_combout\ & (((\inst1|cache[3].address\(0)) # (!\inst1|evictCounter\(1))))) # (!\inst1|Selector4~0_combout\ & (\inst1|cache[2].address\(0) & ((\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(0),
	datab => \inst1|Selector4~0_combout\,
	datac => \inst1|cache[3].address\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector4~1_combout\);

-- Location: LCCOMB_X27_Y68_N8
\inst1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~2_combout\ = (\inst1|sdramState~q\ & (\inst1|Selector4~1_combout\)) # (!\inst1|sdramState~q\ & ((\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|wantedAddressLatch\(0)))) # (!\inst1|cpuCacheOperation.read_cache~q\ & 
-- (\inst1|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector4~1_combout\,
	datab => \inst1|sdramState~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|wantedAddressLatch\(0),
	combout => \inst1|Selector4~2_combout\);

-- Location: FF_X27_Y68_N9
\inst1|Sdram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector4~2_combout\,
	ena => \inst1|Sdram_addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_addr\(0));

-- Location: LCCOMB_X24_Y68_N24
\inst3|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~2_combout\ = (((!\inst1|Sdram_addr\(0)) # (!\inst1|write_en~q\)) # (!\inst1|Sdram_addr\(1))) # (!\inst1|Sdram_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datab => \inst1|Sdram_addr\(1),
	datac => \inst1|write_en~q\,
	datad => \inst1|Sdram_addr\(0),
	combout => \inst3|Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y70_N0
\inst3|memory[7][10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[7][10]~0_combout\ = (\inst3|Decoder0~2_combout\ & ((\inst3|memory[7][10]~q\))) # (!\inst3|Decoder0~2_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(10),
	datac => \inst3|memory[7][10]~q\,
	datad => \inst3|Decoder0~2_combout\,
	combout => \inst3|memory[7][10]~0_combout\);

-- Location: LCCOMB_X24_Y68_N14
\inst3|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~3_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(2) & (\inst0|Sdram_addr\(1) & \inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(2),
	datac => \inst0|Sdram_addr\(1),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~3_combout\);

-- Location: FF_X24_Y70_N1
\inst3|memory[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory[7][10]~0_combout\,
	asdata => \inst0|Sdram_data_out\(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst3|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][10]~q\);

-- Location: LCCOMB_X24_Y70_N8
\inst3|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~0_combout\ = (\inst0|Sdram_addr\(2) & (\inst0|write_en~q\ & (\inst0|Sdram_addr\(0) & !\inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(2),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~0_combout\);

-- Location: LCCOMB_X25_Y70_N8
\inst3|memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~1_combout\ = (\inst3|Decoder1~0_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~0_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(10),
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~1_combout\);

-- Location: LCCOMB_X25_Y70_N22
\inst3|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~0_combout\ = (\inst1|Sdram_addr\(2) & \inst1|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Sdram_addr\(2),
	datad => \inst1|write_en~q\,
	combout => \inst3|Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y70_N16
\inst3|memory[5][10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[5][10]~2_combout\ = (\inst3|Decoder1~0_combout\) # ((!\inst1|Sdram_addr\(1) & (\inst1|Sdram_addr\(0) & \inst3|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(1),
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|Decoder0~0_combout\,
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory[5][10]~2_combout\);

-- Location: FF_X25_Y70_N9
\inst3|memory[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[5][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[5][10]~q\);

-- Location: LCCOMB_X24_Y70_N20
\inst3|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~2_combout\ = (\inst0|Sdram_addr\(2) & (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(0) & !\inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(2),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~2_combout\);

-- Location: LCCOMB_X24_Y70_N10
\inst3|memory~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~5_combout\ = (\inst3|Decoder1~2_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~2_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(10),
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~5_combout\);

-- Location: LCCOMB_X25_Y70_N12
\inst3|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~1_combout\ = (((\inst1|Sdram_addr\(0)) # (\inst1|Sdram_addr\(1))) # (!\inst1|write_en~q\)) # (!\inst1|Sdram_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datab => \inst1|write_en~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y70_N2
\inst3|memory[4][10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[4][10]~6_combout\ = (\inst3|Decoder1~2_combout\) # (!\inst3|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Decoder0~1_combout\,
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory[4][10]~6_combout\);

-- Location: FF_X24_Y70_N11
\inst3|memory[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[4][10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[4][10]~q\);

-- Location: LCCOMB_X24_Y70_N14
\inst3|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~1_combout\ = (\inst0|Sdram_addr\(2) & (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(0) & \inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(2),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~1_combout\);

-- Location: LCCOMB_X25_Y70_N26
\inst3|memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~3_combout\ = (\inst3|Decoder1~1_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~1_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(10),
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~3_combout\);

-- Location: LCCOMB_X25_Y70_N2
\inst3|memory[6][10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[6][10]~4_combout\ = (\inst3|Decoder1~1_combout\) # ((\inst1|Sdram_addr\(1) & (!\inst1|Sdram_addr\(0) & \inst3|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(1),
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|Decoder0~0_combout\,
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory[6][10]~4_combout\);

-- Location: FF_X25_Y70_N27
\inst3|memory[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[6][10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[6][10]~q\);

-- Location: LCCOMB_X25_Y70_N28
\inst3|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & ((\inst3|memory[6][10]~q\))) # (!\inst1|Sdram_addr\(1) & (\inst3|memory[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][10]~q\,
	datab => \inst3|memory[6][10]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Mux21~0_combout\);

-- Location: LCCOMB_X24_Y70_N30
\inst3|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux21~0_combout\ & (\inst3|memory[7][10]~q\)) # (!\inst3|Mux21~0_combout\ & ((\inst3|memory[5][10]~q\))))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[7][10]~q\,
	datab => \inst3|memory[5][10]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst3|Mux21~0_combout\,
	combout => \inst3|Mux21~1_combout\);

-- Location: LCCOMB_X24_Y68_N16
\inst3|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~7_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(1) & (!\inst0|Sdram_addr\(2) & \inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(1),
	datac => \inst0|Sdram_addr\(2),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~7_combout\);

-- Location: LCCOMB_X23_Y68_N16
\inst3|memory~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~13_combout\ = (\inst3|Decoder1~7_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~7_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(10),
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory~13_combout\);

-- Location: LCCOMB_X24_Y69_N30
\inst3|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~5_combout\ = (\inst1|write_en~q\ & !\inst1|Sdram_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|write_en~q\,
	datac => \inst1|Sdram_addr\(2),
	combout => \inst3|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y68_N10
\inst3|memory[3][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[3][2]~14_combout\ = (\inst3|Decoder1~7_combout\) # ((\inst1|Sdram_addr\(0) & (\inst1|Sdram_addr\(1) & \inst3|Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst1|Sdram_addr\(1),
	datac => \inst3|Decoder0~5_combout\,
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory[3][2]~14_combout\);

-- Location: FF_X23_Y68_N17
\inst3|memory[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[3][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[3][10]~q\);

-- Location: LCCOMB_X24_Y68_N18
\inst3|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~6_combout\ = (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(1) & (!\inst0|Sdram_addr\(2) & !\inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(1),
	datac => \inst0|Sdram_addr\(2),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~6_combout\);

-- Location: LCCOMB_X24_Y69_N20
\inst3|memory~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~11_combout\ = (\inst3|Decoder1~6_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~6_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(10),
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst3|Decoder1~6_combout\,
	combout => \inst3|memory~11_combout\);

-- Location: LCCOMB_X24_Y69_N16
\inst3|memory[0][1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[0][1]~12_combout\ = (\inst3|Decoder1~6_combout\) # ((!\inst1|Sdram_addr\(1) & (!\inst1|Sdram_addr\(0) & \inst3|Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(1),
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|Decoder0~5_combout\,
	datad => \inst3|Decoder1~6_combout\,
	combout => \inst3|memory[0][1]~12_combout\);

-- Location: FF_X24_Y69_N21
\inst3|memory[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[0][1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][10]~q\);

-- Location: LCCOMB_X23_Y69_N26
\inst3|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~5_combout\ = (!\inst0|Sdram_addr\(2) & (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(1) & \inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(2),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~5_combout\);

-- Location: LCCOMB_X23_Y69_N12
\inst3|memory~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~9_combout\ = (\inst3|Decoder1~5_combout\ & (\inst0|Sdram_data_out\(10))) # (!\inst3|Decoder1~5_combout\ & ((\inst1|Sdram_data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(10),
	datab => \inst1|Sdram_data_out\(10),
	datac => \inst3|Decoder1~5_combout\,
	combout => \inst3|memory~9_combout\);

-- Location: LCCOMB_X24_Y69_N28
\inst3|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~4_combout\ = (\inst1|Sdram_addr\(2)) # (((\inst1|Sdram_addr\(1)) # (!\inst1|Sdram_addr\(0))) # (!\inst1|write_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datab => \inst1|write_en~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y69_N24
\inst3|memory[1][2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[1][2]~10_combout\ = (\inst3|Decoder1~5_combout\) # (!\inst3|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Decoder1~5_combout\,
	datad => \inst3|Decoder0~4_combout\,
	combout => \inst3|memory[1][2]~10_combout\);

-- Location: FF_X23_Y69_N13
\inst3|memory[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[1][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][10]~q\);

-- Location: LCCOMB_X24_Y68_N28
\inst3|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~2_combout\ = (\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1)) # ((\inst3|memory[1][10]~q\)))) # (!\inst1|Sdram_addr\(0) & (!\inst1|Sdram_addr\(1) & (\inst3|memory[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst1|Sdram_addr\(1),
	datac => \inst3|memory[0][10]~q\,
	datad => \inst3|memory[1][10]~q\,
	combout => \inst3|Mux21~2_combout\);

-- Location: LCCOMB_X24_Y68_N26
\inst3|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux21~2_combout\ & ((\inst3|memory[3][10]~q\))) # (!\inst3|Mux21~2_combout\ & (\inst3|memory[2][10]~q\)))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[2][10]~q\,
	datab => \inst1|Sdram_addr\(1),
	datac => \inst3|memory[3][10]~q\,
	datad => \inst3|Mux21~2_combout\,
	combout => \inst3|Mux21~3_combout\);

-- Location: LCCOMB_X23_Y70_N6
\inst3|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~4_combout\ = (\inst1|Sdram_addr\(2) & (\inst3|Mux21~1_combout\)) # (!\inst1|Sdram_addr\(2) & ((\inst3|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux21~1_combout\,
	datad => \inst3|Mux21~3_combout\,
	combout => \inst3|Mux21~4_combout\);

-- Location: LCCOMB_X26_Y68_N0
\inst1|read_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|read_en~feeder_combout\ = \inst1|wantedAddressCache[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|wantedAddressCache[0]~0_combout\,
	combout => \inst1|read_en~feeder_combout\);

-- Location: FF_X26_Y68_N1
\inst1|read_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|read_en~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|read_en~q\);

-- Location: LCCOMB_X24_Y69_N12
\inst3|data_out2[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data_out2[10]~0_combout\ = (!\inst1|write_en~q\ & \inst1|read_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|write_en~q\,
	datac => \inst1|read_en~q\,
	combout => \inst3|data_out2[10]~0_combout\);

-- Location: FF_X23_Y70_N7
\inst3|data_out2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux21~4_combout\,
	ena => \inst3|data_out2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out2\(10));

-- Location: LCCOMB_X30_Y69_N2
\inst1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector33~0_combout\ = (!\inst1|cpuCacheOperation.write_cache~q\ & \inst3|data_out2\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst3|data_out2\(10),
	combout => \inst1|Selector33~0_combout\);

-- Location: LCCOMB_X31_Y69_N30
\inst1|cache[3].data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[10]~feeder_combout\ = \inst1|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector33~0_combout\,
	combout => \inst1|cache[3].data[10]~feeder_combout\);

-- Location: LCCOMB_X27_Y69_N6
\inst1|cache[2].data[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[1]~3_combout\ = (!\inst1|Selector7~0_combout\ & ((!\inst1|cpuCacheOperation.read_cache~q\) # (!\inst1|sdramState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState~q\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|Selector7~0_combout\,
	combout => \inst1|cache[2].data[1]~3_combout\);

-- Location: LCCOMB_X31_Y69_N2
\inst1|cache[3].data[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[10]~2_combout\ = (\inst1|dirtyBit~5_combout\ & (((\inst1|Selector82~3_combout\ & \inst1|indexOfCache~4_combout\)) # (!\inst1|cache[2].data[1]~3_combout\))) # (!\inst1|dirtyBit~5_combout\ & (\inst1|Selector82~3_combout\ & 
-- (\inst1|indexOfCache~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~5_combout\,
	datab => \inst1|Selector82~3_combout\,
	datac => \inst1|indexOfCache~4_combout\,
	datad => \inst1|cache[2].data[1]~3_combout\,
	combout => \inst1|cache[3].data[10]~2_combout\);

-- Location: FF_X31_Y69_N31
\inst1|cache[3].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[3].data[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(10));

-- Location: LCCOMB_X28_Y67_N24
\inst1|cache[2].data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[10]~feeder_combout\ = \inst1|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector33~0_combout\,
	combout => \inst1|cache[2].data[10]~feeder_combout\);

-- Location: LCCOMB_X28_Y67_N16
\inst1|cache[2].data[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[1]~2_combout\ = (\inst1|dirtyBit~1_combout\ & (((\inst1|Selector82~3_combout\ & !\inst1|indexOfCache~4_combout\)) # (!\inst1|cache[2].data[1]~3_combout\))) # (!\inst1|dirtyBit~1_combout\ & (\inst1|Selector82~3_combout\ & 
-- ((!\inst1|indexOfCache~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~1_combout\,
	datab => \inst1|Selector82~3_combout\,
	datac => \inst1|cache[2].data[1]~3_combout\,
	datad => \inst1|indexOfCache~4_combout\,
	combout => \inst1|cache[2].data[1]~2_combout\);

-- Location: FF_X28_Y67_N25
\inst1|cache[2].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[2].data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(10));

-- Location: LCCOMB_X30_Y69_N24
\inst1|cache[0].data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].data[1]~1_combout\ = (\inst1|dirtyBit~3_combout\ & (((!\inst1|cache~0_combout\ & \inst1|cache[0].data[1]~0_combout\)))) # (!\inst1|dirtyBit~3_combout\ & ((\inst1|indexOfCache[0]~0_combout\) # ((!\inst1|cache~0_combout\ & 
-- \inst1|cache[0].data[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dirtyBit~3_combout\,
	datab => \inst1|indexOfCache[0]~0_combout\,
	datac => \inst1|cache~0_combout\,
	datad => \inst1|cache[0].data[1]~0_combout\,
	combout => \inst1|cache[0].data[1]~1_combout\);

-- Location: FF_X30_Y69_N1
\inst1|cache[0].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector33~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|cache[0].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(10));

-- Location: LCCOMB_X30_Y69_N0
\inst1|Selector177~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector177~0_combout\ = (\inst1|evictCounter\(0) & (((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & ((\inst1|evictCounter\(1) & (\inst1|cache[2].data\(10))) # (!\inst1|evictCounter\(1) & ((\inst1|cache[0].data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].data\(10),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[0].data\(10),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector177~0_combout\);

-- Location: LCCOMB_X31_Y69_N16
\inst1|cache[1].data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[10]~feeder_combout\ = \inst1|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector33~0_combout\,
	combout => \inst1|cache[1].data[10]~feeder_combout\);

-- Location: LCCOMB_X31_Y69_N24
\inst1|cache[1].data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[2]~0_combout\ = (\inst1|Selector45~1_combout\) # ((\inst1|dirtyBit~6_combout\ & ((\inst1|Selector7~0_combout\) # (\inst1|indexOfCache[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector7~0_combout\,
	datab => \inst1|indexOfCache[0]~0_combout\,
	datac => \inst1|dirtyBit~6_combout\,
	datad => \inst1|Selector45~1_combout\,
	combout => \inst1|cache[1].data[2]~0_combout\);

-- Location: FF_X31_Y69_N17
\inst1|cache[1].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(10));

-- Location: LCCOMB_X30_Y69_N8
\inst1|Selector177~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector177~1_combout\ = (\inst1|Selector177~0_combout\ & ((\inst1|cache[3].data\(10)) # ((!\inst1|evictCounter\(0))))) # (!\inst1|Selector177~0_combout\ & (((\inst1|evictCounter\(0) & \inst1|cache[1].data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].data\(10),
	datab => \inst1|Selector177~0_combout\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|cache[1].data\(10),
	combout => \inst1|Selector177~1_combout\);

-- Location: LCCOMB_X30_Y69_N28
\inst1|Sdram_data_out[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_data_out[10]~2_combout\ = (\inst1|Mux0~1_combout\ & (\inst1|isCacheFull~0_combout\ & (!\rst~input_o\ & \inst1|emptyCacheIndex[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|isCacheFull~0_combout\,
	datac => \rst~input_o\,
	datad => \inst1|emptyCacheIndex[1]~0_combout\,
	combout => \inst1|Sdram_data_out[10]~2_combout\);

-- Location: FF_X30_Y69_N9
\inst1|Sdram_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector177~1_combout\,
	ena => \inst1|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(10));

-- Location: LCCOMB_X24_Y68_N10
\inst3|memory~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~7_combout\ = (\inst3|Decoder1~4_combout\ & (\inst0|Sdram_data_out\(10))) # (!\inst3|Decoder1~4_combout\ & ((\inst1|Sdram_data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Decoder1~4_combout\,
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst1|Sdram_data_out\(10),
	combout => \inst3|memory~7_combout\);

-- Location: LCCOMB_X24_Y68_N6
\inst3|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~3_combout\ = (\inst1|Sdram_addr\(2)) # (((\inst1|Sdram_addr\(0)) # (!\inst1|write_en~q\)) # (!\inst1|Sdram_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datab => \inst1|Sdram_addr\(1),
	datac => \inst1|write_en~q\,
	datad => \inst1|Sdram_addr\(0),
	combout => \inst3|Decoder0~3_combout\);

-- Location: LCCOMB_X24_Y68_N4
\inst3|memory[2][2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[2][2]~8_combout\ = (\inst3|Decoder1~4_combout\) # (!\inst3|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Decoder1~4_combout\,
	datad => \inst3|Decoder0~3_combout\,
	combout => \inst3|memory[2][2]~8_combout\);

-- Location: FF_X24_Y68_N11
\inst3|memory[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][10]~q\);

-- Location: LCCOMB_X24_Y68_N20
\inst3|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~2_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0))))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & ((\inst3|memory[1][10]~q\))) # (!\inst0|Sdram_addr\(0) & (\inst3|memory[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][10]~q\,
	datab => \inst3|memory[1][10]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux53~2_combout\);

-- Location: LCCOMB_X24_Y68_N30
\inst3|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux53~2_combout\ & ((\inst3|memory[3][10]~q\))) # (!\inst3|Mux53~2_combout\ & (\inst3|memory[2][10]~q\)))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[2][10]~q\,
	datab => \inst0|Sdram_addr\(1),
	datac => \inst3|memory[3][10]~q\,
	datad => \inst3|Mux53~2_combout\,
	combout => \inst3|Mux53~3_combout\);

-- Location: LCCOMB_X24_Y70_N24
\inst3|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~0_combout\ = (\inst0|Sdram_addr\(0) & (((\inst0|Sdram_addr\(1))))) # (!\inst0|Sdram_addr\(0) & ((\inst0|Sdram_addr\(1) & ((\inst3|memory[6][10]~q\))) # (!\inst0|Sdram_addr\(1) & (\inst3|memory[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][10]~q\,
	datab => \inst3|memory[6][10]~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Mux53~0_combout\);

-- Location: LCCOMB_X24_Y70_N26
\inst3|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux53~0_combout\ & ((\inst3|memory[7][10]~q\))) # (!\inst3|Mux53~0_combout\ & (\inst3|memory[5][10]~q\)))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst3|memory[5][10]~q\,
	datac => \inst3|memory[7][10]~q\,
	datad => \inst3|Mux53~0_combout\,
	combout => \inst3|Mux53~1_combout\);

-- Location: LCCOMB_X24_Y68_N12
\inst3|Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~4_combout\ = (\inst0|Sdram_addr\(2) & ((\inst3|Mux53~1_combout\))) # (!\inst0|Sdram_addr\(2) & (\inst3|Mux53~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux53~3_combout\,
	datad => \inst3|Mux53~1_combout\,
	combout => \inst3|Mux53~4_combout\);

-- Location: LCCOMB_X20_Y69_N0
\inst0|read_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|read_en~feeder_combout\ = \inst0|wantedAddressCache[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|wantedAddressCache[0]~0_combout\,
	combout => \inst0|read_en~feeder_combout\);

-- Location: FF_X20_Y69_N1
\inst0|read_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|read_en~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|read_en~q\);

-- Location: LCCOMB_X20_Y70_N6
\inst3|data_out1[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data_out1[10]~0_combout\ = (!\inst0|write_en~q\ & \inst0|read_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|write_en~q\,
	datad => \inst0|read_en~q\,
	combout => \inst3|data_out1[10]~0_combout\);

-- Location: FF_X24_Y68_N13
\inst3|data_out1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux53~4_combout\,
	ena => \inst3|data_out1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out1\(10));

-- Location: LCCOMB_X21_Y68_N10
\inst0|dataToSendToCache[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dataToSendToCache[0]~1_combout\ = (\inst0|dataToSendToCache\(0)) # ((!\inst0|CurrentState.writeData~q\ & ((\inst0|hit~q\) # (!\inst0|CurrentState.requestData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.requestData~q\,
	datab => \inst0|CurrentState.writeData~q\,
	datac => \inst0|dataToSendToCache\(0),
	datad => \inst0|hit~q\,
	combout => \inst0|dataToSendToCache[0]~1_combout\);

-- Location: FF_X21_Y68_N11
\inst0|dataToSendToCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|dataToSendToCache[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|dataToSendToCache\(0));

-- Location: LCCOMB_X20_Y67_N10
\inst0|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector41~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|dataToSendToCache\(0))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst3|data_out1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|dataToSendToCache\(0),
	datad => \inst3|data_out1\(2),
	combout => \inst0|Selector41~0_combout\);

-- Location: LCCOMB_X20_Y67_N16
\inst0|cache[1].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[2]~feeder_combout\ = \inst0|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector41~0_combout\,
	combout => \inst0|cache[1].data[2]~feeder_combout\);

-- Location: FF_X20_Y67_N17
\inst0|cache[1].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(2));

-- Location: FF_X19_Y67_N29
\inst0|cache[0].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector41~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst0|cache[0].data[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(2));

-- Location: LCCOMB_X19_Y67_N28
\inst0|Selector185~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector185~0_combout\ = (\inst0|evictCounter\(1) & (((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & ((\inst0|evictCounter\(0) & (\inst0|cache[1].data\(2))) # (!\inst0|evictCounter\(0) & ((\inst0|cache[0].data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[1].data\(2),
	datac => \inst0|cache[0].data\(2),
	datad => \inst0|evictCounter\(0),
	combout => \inst0|Selector185~0_combout\);

-- Location: LCCOMB_X20_Y67_N14
\inst0|cache[3].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[2]~feeder_combout\ = \inst0|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector41~0_combout\,
	combout => \inst0|cache[3].data[2]~feeder_combout\);

-- Location: FF_X20_Y67_N15
\inst0|cache[3].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[3].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(2));

-- Location: LCCOMB_X21_Y67_N2
\inst0|cache[2].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[2]~feeder_combout\ = \inst0|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector41~0_combout\,
	combout => \inst0|cache[2].data[2]~feeder_combout\);

-- Location: FF_X21_Y67_N3
\inst0|cache[2].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[2].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(2));

-- Location: LCCOMB_X19_Y67_N10
\inst0|Selector185~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector185~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Selector185~0_combout\ & (\inst0|cache[3].data\(2))) # (!\inst0|Selector185~0_combout\ & ((\inst0|cache[2].data\(2)))))) # (!\inst0|evictCounter\(1) & (\inst0|Selector185~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|Selector185~0_combout\,
	datac => \inst0|cache[3].data\(2),
	datad => \inst0|cache[2].data\(2),
	combout => \inst0|Selector185~1_combout\);

-- Location: FF_X19_Y67_N11
\inst0|Sdram_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector185~1_combout\,
	ena => \inst0|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(2));

-- Location: LCCOMB_X25_Y70_N4
\inst3|memory~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~15_combout\ = (\inst3|Decoder1~0_combout\ & ((!\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~0_combout\ & (!\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(2),
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~15_combout\);

-- Location: FF_X25_Y70_N5
\inst3|memory[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[5][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[5][2]~q\);

-- Location: LCCOMB_X25_Y70_N6
\inst3|memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~17_combout\ = (\inst3|Decoder0~1_combout\ & (!\inst3|memory[4][2]~q\)) # (!\inst3|Decoder0~1_combout\ & ((\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder0~1_combout\,
	datac => \inst3|memory[4][2]~q\,
	datad => \inst1|Sdram_data_out\(2),
	combout => \inst3|memory~17_combout\);

-- Location: LCCOMB_X24_Y70_N12
\inst3|memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~18_combout\ = (\inst3|Decoder1~2_combout\ & (!\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~2_combout\ & ((!\inst3|memory~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Decoder1~2_combout\,
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst3|memory~17_combout\,
	combout => \inst3|memory~18_combout\);

-- Location: FF_X24_Y70_N13
\inst3|memory[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[4][2]~q\);

-- Location: LCCOMB_X25_Y70_N18
\inst3|memory~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~16_combout\ = (\inst3|Decoder1~1_combout\ & ((!\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~1_combout\ & (!\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(2),
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~16_combout\);

-- Location: FF_X25_Y70_N19
\inst3|memory[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[6][10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[6][2]~q\);

-- Location: LCCOMB_X24_Y70_N28
\inst3|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & ((!\inst3|memory[6][2]~q\))) # (!\inst1|Sdram_addr\(1) & (!\inst3|memory[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][2]~q\,
	datab => \inst3|memory[6][2]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Mux29~0_combout\);

-- Location: LCCOMB_X23_Y70_N30
\inst3|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux29~0_combout\ & (!\inst3|memory[7][2]~q\)) # (!\inst3|Mux29~0_combout\ & ((!\inst3|memory[5][2]~q\))))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[7][2]~q\,
	datab => \inst3|memory[5][2]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst3|Mux29~0_combout\,
	combout => \inst3|Mux29~1_combout\);

-- Location: LCCOMB_X24_Y68_N0
\inst3|memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~21_combout\ = (\inst3|Decoder1~4_combout\ & ((\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~4_combout\ & (\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(2),
	datab => \inst3|Decoder1~4_combout\,
	datac => \inst0|Sdram_data_out\(2),
	combout => \inst3|memory~21_combout\);

-- Location: FF_X24_Y68_N1
\inst3|memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][2]~q\);

-- Location: LCCOMB_X23_Y68_N0
\inst3|memory~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~24_combout\ = (\inst3|Decoder1~7_combout\ & (\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~7_combout\ & ((\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Decoder1~7_combout\,
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst1|Sdram_data_out\(2),
	combout => \inst3|memory~24_combout\);

-- Location: FF_X23_Y68_N1
\inst3|memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[3][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[3][2]~q\);

-- Location: LCCOMB_X24_Y69_N22
\inst3|memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~23_combout\ = (\inst3|Decoder1~6_combout\ & (\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~6_combout\ & ((\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(2),
	datac => \inst1|Sdram_data_out\(2),
	datad => \inst3|Decoder1~6_combout\,
	combout => \inst3|memory~23_combout\);

-- Location: FF_X24_Y69_N23
\inst3|memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[0][1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][2]~q\);

-- Location: LCCOMB_X23_Y69_N6
\inst3|memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~22_combout\ = (\inst3|Decoder1~5_combout\ & (\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~5_combout\ & ((\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~5_combout\,
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst1|Sdram_data_out\(2),
	combout => \inst3|memory~22_combout\);

-- Location: FF_X23_Y69_N7
\inst3|memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[1][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][2]~q\);

-- Location: LCCOMB_X24_Y69_N26
\inst3|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~2_combout\ = (\inst1|Sdram_addr\(0) & (((\inst3|memory[1][2]~q\) # (\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & (\inst3|memory[0][2]~q\ & ((!\inst1|Sdram_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][2]~q\,
	datab => \inst3|memory[1][2]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Mux29~2_combout\);

-- Location: LCCOMB_X23_Y69_N22
\inst3|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux29~2_combout\ & ((\inst3|memory[3][2]~q\))) # (!\inst3|Mux29~2_combout\ & (\inst3|memory[2][2]~q\)))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[2][2]~q\,
	datab => \inst3|memory[3][2]~q\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|Mux29~2_combout\,
	combout => \inst3|Mux29~3_combout\);

-- Location: LCCOMB_X24_Y69_N0
\inst3|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~4_combout\ = (\inst1|Sdram_addr\(2) & (\inst3|Mux29~1_combout\)) # (!\inst1|Sdram_addr\(2) & ((\inst3|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux29~1_combout\,
	datad => \inst3|Mux29~3_combout\,
	combout => \inst3|Mux29~4_combout\);

-- Location: FF_X24_Y69_N1
\inst3|data_out2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux29~4_combout\,
	ena => \inst3|data_out2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out2\(2));

-- Location: LCCOMB_X27_Y69_N4
\inst1|dataToSendToCache[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataToSendToCache[0]~1_combout\ = (\inst1|dataToSendToCache\(0)) # ((!\inst1|CurrentState.writeData~q\ & ((\inst1|hit~q\) # (!\inst1|CurrentState.requestData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|CurrentState.writeData~q\,
	datab => \inst1|hit~q\,
	datac => \inst1|dataToSendToCache\(0),
	datad => \inst1|CurrentState.requestData~q\,
	combout => \inst1|dataToSendToCache[0]~1_combout\);

-- Location: FF_X27_Y69_N5
\inst1|dataToSendToCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|dataToSendToCache[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataToSendToCache\(0));

-- Location: LCCOMB_X30_Y69_N14
\inst1|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector41~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|dataToSendToCache\(0)))) # (!\inst1|cpuCacheOperation.write_cache~q\ & (\inst3|data_out2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpuCacheOperation.write_cache~q\,
	datac => \inst3|data_out2\(2),
	datad => \inst1|dataToSendToCache\(0),
	combout => \inst1|Selector41~0_combout\);

-- Location: LCCOMB_X31_Y69_N18
\inst1|cache[3].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[2]~feeder_combout\ = \inst1|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector41~0_combout\,
	combout => \inst1|cache[3].data[2]~feeder_combout\);

-- Location: FF_X31_Y69_N19
\inst1|cache[3].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[3].data[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(2));

-- Location: LCCOMB_X31_Y69_N20
\inst1|cache[1].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[2]~feeder_combout\ = \inst1|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector41~0_combout\,
	combout => \inst1|cache[1].data[2]~feeder_combout\);

-- Location: FF_X31_Y69_N21
\inst1|cache[1].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(2));

-- Location: FF_X30_Y69_N27
\inst1|cache[0].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector41~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|cache[0].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(2));

-- Location: LCCOMB_X30_Y69_N26
\inst1|Selector185~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector185~0_combout\ = (\inst1|evictCounter\(0) & ((\inst1|cache[1].data\(2)) # ((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & (((\inst1|cache[0].data\(2) & !\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].data\(2),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[0].data\(2),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector185~0_combout\);

-- Location: LCCOMB_X28_Y67_N2
\inst1|cache[2].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[2]~feeder_combout\ = \inst1|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector41~0_combout\,
	combout => \inst1|cache[2].data[2]~feeder_combout\);

-- Location: FF_X28_Y67_N3
\inst1|cache[2].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[2].data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(2));

-- Location: LCCOMB_X30_Y69_N10
\inst1|Selector185~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector185~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Selector185~0_combout\ & (\inst1|cache[3].data\(2))) # (!\inst1|Selector185~0_combout\ & ((\inst1|cache[2].data\(2)))))) # (!\inst1|evictCounter\(1) & (((\inst1|Selector185~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|cache[3].data\(2),
	datac => \inst1|Selector185~0_combout\,
	datad => \inst1|cache[2].data\(2),
	combout => \inst1|Selector185~1_combout\);

-- Location: FF_X30_Y69_N11
\inst1|Sdram_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector185~1_combout\,
	ena => \inst1|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(2));

-- Location: LCCOMB_X23_Y68_N6
\inst3|memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~19_combout\ = (\inst3|Decoder1~3_combout\ & (!\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~3_combout\ & ((!\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(2),
	datac => \inst3|Decoder1~3_combout\,
	datad => \inst1|Sdram_data_out\(2),
	combout => \inst3|memory~19_combout\);

-- Location: LCCOMB_X23_Y68_N12
\inst3|memory[7][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[7][0]~20_combout\ = (\inst3|Decoder1~3_combout\) # (!\inst3|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Decoder1~3_combout\,
	datad => \inst3|Decoder0~2_combout\,
	combout => \inst3|memory[7][0]~20_combout\);

-- Location: FF_X23_Y68_N7
\inst3|memory[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[7][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][2]~q\);

-- Location: LCCOMB_X24_Y70_N6
\inst3|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~0_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0))) # (!\inst3|memory[6][2]~q\))) # (!\inst0|Sdram_addr\(1) & (((!\inst0|Sdram_addr\(0) & !\inst3|memory[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst3|memory[6][2]~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst3|memory[4][2]~q\,
	combout => \inst3|Mux61~0_combout\);

-- Location: LCCOMB_X23_Y70_N8
\inst3|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux61~0_combout\ & (!\inst3|memory[7][2]~q\)) # (!\inst3|Mux61~0_combout\ & ((!\inst3|memory[5][2]~q\))))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[7][2]~q\,
	datab => \inst3|memory[5][2]~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst3|Mux61~0_combout\,
	combout => \inst3|Mux61~1_combout\);

-- Location: LCCOMB_X23_Y69_N16
\inst3|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~2_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0))))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & (\inst3|memory[1][2]~q\)) # (!\inst0|Sdram_addr\(0) & ((\inst3|memory[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[1][2]~q\,
	datab => \inst3|memory[0][2]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux61~2_combout\);

-- Location: LCCOMB_X23_Y69_N2
\inst3|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux61~2_combout\ & ((\inst3|memory[3][2]~q\))) # (!\inst3|Mux61~2_combout\ & (\inst3|memory[2][2]~q\)))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[2][2]~q\,
	datab => \inst3|memory[3][2]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst3|Mux61~2_combout\,
	combout => \inst3|Mux61~3_combout\);

-- Location: LCCOMB_X23_Y70_N20
\inst3|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~4_combout\ = (\inst0|Sdram_addr\(2) & (\inst3|Mux61~1_combout\)) # (!\inst0|Sdram_addr\(2) & ((\inst3|Mux61~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux61~1_combout\,
	datad => \inst3|Mux61~3_combout\,
	combout => \inst3|Mux61~4_combout\);

-- Location: FF_X23_Y70_N21
\inst3|data_out1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux61~4_combout\,
	ena => \inst3|data_out1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out1\(2));

-- Location: LCCOMB_X20_Y67_N8
\inst0|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector42~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|dataToSendToCache\(0))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst3|data_out1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|dataToSendToCache\(0),
	datad => \inst3|data_out1\(1),
	combout => \inst0|Selector42~0_combout\);

-- Location: LCCOMB_X20_Y67_N12
\inst0|cache[1].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[1]~feeder_combout\ = \inst0|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector42~0_combout\,
	combout => \inst0|cache[1].data[1]~feeder_combout\);

-- Location: FF_X20_Y67_N13
\inst0|cache[1].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(1));

-- Location: LCCOMB_X21_Y67_N28
\inst0|cache[2].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[1]~feeder_combout\ = \inst0|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector42~0_combout\,
	combout => \inst0|cache[2].data[1]~feeder_combout\);

-- Location: FF_X21_Y67_N29
\inst0|cache[2].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[2].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(1));

-- Location: FF_X19_Y67_N31
\inst0|cache[0].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector42~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst0|cache[0].data[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(1));

-- Location: LCCOMB_X19_Y67_N30
\inst0|Selector186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector186~0_combout\ = (\inst0|evictCounter\(1) & ((\inst0|cache[2].data\(1)) # ((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & (((\inst0|cache[0].data\(1) & !\inst0|evictCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[2].data\(1),
	datac => \inst0|cache[0].data\(1),
	datad => \inst0|evictCounter\(0),
	combout => \inst0|Selector186~0_combout\);

-- Location: LCCOMB_X20_Y67_N18
\inst0|cache[3].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[1]~feeder_combout\ = \inst0|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector42~0_combout\,
	combout => \inst0|cache[3].data[1]~feeder_combout\);

-- Location: FF_X20_Y67_N19
\inst0|cache[3].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[3].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(1));

-- Location: LCCOMB_X19_Y67_N20
\inst0|Selector186~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector186~1_combout\ = (\inst0|evictCounter\(0) & ((\inst0|Selector186~0_combout\ & ((\inst0|cache[3].data\(1)))) # (!\inst0|Selector186~0_combout\ & (\inst0|cache[1].data\(1))))) # (!\inst0|evictCounter\(0) & (((\inst0|Selector186~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|cache[1].data\(1),
	datac => \inst0|Selector186~0_combout\,
	datad => \inst0|cache[3].data\(1),
	combout => \inst0|Selector186~1_combout\);

-- Location: FF_X19_Y67_N21
\inst0|Sdram_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector186~1_combout\,
	ena => \inst0|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(1));

-- Location: LCCOMB_X23_Y68_N4
\inst3|memory~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~33_combout\ = (\inst3|Decoder1~7_combout\ & (!\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~7_combout\ & ((!\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datab => \inst3|Decoder1~7_combout\,
	datad => \inst1|Sdram_data_out\(1),
	combout => \inst3|memory~33_combout\);

-- Location: FF_X23_Y68_N5
\inst3|memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[3][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[3][1]~q\);

-- Location: LCCOMB_X25_Y68_N18
\inst3|memory~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~29_combout\ = (!\inst3|Decoder1~4_combout\ & ((\inst3|Decoder0~3_combout\ & (!\inst3|memory[2][1]~q\)) # (!\inst3|Decoder0~3_combout\ & ((\inst1|Sdram_data_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~4_combout\,
	datab => \inst3|memory[2][1]~q\,
	datac => \inst3|Decoder0~3_combout\,
	datad => \inst1|Sdram_data_out\(1),
	combout => \inst3|memory~29_combout\);

-- Location: LCCOMB_X25_Y68_N0
\inst3|memory~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~30_combout\ = (!\inst3|memory~29_combout\ & ((!\inst0|Sdram_data_out\(1)) # (!\inst3|Decoder1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~4_combout\,
	datac => \inst0|Sdram_data_out\(1),
	datad => \inst3|memory~29_combout\,
	combout => \inst3|memory~30_combout\);

-- Location: FF_X25_Y68_N1
\inst3|memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~30_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][1]~q\);

-- Location: LCCOMB_X24_Y69_N4
\inst3|memory~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~32_combout\ = (\inst3|Decoder1~6_combout\ & ((\inst0|Sdram_data_out\(1)))) # (!\inst3|Decoder1~6_combout\ & (\inst1|Sdram_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(1),
	datab => \inst0|Sdram_data_out\(1),
	datad => \inst3|Decoder1~6_combout\,
	combout => \inst3|memory~32_combout\);

-- Location: FF_X24_Y69_N5
\inst3|memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~32_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[0][1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][1]~q\);

-- Location: LCCOMB_X23_Y69_N20
\inst3|memory~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~31_combout\ = (\inst3|Decoder1~5_combout\ & (\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~5_combout\ & ((\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~5_combout\,
	datac => \inst0|Sdram_data_out\(1),
	datad => \inst1|Sdram_data_out\(1),
	combout => \inst3|memory~31_combout\);

-- Location: FF_X23_Y69_N21
\inst3|memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[1][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][1]~q\);

-- Location: LCCOMB_X23_Y69_N8
\inst3|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~2_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1)) # (\inst3|memory[1][1]~q\)))) # (!\inst1|Sdram_addr\(0) & (\inst3|memory[0][1]~q\ & (!\inst1|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][1]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|memory[1][1]~q\,
	combout => \inst3|Mux30~2_combout\);

-- Location: LCCOMB_X23_Y70_N14
\inst3|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux30~2_combout\ & (!\inst3|memory[3][1]~q\)) # (!\inst3|Mux30~2_combout\ & ((!\inst3|memory[2][1]~q\))))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[3][1]~q\,
	datab => \inst1|Sdram_addr\(1),
	datac => \inst3|memory[2][1]~q\,
	datad => \inst3|Mux30~2_combout\,
	combout => \inst3|Mux30~3_combout\);

-- Location: LCCOMB_X23_Y68_N22
\inst3|memory~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~28_combout\ = (\inst3|Decoder1~3_combout\ & (!\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~3_combout\ & ((!\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datac => \inst3|Decoder1~3_combout\,
	datad => \inst1|Sdram_data_out\(1),
	combout => \inst3|memory~28_combout\);

-- Location: FF_X23_Y68_N23
\inst3|memory[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~28_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[7][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][1]~q\);

-- Location: LCCOMB_X25_Y70_N30
\inst3|memory~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~26_combout\ = (\inst3|Decoder1~1_combout\ & ((!\inst0|Sdram_data_out\(1)))) # (!\inst3|Decoder1~1_combout\ & (!\inst1|Sdram_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(1),
	datac => \inst0|Sdram_data_out\(1),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~26_combout\);

-- Location: FF_X25_Y70_N31
\inst3|memory[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[6][10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[6][1]~q\);

-- Location: LCCOMB_X24_Y70_N4
\inst3|memory~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~27_combout\ = (\inst3|Decoder1~2_combout\ & ((\inst0|Sdram_data_out\(1)))) # (!\inst3|Decoder1~2_combout\ & (\inst1|Sdram_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(1),
	datab => \inst0|Sdram_data_out\(1),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~27_combout\);

-- Location: FF_X24_Y70_N5
\inst3|memory[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[4][10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[4][1]~q\);

-- Location: LCCOMB_X24_Y70_N22
\inst3|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & (!\inst3|memory[6][1]~q\)) # (!\inst1|Sdram_addr\(1) & ((\inst3|memory[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[6][1]~q\,
	datab => \inst3|memory[4][1]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Mux30~0_combout\);

-- Location: LCCOMB_X23_Y70_N24
\inst3|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux30~0_combout\ & ((!\inst3|memory[7][1]~q\))) # (!\inst3|Mux30~0_combout\ & (\inst3|memory[5][1]~q\)))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[5][1]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|memory[7][1]~q\,
	datad => \inst3|Mux30~0_combout\,
	combout => \inst3|Mux30~1_combout\);

-- Location: LCCOMB_X23_Y70_N16
\inst3|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~4_combout\ = (\inst1|Sdram_addr\(2) & ((\inst3|Mux30~1_combout\))) # (!\inst1|Sdram_addr\(2) & (\inst3|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux30~3_combout\,
	datad => \inst3|Mux30~1_combout\,
	combout => \inst3|Mux30~4_combout\);

-- Location: FF_X23_Y70_N17
\inst3|data_out2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux30~4_combout\,
	ena => \inst3|data_out2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out2\(1));

-- Location: LCCOMB_X30_Y69_N4
\inst1|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector42~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|dataToSendToCache\(0))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst3|data_out2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataToSendToCache\(0),
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst3|data_out2\(1),
	combout => \inst1|Selector42~0_combout\);

-- Location: LCCOMB_X31_Y69_N4
\inst1|cache[1].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[1]~feeder_combout\ = \inst1|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector42~0_combout\,
	combout => \inst1|cache[1].data[1]~feeder_combout\);

-- Location: FF_X31_Y69_N5
\inst1|cache[1].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(1));

-- Location: LCCOMB_X31_Y69_N10
\inst1|cache[3].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[1]~feeder_combout\ = \inst1|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector42~0_combout\,
	combout => \inst1|cache[3].data[1]~feeder_combout\);

-- Location: FF_X31_Y69_N11
\inst1|cache[3].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[3].data[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(1));

-- Location: FF_X30_Y69_N21
\inst1|cache[0].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector42~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|cache[0].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(1));

-- Location: LCCOMB_X28_Y67_N8
\inst1|cache[2].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[1]~feeder_combout\ = \inst1|Selector42~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector42~0_combout\,
	combout => \inst1|cache[2].data[1]~feeder_combout\);

-- Location: FF_X28_Y67_N9
\inst1|cache[2].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[2].data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(1));

-- Location: LCCOMB_X30_Y69_N20
\inst1|Selector186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector186~0_combout\ = (\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0)) # ((\inst1|cache[2].data\(1))))) # (!\inst1|evictCounter\(1) & (!\inst1|evictCounter\(0) & (\inst1|cache[0].data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[0].data\(1),
	datad => \inst1|cache[2].data\(1),
	combout => \inst1|Selector186~0_combout\);

-- Location: LCCOMB_X30_Y69_N12
\inst1|Selector186~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector186~1_combout\ = (\inst1|evictCounter\(0) & ((\inst1|Selector186~0_combout\ & ((\inst1|cache[3].data\(1)))) # (!\inst1|Selector186~0_combout\ & (\inst1|cache[1].data\(1))))) # (!\inst1|evictCounter\(0) & (((\inst1|Selector186~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].data\(1),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[3].data\(1),
	datad => \inst1|Selector186~0_combout\,
	combout => \inst1|Selector186~1_combout\);

-- Location: FF_X30_Y69_N13
\inst1|Sdram_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector186~1_combout\,
	ena => \inst1|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(1));

-- Location: LCCOMB_X25_Y70_N20
\inst3|memory~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~25_combout\ = (\inst3|Decoder1~0_combout\ & ((\inst0|Sdram_data_out\(1)))) # (!\inst3|Decoder1~0_combout\ & (\inst1|Sdram_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(1),
	datac => \inst0|Sdram_data_out\(1),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~25_combout\);

-- Location: FF_X25_Y70_N21
\inst3|memory[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[5][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[5][1]~q\);

-- Location: LCCOMB_X24_Y70_N18
\inst3|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~0_combout\ = (\inst0|Sdram_addr\(0) & (((\inst0|Sdram_addr\(1))))) # (!\inst0|Sdram_addr\(0) & ((\inst0|Sdram_addr\(1) & (!\inst3|memory[6][1]~q\)) # (!\inst0|Sdram_addr\(1) & ((\inst3|memory[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[6][1]~q\,
	datab => \inst3|memory[4][1]~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Mux62~0_combout\);

-- Location: LCCOMB_X23_Y70_N22
\inst3|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux62~0_combout\ & ((!\inst3|memory[7][1]~q\))) # (!\inst3|Mux62~0_combout\ & (\inst3|memory[5][1]~q\)))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[5][1]~q\,
	datab => \inst3|memory[7][1]~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst3|Mux62~0_combout\,
	combout => \inst3|Mux62~1_combout\);

-- Location: LCCOMB_X23_Y69_N14
\inst3|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~2_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0))))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & ((\inst3|memory[1][1]~q\))) # (!\inst0|Sdram_addr\(0) & (\inst3|memory[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][1]~q\,
	datab => \inst3|memory[1][1]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux62~2_combout\);

-- Location: LCCOMB_X23_Y70_N28
\inst3|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux62~2_combout\ & (!\inst3|memory[3][1]~q\)) # (!\inst3|Mux62~2_combout\ & ((!\inst3|memory[2][1]~q\))))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[3][1]~q\,
	datab => \inst3|memory[2][1]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst3|Mux62~2_combout\,
	combout => \inst3|Mux62~3_combout\);

-- Location: LCCOMB_X23_Y70_N10
\inst3|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~4_combout\ = (\inst0|Sdram_addr\(2) & (\inst3|Mux62~1_combout\)) # (!\inst0|Sdram_addr\(2) & ((\inst3|Mux62~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux62~1_combout\,
	datad => \inst3|Mux62~3_combout\,
	combout => \inst3|Mux62~4_combout\);

-- Location: FF_X23_Y70_N11
\inst3|data_out1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux62~4_combout\,
	ena => \inst3|data_out1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out1\(1));

-- Location: LCCOMB_X20_Y67_N30
\inst0|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector43~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|dataToSendToCache\(0))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst3|data_out1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|dataToSendToCache\(0),
	datad => \inst3|data_out1\(0),
	combout => \inst0|Selector43~0_combout\);

-- Location: LCCOMB_X20_Y67_N28
\inst0|cache[1].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[0]~feeder_combout\ = \inst0|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector43~0_combout\,
	combout => \inst0|cache[1].data[0]~feeder_combout\);

-- Location: FF_X20_Y67_N29
\inst0|cache[1].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(0));

-- Location: FF_X19_Y67_N9
\inst0|cache[0].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector43~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst0|cache[0].data[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(0));

-- Location: LCCOMB_X19_Y67_N22
\inst0|Selector187~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector187~0_combout\ = (\inst0|evictCounter\(0) & ((\inst0|cache[1].data\(0)) # ((\inst0|evictCounter\(1))))) # (!\inst0|evictCounter\(0) & (((!\inst0|evictCounter\(1) & \inst0|cache[0].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|cache[1].data\(0),
	datac => \inst0|evictCounter\(1),
	datad => \inst0|cache[0].data\(0),
	combout => \inst0|Selector187~0_combout\);

-- Location: LCCOMB_X20_Y67_N22
\inst0|cache[3].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[0]~feeder_combout\ = \inst0|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector43~0_combout\,
	combout => \inst0|cache[3].data[0]~feeder_combout\);

-- Location: FF_X20_Y67_N23
\inst0|cache[3].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[3].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(0));

-- Location: LCCOMB_X21_Y67_N10
\inst0|cache[2].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[0]~feeder_combout\ = \inst0|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector43~0_combout\,
	combout => \inst0|cache[2].data[0]~feeder_combout\);

-- Location: FF_X21_Y67_N11
\inst0|cache[2].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cache[2].data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(0));

-- Location: LCCOMB_X19_Y67_N26
\inst0|Selector187~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector187~1_combout\ = (\inst0|Selector187~0_combout\ & ((\inst0|cache[3].data\(0)) # ((!\inst0|evictCounter\(1))))) # (!\inst0|Selector187~0_combout\ & (((\inst0|evictCounter\(1) & \inst0|cache[2].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector187~0_combout\,
	datab => \inst0|cache[3].data\(0),
	datac => \inst0|evictCounter\(1),
	datad => \inst0|cache[2].data\(0),
	combout => \inst0|Selector187~1_combout\);

-- Location: FF_X19_Y67_N27
\inst0|Sdram_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector187~1_combout\,
	ena => \inst0|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(0));

-- Location: LCCOMB_X23_Y68_N30
\inst3|memory~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~37_combout\ = (\inst3|Decoder1~3_combout\ & (!\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~3_combout\ & ((!\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(0),
	datac => \inst3|Decoder1~3_combout\,
	datad => \inst1|Sdram_data_out\(0),
	combout => \inst3|memory~37_combout\);

-- Location: FF_X23_Y68_N31
\inst3|memory[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[7][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][0]~q\);

-- Location: LCCOMB_X25_Y70_N10
\inst3|memory~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~35_combout\ = (\inst3|Decoder1~1_combout\ & (\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~1_combout\ & ((\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~1_combout\,
	datac => \inst0|Sdram_data_out\(0),
	datad => \inst1|Sdram_data_out\(0),
	combout => \inst3|memory~35_combout\);

-- Location: FF_X25_Y70_N11
\inst3|memory[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[6][10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[6][0]~q\);

-- Location: LCCOMB_X24_Y70_N16
\inst3|memory~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~36_combout\ = (\inst3|Decoder1~2_combout\ & (\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~2_combout\ & ((\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(0),
	datac => \inst1|Sdram_data_out\(0),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~36_combout\);

-- Location: FF_X24_Y70_N17
\inst3|memory[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~36_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[4][10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[4][0]~q\);

-- Location: LCCOMB_X23_Y70_N0
\inst3|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~0_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|memory[6][0]~q\) # ((\inst1|Sdram_addr\(0))))) # (!\inst1|Sdram_addr\(1) & (((!\inst1|Sdram_addr\(0) & \inst3|memory[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[6][0]~q\,
	datab => \inst1|Sdram_addr\(1),
	datac => \inst1|Sdram_addr\(0),
	datad => \inst3|memory[4][0]~q\,
	combout => \inst3|Mux31~0_combout\);

-- Location: LCCOMB_X23_Y70_N26
\inst3|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux31~0_combout\ & ((!\inst3|memory[7][0]~q\))) # (!\inst3|Mux31~0_combout\ & (!\inst3|memory[5][0]~q\)))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[5][0]~q\,
	datab => \inst3|memory[7][0]~q\,
	datac => \inst1|Sdram_addr\(0),
	datad => \inst3|Mux31~0_combout\,
	combout => \inst3|Mux31~1_combout\);

-- Location: LCCOMB_X24_Y68_N22
\inst3|memory~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~38_combout\ = (\inst3|Decoder1~4_combout\ & (\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~4_combout\ & ((\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(0),
	datac => \inst3|Decoder1~4_combout\,
	datad => \inst1|Sdram_data_out\(0),
	combout => \inst3|memory~38_combout\);

-- Location: FF_X24_Y68_N23
\inst3|memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~38_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][0]~q\);

-- Location: LCCOMB_X23_Y68_N24
\inst3|memory~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~42_combout\ = (\inst3|Decoder1~7_combout\ & (!\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~7_combout\ & ((!\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(0),
	datab => \inst3|Decoder1~7_combout\,
	datad => \inst1|Sdram_data_out\(0),
	combout => \inst3|memory~42_combout\);

-- Location: FF_X23_Y68_N25
\inst3|memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~42_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[3][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[3][0]~q\);

-- Location: LCCOMB_X24_Y69_N2
\inst3|memory~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~41_combout\ = (\inst3|Decoder1~6_combout\ & (\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~6_combout\ & ((\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(0),
	datab => \inst3|Decoder1~6_combout\,
	datad => \inst1|Sdram_data_out\(0),
	combout => \inst3|memory~41_combout\);

-- Location: FF_X24_Y69_N3
\inst3|memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[0][1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][0]~q\);

-- Location: LCCOMB_X23_Y69_N30
\inst3|memory~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~39_combout\ = (!\inst3|Decoder1~5_combout\ & ((\inst3|Decoder0~4_combout\ & ((!\inst3|memory[1][0]~q\))) # (!\inst3|Decoder0~4_combout\ & (\inst1|Sdram_data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(0),
	datab => \inst3|memory[1][0]~q\,
	datac => \inst3|Decoder1~5_combout\,
	datad => \inst3|Decoder0~4_combout\,
	combout => \inst3|memory~39_combout\);

-- Location: LCCOMB_X23_Y69_N28
\inst3|memory~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~40_combout\ = (!\inst3|memory~39_combout\ & ((!\inst0|Sdram_data_out\(0)) # (!\inst3|Decoder1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory~39_combout\,
	datac => \inst3|Decoder1~5_combout\,
	datad => \inst0|Sdram_data_out\(0),
	combout => \inst3|memory~40_combout\);

-- Location: FF_X23_Y69_N29
\inst3|memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~40_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][0]~q\);

-- Location: LCCOMB_X23_Y69_N10
\inst3|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~2_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1)) # (!\inst3|memory[1][0]~q\)))) # (!\inst1|Sdram_addr\(0) & (\inst3|memory[0][0]~q\ & (!\inst1|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][0]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|memory[1][0]~q\,
	combout => \inst3|Mux31~2_combout\);

-- Location: LCCOMB_X23_Y69_N4
\inst3|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux31~2_combout\ & ((!\inst3|memory[3][0]~q\))) # (!\inst3|Mux31~2_combout\ & (\inst3|memory[2][0]~q\)))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[2][0]~q\,
	datab => \inst3|memory[3][0]~q\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|Mux31~2_combout\,
	combout => \inst3|Mux31~3_combout\);

-- Location: LCCOMB_X23_Y70_N2
\inst3|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~4_combout\ = (\inst1|Sdram_addr\(2) & (\inst3|Mux31~1_combout\)) # (!\inst1|Sdram_addr\(2) & ((\inst3|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux31~1_combout\,
	datad => \inst3|Mux31~3_combout\,
	combout => \inst3|Mux31~4_combout\);

-- Location: FF_X23_Y70_N3
\inst3|data_out2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux31~4_combout\,
	ena => \inst3|data_out2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out2\(0));

-- Location: LCCOMB_X30_Y69_N22
\inst1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|dataToSendToCache\(0)))) # (!\inst1|cpuCacheOperation.write_cache~q\ & (\inst3|data_out2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|data_out2\(0),
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|dataToSendToCache\(0),
	combout => \inst1|Selector43~0_combout\);

-- Location: FF_X30_Y69_N19
\inst1|cache[0].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector43~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|cache[0].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(0));

-- Location: LCCOMB_X31_Y69_N28
\inst1|cache[1].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[0]~feeder_combout\ = \inst1|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|cache[1].data[0]~feeder_combout\);

-- Location: FF_X31_Y69_N29
\inst1|cache[1].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[1].data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(0));

-- Location: LCCOMB_X30_Y69_N18
\inst1|Selector187~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector187~0_combout\ = (\inst1|evictCounter\(1) & (\inst1|evictCounter\(0))) # (!\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0) & ((\inst1|cache[1].data\(0)))) # (!\inst1|evictCounter\(0) & (\inst1|cache[0].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[0].data\(0),
	datad => \inst1|cache[1].data\(0),
	combout => \inst1|Selector187~0_combout\);

-- Location: LCCOMB_X28_Y67_N22
\inst1|cache[2].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[0]~feeder_combout\ = \inst1|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector43~0_combout\,
	combout => \inst1|cache[2].data[0]~feeder_combout\);

-- Location: FF_X28_Y67_N23
\inst1|cache[2].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[2].data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(0));

-- Location: LCCOMB_X31_Y69_N22
\inst1|cache[3].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[0]~feeder_combout\ = \inst1|Selector43~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|cache[3].data[0]~feeder_combout\);

-- Location: FF_X31_Y69_N23
\inst1|cache[3].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cache[3].data[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(0));

-- Location: LCCOMB_X30_Y69_N30
\inst1|Selector187~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector187~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Selector187~0_combout\ & ((\inst1|cache[3].data\(0)))) # (!\inst1|Selector187~0_combout\ & (\inst1|cache[2].data\(0))))) # (!\inst1|evictCounter\(1) & (\inst1|Selector187~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|Selector187~0_combout\,
	datac => \inst1|cache[2].data\(0),
	datad => \inst1|cache[3].data\(0),
	combout => \inst1|Selector187~1_combout\);

-- Location: FF_X30_Y69_N31
\inst1|Sdram_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector187~1_combout\,
	ena => \inst1|Sdram_data_out[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(0));

-- Location: LCCOMB_X25_Y70_N24
\inst3|memory~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~34_combout\ = (\inst3|Decoder1~0_combout\ & (!\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~0_combout\ & ((!\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~0_combout\,
	datac => \inst0|Sdram_data_out\(0),
	datad => \inst1|Sdram_data_out\(0),
	combout => \inst3|memory~34_combout\);

-- Location: FF_X25_Y70_N25
\inst3|memory[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory~34_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[5][10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[5][0]~q\);

-- Location: LCCOMB_X23_Y70_N18
\inst3|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~0_combout\ = (\inst0|Sdram_addr\(0) & (((\inst0|Sdram_addr\(1))))) # (!\inst0|Sdram_addr\(0) & ((\inst0|Sdram_addr\(1) & (\inst3|memory[6][0]~q\)) # (!\inst0|Sdram_addr\(1) & ((\inst3|memory[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst3|memory[6][0]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst3|memory[4][0]~q\,
	combout => \inst3|Mux63~0_combout\);

-- Location: LCCOMB_X23_Y70_N4
\inst3|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux63~0_combout\ & ((!\inst3|memory[7][0]~q\))) # (!\inst3|Mux63~0_combout\ & (!\inst3|memory[5][0]~q\)))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[5][0]~q\,
	datab => \inst3|memory[7][0]~q\,
	datac => \inst0|Sdram_addr\(0),
	datad => \inst3|Mux63~0_combout\,
	combout => \inst3|Mux63~1_combout\);

-- Location: LCCOMB_X23_Y69_N18
\inst3|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~2_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0))))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & ((!\inst3|memory[1][0]~q\))) # (!\inst0|Sdram_addr\(0) & (\inst3|memory[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][0]~q\,
	datab => \inst3|memory[1][0]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux63~2_combout\);

-- Location: LCCOMB_X23_Y69_N0
\inst3|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux63~2_combout\ & ((!\inst3|memory[3][0]~q\))) # (!\inst3|Mux63~2_combout\ & (\inst3|memory[2][0]~q\)))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[2][0]~q\,
	datab => \inst3|memory[3][0]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst3|Mux63~2_combout\,
	combout => \inst3|Mux63~3_combout\);

-- Location: LCCOMB_X23_Y70_N12
\inst3|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~4_combout\ = (\inst0|Sdram_addr\(2) & (\inst3|Mux63~1_combout\)) # (!\inst0|Sdram_addr\(2) & ((\inst3|Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux63~1_combout\,
	datad => \inst3|Mux63~3_combout\,
	combout => \inst3|Mux63~4_combout\);

-- Location: FF_X23_Y70_N13
\inst3|data_out1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux63~4_combout\,
	ena => \inst3|data_out1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out1\(0));

-- Location: LCCOMB_X20_Y70_N24
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\inst0|write_en~q\) # (\inst0|read_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|write_en~q\,
	datad => \inst0|read_en~q\,
	combout => \inst~combout\);

-- Location: LCCOMB_X24_Y69_N6
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\inst1|write_en~q\) # (\inst1|read_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|write_en~q\,
	datac => \inst1|read_en~q\,
	combout => \inst6~combout\);

ww_cpu0_wr_en <= \cpu0_wr_en~output_o\;

ww_dataout1(31) <= \dataout1[31]~output_o\;

ww_dataout1(30) <= \dataout1[30]~output_o\;

ww_dataout1(29) <= \dataout1[29]~output_o\;

ww_dataout1(28) <= \dataout1[28]~output_o\;

ww_dataout1(27) <= \dataout1[27]~output_o\;

ww_dataout1(26) <= \dataout1[26]~output_o\;

ww_dataout1(25) <= \dataout1[25]~output_o\;

ww_dataout1(24) <= \dataout1[24]~output_o\;

ww_dataout1(23) <= \dataout1[23]~output_o\;

ww_dataout1(22) <= \dataout1[22]~output_o\;

ww_dataout1(21) <= \dataout1[21]~output_o\;

ww_dataout1(20) <= \dataout1[20]~output_o\;

ww_dataout1(19) <= \dataout1[19]~output_o\;

ww_dataout1(18) <= \dataout1[18]~output_o\;

ww_dataout1(17) <= \dataout1[17]~output_o\;

ww_dataout1(16) <= \dataout1[16]~output_o\;

ww_dataout1(15) <= \dataout1[15]~output_o\;

ww_dataout1(14) <= \dataout1[14]~output_o\;

ww_dataout1(13) <= \dataout1[13]~output_o\;

ww_dataout1(12) <= \dataout1[12]~output_o\;

ww_dataout1(11) <= \dataout1[11]~output_o\;

ww_dataout1(10) <= \dataout1[10]~output_o\;

ww_dataout1(9) <= \dataout1[9]~output_o\;

ww_dataout1(8) <= \dataout1[8]~output_o\;

ww_dataout1(7) <= \dataout1[7]~output_o\;

ww_dataout1(6) <= \dataout1[6]~output_o\;

ww_dataout1(5) <= \dataout1[5]~output_o\;

ww_dataout1(4) <= \dataout1[4]~output_o\;

ww_dataout1(3) <= \dataout1[3]~output_o\;

ww_dataout1(2) <= \dataout1[2]~output_o\;

ww_dataout1(1) <= \dataout1[1]~output_o\;

ww_dataout1(0) <= \dataout1[0]~output_o\;

ww_cpu1_wr_en <= \cpu1_wr_en~output_o\;

ww_dataout2(31) <= \dataout2[31]~output_o\;

ww_dataout2(30) <= \dataout2[30]~output_o\;

ww_dataout2(29) <= \dataout2[29]~output_o\;

ww_dataout2(28) <= \dataout2[28]~output_o\;

ww_dataout2(27) <= \dataout2[27]~output_o\;

ww_dataout2(26) <= \dataout2[26]~output_o\;

ww_dataout2(25) <= \dataout2[25]~output_o\;

ww_dataout2(24) <= \dataout2[24]~output_o\;

ww_dataout2(23) <= \dataout2[23]~output_o\;

ww_dataout2(22) <= \dataout2[22]~output_o\;

ww_dataout2(21) <= \dataout2[21]~output_o\;

ww_dataout2(20) <= \dataout2[20]~output_o\;

ww_dataout2(19) <= \dataout2[19]~output_o\;

ww_dataout2(18) <= \dataout2[18]~output_o\;

ww_dataout2(17) <= \dataout2[17]~output_o\;

ww_dataout2(16) <= \dataout2[16]~output_o\;

ww_dataout2(15) <= \dataout2[15]~output_o\;

ww_dataout2(14) <= \dataout2[14]~output_o\;

ww_dataout2(13) <= \dataout2[13]~output_o\;

ww_dataout2(12) <= \dataout2[12]~output_o\;

ww_dataout2(11) <= \dataout2[11]~output_o\;

ww_dataout2(10) <= \dataout2[10]~output_o\;

ww_dataout2(9) <= \dataout2[9]~output_o\;

ww_dataout2(8) <= \dataout2[8]~output_o\;

ww_dataout2(7) <= \dataout2[7]~output_o\;

ww_dataout2(6) <= \dataout2[6]~output_o\;

ww_dataout2(5) <= \dataout2[5]~output_o\;

ww_dataout2(4) <= \dataout2[4]~output_o\;

ww_dataout2(3) <= \dataout2[3]~output_o\;

ww_dataout2(2) <= \dataout2[2]~output_o\;

ww_dataout2(1) <= \dataout2[1]~output_o\;

ww_dataout2(0) <= \dataout2[0]~output_o\;

ww_ready1 <= \ready1~output_o\;

ww_cpu0_rd_en <= \cpu0_rd_en~output_o\;

ww_ready2 <= \ready2~output_o\;

ww_cpu1_rd_en <= \cpu1_rd_en~output_o\;

ww_cpu0_sdram_addr(2) <= \cpu0_sdram_addr[2]~output_o\;

ww_cpu0_sdram_addr(1) <= \cpu0_sdram_addr[1]~output_o\;

ww_cpu0_sdram_addr(0) <= \cpu0_sdram_addr[0]~output_o\;

ww_cpu1_sdram_addr2(2) <= \cpu1_sdram_addr2[2]~output_o\;

ww_cpu1_sdram_addr2(1) <= \cpu1_sdram_addr2[1]~output_o\;

ww_cpu1_sdram_addr2(0) <= \cpu1_sdram_addr2[0]~output_o\;

ww_cpu0_sdram_data_out(31) <= \cpu0_sdram_data_out[31]~output_o\;

ww_cpu0_sdram_data_out(30) <= \cpu0_sdram_data_out[30]~output_o\;

ww_cpu0_sdram_data_out(29) <= \cpu0_sdram_data_out[29]~output_o\;

ww_cpu0_sdram_data_out(28) <= \cpu0_sdram_data_out[28]~output_o\;

ww_cpu0_sdram_data_out(27) <= \cpu0_sdram_data_out[27]~output_o\;

ww_cpu0_sdram_data_out(26) <= \cpu0_sdram_data_out[26]~output_o\;

ww_cpu0_sdram_data_out(25) <= \cpu0_sdram_data_out[25]~output_o\;

ww_cpu0_sdram_data_out(24) <= \cpu0_sdram_data_out[24]~output_o\;

ww_cpu0_sdram_data_out(23) <= \cpu0_sdram_data_out[23]~output_o\;

ww_cpu0_sdram_data_out(22) <= \cpu0_sdram_data_out[22]~output_o\;

ww_cpu0_sdram_data_out(21) <= \cpu0_sdram_data_out[21]~output_o\;

ww_cpu0_sdram_data_out(20) <= \cpu0_sdram_data_out[20]~output_o\;

ww_cpu0_sdram_data_out(19) <= \cpu0_sdram_data_out[19]~output_o\;

ww_cpu0_sdram_data_out(18) <= \cpu0_sdram_data_out[18]~output_o\;

ww_cpu0_sdram_data_out(17) <= \cpu0_sdram_data_out[17]~output_o\;

ww_cpu0_sdram_data_out(16) <= \cpu0_sdram_data_out[16]~output_o\;

ww_cpu0_sdram_data_out(15) <= \cpu0_sdram_data_out[15]~output_o\;

ww_cpu0_sdram_data_out(14) <= \cpu0_sdram_data_out[14]~output_o\;

ww_cpu0_sdram_data_out(13) <= \cpu0_sdram_data_out[13]~output_o\;

ww_cpu0_sdram_data_out(12) <= \cpu0_sdram_data_out[12]~output_o\;

ww_cpu0_sdram_data_out(11) <= \cpu0_sdram_data_out[11]~output_o\;

ww_cpu0_sdram_data_out(10) <= \cpu0_sdram_data_out[10]~output_o\;

ww_cpu0_sdram_data_out(9) <= \cpu0_sdram_data_out[9]~output_o\;

ww_cpu0_sdram_data_out(8) <= \cpu0_sdram_data_out[8]~output_o\;

ww_cpu0_sdram_data_out(7) <= \cpu0_sdram_data_out[7]~output_o\;

ww_cpu0_sdram_data_out(6) <= \cpu0_sdram_data_out[6]~output_o\;

ww_cpu0_sdram_data_out(5) <= \cpu0_sdram_data_out[5]~output_o\;

ww_cpu0_sdram_data_out(4) <= \cpu0_sdram_data_out[4]~output_o\;

ww_cpu0_sdram_data_out(3) <= \cpu0_sdram_data_out[3]~output_o\;

ww_cpu0_sdram_data_out(2) <= \cpu0_sdram_data_out[2]~output_o\;

ww_cpu0_sdram_data_out(1) <= \cpu0_sdram_data_out[1]~output_o\;

ww_cpu0_sdram_data_out(0) <= \cpu0_sdram_data_out[0]~output_o\;

ww_cpu1_sdram_data_out1(31) <= \cpu1_sdram_data_out1[31]~output_o\;

ww_cpu1_sdram_data_out1(30) <= \cpu1_sdram_data_out1[30]~output_o\;

ww_cpu1_sdram_data_out1(29) <= \cpu1_sdram_data_out1[29]~output_o\;

ww_cpu1_sdram_data_out1(28) <= \cpu1_sdram_data_out1[28]~output_o\;

ww_cpu1_sdram_data_out1(27) <= \cpu1_sdram_data_out1[27]~output_o\;

ww_cpu1_sdram_data_out1(26) <= \cpu1_sdram_data_out1[26]~output_o\;

ww_cpu1_sdram_data_out1(25) <= \cpu1_sdram_data_out1[25]~output_o\;

ww_cpu1_sdram_data_out1(24) <= \cpu1_sdram_data_out1[24]~output_o\;

ww_cpu1_sdram_data_out1(23) <= \cpu1_sdram_data_out1[23]~output_o\;

ww_cpu1_sdram_data_out1(22) <= \cpu1_sdram_data_out1[22]~output_o\;

ww_cpu1_sdram_data_out1(21) <= \cpu1_sdram_data_out1[21]~output_o\;

ww_cpu1_sdram_data_out1(20) <= \cpu1_sdram_data_out1[20]~output_o\;

ww_cpu1_sdram_data_out1(19) <= \cpu1_sdram_data_out1[19]~output_o\;

ww_cpu1_sdram_data_out1(18) <= \cpu1_sdram_data_out1[18]~output_o\;

ww_cpu1_sdram_data_out1(17) <= \cpu1_sdram_data_out1[17]~output_o\;

ww_cpu1_sdram_data_out1(16) <= \cpu1_sdram_data_out1[16]~output_o\;

ww_cpu1_sdram_data_out1(15) <= \cpu1_sdram_data_out1[15]~output_o\;

ww_cpu1_sdram_data_out1(14) <= \cpu1_sdram_data_out1[14]~output_o\;

ww_cpu1_sdram_data_out1(13) <= \cpu1_sdram_data_out1[13]~output_o\;

ww_cpu1_sdram_data_out1(12) <= \cpu1_sdram_data_out1[12]~output_o\;

ww_cpu1_sdram_data_out1(11) <= \cpu1_sdram_data_out1[11]~output_o\;

ww_cpu1_sdram_data_out1(10) <= \cpu1_sdram_data_out1[10]~output_o\;

ww_cpu1_sdram_data_out1(9) <= \cpu1_sdram_data_out1[9]~output_o\;

ww_cpu1_sdram_data_out1(8) <= \cpu1_sdram_data_out1[8]~output_o\;

ww_cpu1_sdram_data_out1(7) <= \cpu1_sdram_data_out1[7]~output_o\;

ww_cpu1_sdram_data_out1(6) <= \cpu1_sdram_data_out1[6]~output_o\;

ww_cpu1_sdram_data_out1(5) <= \cpu1_sdram_data_out1[5]~output_o\;

ww_cpu1_sdram_data_out1(4) <= \cpu1_sdram_data_out1[4]~output_o\;

ww_cpu1_sdram_data_out1(3) <= \cpu1_sdram_data_out1[3]~output_o\;

ww_cpu1_sdram_data_out1(2) <= \cpu1_sdram_data_out1[2]~output_o\;

ww_cpu1_sdram_data_out1(1) <= \cpu1_sdram_data_out1[1]~output_o\;

ww_cpu1_sdram_data_out1(0) <= \cpu1_sdram_data_out1[0]~output_o\;
END structure;


