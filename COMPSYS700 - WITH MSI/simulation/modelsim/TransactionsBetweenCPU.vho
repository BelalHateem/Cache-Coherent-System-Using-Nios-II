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

-- DATE "10/11/2024 20:33:20"

-- 
-- Device: Altera EP4CE15F23C6 Package FBGA484
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
	r_en1 : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	cpu0_prio : IN std_logic;
	cpu1_wr_req_out : OUT std_logic;
	cpu1_prio1 : IN std_logic;
	cpu0_wr_req_out : OUT std_logic;
	cpu0_rd_req_out : OUT std_logic;
	cpu0_cache_to_cache_response_out_rdy : OUT std_logic;
	cpu0_cache_to_cache_response : OUT std_logic;
	cpu0_cache_to_cache_req : OUT std_logic;
	cpu0_cache_to_cache_req_addr : OUT std_logic_vector(2 DOWNTO 0);
	cpu0_cache_to_cache_resp_data : OUT std_logic_vector(31 DOWNTO 0);
	cpu0_req_addr_out : OUT std_logic_vector(2 DOWNTO 0);
	sdramDataOut2 : OUT std_logic_vector(31 DOWNTO 0);
	wr_en1 : OUT std_logic;
	wr_en2 : OUT std_logic;
	ready1 : OUT std_logic;
	ready2 : OUT std_logic;
	r_en2 : OUT std_logic;
	sdram_addr1 : OUT std_logic_vector(2 DOWNTO 0);
	sdram_addr2 : OUT std_logic_vector(2 DOWNTO 0);
	sdram_data_out1 : OUT std_logic_vector(31 DOWNTO 0);
	sdram_data_out2 : OUT std_logic_vector(31 DOWNTO 0);
	cpu1_wantedAddr : IN std_logic_vector(2 DOWNTO 0);
	cpu1_rd_req_out : OUT std_logic;
	cpu1_cache_to_cache_response_out_ready : OUT std_logic;
	cpu1_cache_to_cache_response : OUT std_logic;
	cpu1_cache_to_cache_req : OUT std_logic;
	cpu1_cache_to_cache_req_addr : OUT std_logic_vector(2 DOWNTO 0);
	cpu1_cache_to_cache_resp_data : OUT std_logic_vector(31 DOWNTO 0);
	cpu1_req_addr_out : OUT std_logic_vector(2 DOWNTO 0);
	sdramDataOut1 : OUT std_logic_vector(31 DOWNTO 0);
	cpu0_wantedAddr : IN std_logic_vector(2 DOWNTO 0)
	);
END TransactionsBetweenCPU;

-- Design Ports Information
-- r_en1	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wr_req_out	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wr_req_out	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_rd_req_out	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_response_out_rdy	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_response	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_req	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_req_addr[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_req_addr[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_req_addr[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[31]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[30]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[29]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[28]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[27]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[26]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[24]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[23]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[21]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[20]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[19]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[18]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[17]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[16]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[13]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[10]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[9]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[8]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_cache_to_cache_resp_data[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_req_addr_out[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_req_addr_out[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_req_addr_out[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[31]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[30]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[28]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[27]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[26]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[25]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[23]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[22]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[21]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[20]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[19]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[18]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[17]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[16]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[14]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[13]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[11]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[9]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[6]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[5]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut2[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en1	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en2	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready1	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready2	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_en2	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr1[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr1[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr1[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr2[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr2[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr2[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[31]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[30]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[29]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[27]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[26]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[23]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[22]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[21]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[20]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[19]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[17]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[16]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[15]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[12]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[11]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[9]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[8]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out1[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[31]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[30]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[29]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[28]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[27]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[26]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[25]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[24]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[22]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[21]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[20]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[19]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[18]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[17]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[16]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[13]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[12]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[9]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[8]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_out2[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_rd_req_out	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_response_out_ready	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_response	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_req	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_req_addr[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_req_addr[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_req_addr[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[30]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[28]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[27]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[26]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[25]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[24]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[23]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[22]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[21]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[20]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[19]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[18]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[17]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[15]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[14]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[12]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[9]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_cache_to_cache_resp_data[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_req_addr_out[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_req_addr_out[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_req_addr_out[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[31]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[30]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[29]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[28]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[26]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[25]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[24]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[23]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[21]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[18]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[17]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[15]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[13]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[9]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[7]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdramDataOut1[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wantedAddr[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wantedAddr[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_wantedAddr[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu0_prio	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_prio1	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wantedAddr[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wantedAddr[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu1_wantedAddr[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_r_en1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_cpu0_prio : std_logic;
SIGNAL ww_cpu1_wr_req_out : std_logic;
SIGNAL ww_cpu1_prio1 : std_logic;
SIGNAL ww_cpu0_wr_req_out : std_logic;
SIGNAL ww_cpu0_rd_req_out : std_logic;
SIGNAL ww_cpu0_cache_to_cache_response_out_rdy : std_logic;
SIGNAL ww_cpu0_cache_to_cache_response : std_logic;
SIGNAL ww_cpu0_cache_to_cache_req : std_logic;
SIGNAL ww_cpu0_cache_to_cache_req_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpu0_cache_to_cache_resp_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cpu0_req_addr_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sdramDataOut2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wr_en1 : std_logic;
SIGNAL ww_wr_en2 : std_logic;
SIGNAL ww_ready1 : std_logic;
SIGNAL ww_ready2 : std_logic;
SIGNAL ww_r_en2 : std_logic;
SIGNAL ww_sdram_addr1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sdram_addr2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sdram_data_out1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sdram_data_out2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cpu1_wantedAddr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpu1_rd_req_out : std_logic;
SIGNAL ww_cpu1_cache_to_cache_response_out_ready : std_logic;
SIGNAL ww_cpu1_cache_to_cache_response : std_logic;
SIGNAL ww_cpu1_cache_to_cache_req : std_logic;
SIGNAL ww_cpu1_cache_to_cache_req_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpu1_cache_to_cache_resp_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cpu1_req_addr_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sdramDataOut1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cpu0_wantedAddr : std_logic_vector(2 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r_en1~output_o\ : std_logic;
SIGNAL \cpu1_wr_req_out~output_o\ : std_logic;
SIGNAL \cpu0_wr_req_out~output_o\ : std_logic;
SIGNAL \cpu0_rd_req_out~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_response_out_rdy~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_response~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_req~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_req_addr[2]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_req_addr[1]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_req_addr[0]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[31]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[30]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[29]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[28]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[27]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[26]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[25]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[24]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[23]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[22]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[21]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[20]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[19]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[18]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[17]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[16]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[15]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[14]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[13]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[12]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[11]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[10]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[9]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[8]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[7]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[6]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[5]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[4]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[3]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[2]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[1]~output_o\ : std_logic;
SIGNAL \cpu0_cache_to_cache_resp_data[0]~output_o\ : std_logic;
SIGNAL \cpu0_req_addr_out[2]~output_o\ : std_logic;
SIGNAL \cpu0_req_addr_out[1]~output_o\ : std_logic;
SIGNAL \cpu0_req_addr_out[0]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[31]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[30]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[29]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[28]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[27]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[26]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[25]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[24]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[23]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[22]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[21]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[20]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[19]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[18]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[17]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[16]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[15]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[14]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[13]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[12]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[11]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[10]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[9]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[8]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[7]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[6]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[5]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[4]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[3]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[2]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[1]~output_o\ : std_logic;
SIGNAL \sdramDataOut2[0]~output_o\ : std_logic;
SIGNAL \wr_en1~output_o\ : std_logic;
SIGNAL \wr_en2~output_o\ : std_logic;
SIGNAL \ready1~output_o\ : std_logic;
SIGNAL \ready2~output_o\ : std_logic;
SIGNAL \r_en2~output_o\ : std_logic;
SIGNAL \sdram_addr1[2]~output_o\ : std_logic;
SIGNAL \sdram_addr1[1]~output_o\ : std_logic;
SIGNAL \sdram_addr1[0]~output_o\ : std_logic;
SIGNAL \sdram_addr2[2]~output_o\ : std_logic;
SIGNAL \sdram_addr2[1]~output_o\ : std_logic;
SIGNAL \sdram_addr2[0]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[31]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[30]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[29]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[28]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[27]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[26]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[25]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[24]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[23]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[22]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[21]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[20]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[19]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[18]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[17]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[16]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[15]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[14]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[13]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[12]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[11]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[10]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[9]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[8]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[7]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[6]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[5]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[4]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[3]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[2]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[1]~output_o\ : std_logic;
SIGNAL \sdram_data_out1[0]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[31]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[30]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[29]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[28]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[27]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[26]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[25]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[24]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[23]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[22]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[21]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[20]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[19]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[18]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[17]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[16]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[15]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[14]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[13]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[12]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[11]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[10]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[9]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[8]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[7]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[6]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[5]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[4]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[3]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[2]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[1]~output_o\ : std_logic;
SIGNAL \sdram_data_out2[0]~output_o\ : std_logic;
SIGNAL \cpu1_rd_req_out~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_response_out_ready~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_response~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_req~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_req_addr[2]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_req_addr[1]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_req_addr[0]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[31]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[30]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[29]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[28]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[27]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[26]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[25]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[24]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[23]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[22]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[21]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[20]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[19]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[18]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[17]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[16]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[15]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[14]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[13]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[12]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[11]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[10]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[9]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[8]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[7]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[6]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[5]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[4]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[3]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[2]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[1]~output_o\ : std_logic;
SIGNAL \cpu1_cache_to_cache_resp_data[0]~output_o\ : std_logic;
SIGNAL \cpu1_req_addr_out[2]~output_o\ : std_logic;
SIGNAL \cpu1_req_addr_out[1]~output_o\ : std_logic;
SIGNAL \cpu1_req_addr_out[0]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[31]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[30]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[29]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[28]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[27]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[26]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[25]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[24]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[23]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[22]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[21]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[20]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[19]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[18]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[17]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[16]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[15]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[14]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[13]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[12]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[11]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[10]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[9]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[8]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[7]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[6]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[5]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[4]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[3]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[2]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[1]~output_o\ : std_logic;
SIGNAL \sdramDataOut1[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cpu0_wantedAddr[2]~input_o\ : std_logic;
SIGNAL \inst0|sdramState.readResponseSDRAM~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst0|CurrentState.initial~feeder_combout\ : std_logic;
SIGNAL \inst0|CurrentState.initial~q\ : std_logic;
SIGNAL \inst0|Selector391~0_combout\ : std_logic;
SIGNAL \inst0|CurrentState.writeData~q\ : std_logic;
SIGNAL \inst0|Selector393~0_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst0|sdramState.readResponseSDRAM~q\ : std_logic;
SIGNAL \inst0|sdramState.checkCache~0_combout\ : std_logic;
SIGNAL \inst0|sdramState.checkCache~q\ : std_logic;
SIGNAL \cpu0_prio~input_o\ : std_logic;
SIGNAL \inst1|CurrentState.writeData~q\ : std_logic;
SIGNAL \inst1|sdramState.checkCache~0_combout\ : std_logic;
SIGNAL \inst1|Selector393~0_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst1|sdramState.checkCache~q\ : std_logic;
SIGNAL \cpu0_wantedAddr[0]~input_o\ : std_logic;
SIGNAL \inst0|Selector394~0_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst0|Selector205~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].address[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|process_0~13_combout\ : std_logic;
SIGNAL \cpu0_wantedAddr[1]~input_o\ : std_logic;
SIGNAL \cpu1_wantedAddr[0]~input_o\ : std_logic;
SIGNAL \inst1|cpu_req_addr_out[2]~0_combout\ : std_logic;
SIGNAL \cpu1_wantedAddr[1]~input_o\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \cpu1_wantedAddr[2]~input_o\ : std_logic;
SIGNAL \inst0|process_0~14_combout\ : std_logic;
SIGNAL \inst0|Selector3~0_combout\ : std_logic;
SIGNAL \inst0|sdramState.readResponseCACHE~q\ : std_logic;
SIGNAL \inst0|cache[1].data[2]~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].address[0]~2_combout\ : std_logic;
SIGNAL \inst0|Selector203~0_combout\ : std_logic;
SIGNAL \inst0|cache~25_combout\ : std_logic;
SIGNAL \inst0|Selector204~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache~24_combout\ : std_logic;
SIGNAL \inst0|cache~26_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.none~0_combout\ : std_logic;
SIGNAL \inst0|cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst0|Selector196~0_combout\ : std_logic;
SIGNAL \inst0|MSI~8_combout\ : std_logic;
SIGNAL \inst0|MSI~9_combout\ : std_logic;
SIGNAL \inst0|cache[2].address[0]~0_combout\ : std_logic;
SIGNAL \inst0|cache~11_combout\ : std_logic;
SIGNAL \inst0|cache~10_combout\ : std_logic;
SIGNAL \inst0|cache~12_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~10_combout\ : std_logic;
SIGNAL \inst0|Selector202~1_combout\ : std_logic;
SIGNAL \inst1|cache_to_cache_req_address_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|cpu_wr_req_out~q\ : std_logic;
SIGNAL \inst1|Selector394~0_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst1|Selector203~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector205~0_combout\ : std_logic;
SIGNAL \cpu1_prio1~input_o\ : std_logic;
SIGNAL \inst1|process_0~16_combout\ : std_logic;
SIGNAL \inst1|Selector202~0_combout\ : std_logic;
SIGNAL \inst1|emptyCacheIndex~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|sdramState.readResponseCACHE~q\ : std_logic;
SIGNAL \inst1|cache[1].data[0]~0_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|Selector352~2_combout\ : std_logic;
SIGNAL \inst1|evictCounter[0]~1_combout\ : std_logic;
SIGNAL \inst1|evictCounter[1]~0_combout\ : std_logic;
SIGNAL \inst1|MSI~10_combout\ : std_logic;
SIGNAL \inst1|MSI~11_combout\ : std_logic;
SIGNAL \inst1|cache[3].address[1]~0_combout\ : std_logic;
SIGNAL \inst1|Selector204~0_combout\ : std_logic;
SIGNAL \inst1|cache~12_combout\ : std_logic;
SIGNAL \inst1|cache~13_combout\ : std_logic;
SIGNAL \inst1|cache~14_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.none~0_combout\ : std_logic;
SIGNAL \inst1|cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst1|Selector196~0_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|cache[0].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~13_combout\ : std_logic;
SIGNAL \inst1|Selector197~0_combout\ : std_logic;
SIGNAL \inst0|cache_to_cache_req_address_out[2]~0_combout\ : std_logic;
SIGNAL \inst0|cache_to_cache_req_address_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~13_combout\ : std_logic;
SIGNAL \inst1|process_0~14_combout\ : std_logic;
SIGNAL \inst1|MSI~8_combout\ : std_logic;
SIGNAL \inst1|MSI~9_combout\ : std_logic;
SIGNAL \inst1|cache[2].address[2]~0_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~4_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~5_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~8_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~9_combout\ : std_logic;
SIGNAL \inst1|Selector316~0_combout\ : std_logic;
SIGNAL \inst1|Selector202~1_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~14_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~12_combout\ : std_logic;
SIGNAL \inst1|Selector200~0_combout\ : std_logic;
SIGNAL \inst1|Selector202~2_combout\ : std_logic;
SIGNAL \inst1|cache~15_combout\ : std_logic;
SIGNAL \inst1|cache~10_combout\ : std_logic;
SIGNAL \inst1|cache~16_combout\ : std_logic;
SIGNAL \inst1|Selector316~1_combout\ : std_logic;
SIGNAL \inst1|Selector316~2_combout\ : std_logic;
SIGNAL \inst1|Selector316~3_combout\ : std_logic;
SIGNAL \inst1|cache[3].MSI.invalid~q\ : std_logic;
SIGNAL \inst1|MSI~12_combout\ : std_logic;
SIGNAL \inst1|cache[0].address[1]~2_combout\ : std_logic;
SIGNAL \inst1|cache~17_combout\ : std_logic;
SIGNAL \inst1|cache~18_combout\ : std_logic;
SIGNAL \inst1|cache~19_combout\ : std_logic;
SIGNAL \inst1|Selector202~4_combout\ : std_logic;
SIGNAL \inst1|Selector202~5_combout\ : std_logic;
SIGNAL \inst1|MSI~13_combout\ : std_logic;
SIGNAL \inst1|cache~20_combout\ : std_logic;
SIGNAL \inst1|cache~21_combout\ : std_logic;
SIGNAL \inst1|Selector202~6_combout\ : std_logic;
SIGNAL \inst1|Selector202~3_combout\ : std_logic;
SIGNAL \inst1|Selector202~7_combout\ : std_logic;
SIGNAL \inst1|cache[0].MSI.invalid~q\ : std_logic;
SIGNAL \inst1|MSI~14_combout\ : std_logic;
SIGNAL \inst1|MSI~15_combout\ : std_logic;
SIGNAL \inst1|cache[1].address[2]~0_combout\ : std_logic;
SIGNAL \inst1|cache~23_combout\ : std_logic;
SIGNAL \inst1|cache~22_combout\ : std_logic;
SIGNAL \inst1|cache~24_combout\ : std_logic;
SIGNAL \inst1|Selector240~0_combout\ : std_logic;
SIGNAL \inst1|cache~25_combout\ : std_logic;
SIGNAL \inst1|cache~26_combout\ : std_logic;
SIGNAL \inst1|Selector240~1_combout\ : std_logic;
SIGNAL \inst1|Selector240~2_combout\ : std_logic;
SIGNAL \inst1|Selector240~3_combout\ : std_logic;
SIGNAL \inst1|cache[1].MSI.invalid~q\ : std_logic;
SIGNAL \inst1|indexOfCache~2_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~3_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~10_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~11_combout\ : std_logic;
SIGNAL \inst1|Selector196~1_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~7_combout\ : std_logic;
SIGNAL \inst1|Selector278~0_combout\ : std_logic;
SIGNAL \inst1|cache~6_combout\ : std_logic;
SIGNAL \inst1|cache~7_combout\ : std_logic;
SIGNAL \inst1|cache~8_combout\ : std_logic;
SIGNAL \inst1|cache~9_combout\ : std_logic;
SIGNAL \inst1|cache~11_combout\ : std_logic;
SIGNAL \inst1|Selector278~1_combout\ : std_logic;
SIGNAL \inst1|Selector278~2_combout\ : std_logic;
SIGNAL \inst1|Selector278~3_combout\ : std_logic;
SIGNAL \inst1|cache[2].MSI.invalid~q\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|isInCache~0_combout\ : std_logic;
SIGNAL \inst1|cache_to_cache_req_address_out[2]~0_combout\ : std_logic;
SIGNAL \inst0|process_0~0_combout\ : std_logic;
SIGNAL \inst1|cache_to_cache_req_address_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|process_0~1_combout\ : std_logic;
SIGNAL \inst0|Selector196~1_combout\ : std_logic;
SIGNAL \inst0|cache[3].address[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector316~0_combout\ : std_logic;
SIGNAL \inst0|cache~14_combout\ : std_logic;
SIGNAL \inst0|cache~15_combout\ : std_logic;
SIGNAL \inst0|cache~16_combout\ : std_logic;
SIGNAL \inst0|Selector202~2_combout\ : std_logic;
SIGNAL \inst0|cache~18_combout\ : std_logic;
SIGNAL \inst0|cache~17_combout\ : std_logic;
SIGNAL \inst0|cache~19_combout\ : std_logic;
SIGNAL \inst0|Selector200~0_combout\ : std_logic;
SIGNAL \inst0|Selector316~1_combout\ : std_logic;
SIGNAL \inst0|Selector316~2_combout\ : std_logic;
SIGNAL \inst0|Selector316~3_combout\ : std_logic;
SIGNAL \inst0|cache[3].MSI.invalid~q\ : std_logic;
SIGNAL \inst0|MSI~10_combout\ : std_logic;
SIGNAL \inst0|MSI~11_combout\ : std_logic;
SIGNAL \inst0|cache[3].address[1]~0_combout\ : std_logic;
SIGNAL \inst0|process_0~2_combout\ : std_logic;
SIGNAL \inst0|process_0~3_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~3_combout\ : std_logic;
SIGNAL \inst0|process_0~9_combout\ : std_logic;
SIGNAL \inst0|process_0~10_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~8_combout\ : std_logic;
SIGNAL \inst0|cache~37_combout\ : std_logic;
SIGNAL \inst0|cache~13_combout\ : std_logic;
SIGNAL \inst0|Selector278~1_combout\ : std_logic;
SIGNAL \inst0|Selector278~2_combout\ : std_logic;
SIGNAL \inst0|Selector278~0_combout\ : std_logic;
SIGNAL \inst0|Selector278~3_combout\ : std_logic;
SIGNAL \inst0|cache[2].MSI.invalid~q\ : std_logic;
SIGNAL \inst0|process_0~7_combout\ : std_logic;
SIGNAL \inst0|process_0~8_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~6_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~7_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~9_combout\ : std_logic;
SIGNAL \inst0|Selector197~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].address[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|MSI~12_combout\ : std_logic;
SIGNAL \inst0|cache[0].address[0]~3_combout\ : std_logic;
SIGNAL \inst0|process_0~4_combout\ : std_logic;
SIGNAL \inst0|process_0~5_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~4_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~5_combout\ : std_logic;
SIGNAL \inst0|Selector240~0_combout\ : std_logic;
SIGNAL \inst0|cache~27_combout\ : std_logic;
SIGNAL \inst0|cache~28_combout\ : std_logic;
SIGNAL \inst0|Selector240~1_combout\ : std_logic;
SIGNAL \inst0|Selector240~2_combout\ : std_logic;
SIGNAL \inst0|Selector240~3_combout\ : std_logic;
SIGNAL \inst0|cache[1].MSI.invalid~q\ : std_logic;
SIGNAL \inst0|emptyCacheIndex~0_combout\ : std_logic;
SIGNAL \inst0|evictCounter[0]~1_combout\ : std_logic;
SIGNAL \inst0|evictCounter[1]~0_combout\ : std_logic;
SIGNAL \inst0|MSI~14_combout\ : std_logic;
SIGNAL \inst0|MSI~15_combout\ : std_logic;
SIGNAL \inst0|cache[1].address[0]~0_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~0_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~1_combout\ : std_logic;
SIGNAL \inst0|indexOfCache~2_combout\ : std_logic;
SIGNAL \inst0|Decoder0~0_combout\ : std_logic;
SIGNAL \inst0|cache~29_combout\ : std_logic;
SIGNAL \inst0|Selector82~0_combout\ : std_logic;
SIGNAL \inst0|cache~39_combout\ : std_logic;
SIGNAL \inst0|cache~30_combout\ : std_logic;
SIGNAL \inst0|cache[2].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst0|Selector200~1_combout\ : std_logic;
SIGNAL \inst0|cache[2].MSI.modified~q\ : std_logic;
SIGNAL \inst0|cache~35_combout\ : std_logic;
SIGNAL \inst0|Selector120~0_combout\ : std_logic;
SIGNAL \inst0|cache~36_combout\ : std_logic;
SIGNAL \inst0|cache[3].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].MSI.modified~q\ : std_logic;
SIGNAL \inst0|MSI~13_combout\ : std_logic;
SIGNAL \inst0|cache~20_combout\ : std_logic;
SIGNAL \inst0|cache~21_combout\ : std_logic;
SIGNAL \inst0|cache~22_combout\ : std_logic;
SIGNAL \inst0|Decoder0~1_combout\ : std_logic;
SIGNAL \inst0|cache~33_combout\ : std_logic;
SIGNAL \inst0|Selector6~0_combout\ : std_logic;
SIGNAL \inst0|cache~38_combout\ : std_logic;
SIGNAL \inst0|cache~23_combout\ : std_logic;
SIGNAL \inst0|cache~41_combout\ : std_logic;
SIGNAL \inst0|cache~34_combout\ : std_logic;
SIGNAL \inst0|cache[0].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].MSI.modified~q\ : std_logic;
SIGNAL \inst0|cache~31_combout\ : std_logic;
SIGNAL \inst0|Selector44~0_combout\ : std_logic;
SIGNAL \inst0|cache~40_combout\ : std_logic;
SIGNAL \inst0|cache~32_combout\ : std_logic;
SIGNAL \inst0|cache[1].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].MSI.modified~q\ : std_logic;
SIGNAL \inst0|Mux0~0_combout\ : std_logic;
SIGNAL \inst0|Mux0~1_combout\ : std_logic;
SIGNAL \inst0|process_0~6_combout\ : std_logic;
SIGNAL \inst0|cache_to_cache_resp_out~feeder_combout\ : std_logic;
SIGNAL \inst0|cache_to_cache_resp_out~q\ : std_logic;
SIGNAL \inst1|read_en~0_combout\ : std_logic;
SIGNAL \inst1|sdramState.readResponseSDRAM~q\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|hit~q\ : std_logic;
SIGNAL \inst1|Selector390~0_combout\ : std_logic;
SIGNAL \inst1|CurrentState.requestData~q\ : std_logic;
SIGNAL \inst1|Selector391~0_combout\ : std_logic;
SIGNAL \inst1|cpu_wr_req_out~q\ : std_logic;
SIGNAL \inst0|Selector202~0_combout\ : std_logic;
SIGNAL \inst0|Selector202~5_combout\ : std_logic;
SIGNAL \inst0|Selector202~4_combout\ : std_logic;
SIGNAL \inst0|Selector202~6_combout\ : std_logic;
SIGNAL \inst0|Selector202~3_combout\ : std_logic;
SIGNAL \inst0|Selector202~7_combout\ : std_logic;
SIGNAL \inst0|cache[0].MSI.invalid~q\ : std_logic;
SIGNAL \inst0|process_0~11_combout\ : std_logic;
SIGNAL \inst0|process_0~12_combout\ : std_logic;
SIGNAL \inst0|isInCache~0_combout\ : std_logic;
SIGNAL \inst0|Selector0~0_combout\ : std_logic;
SIGNAL \inst0|hit~q\ : std_logic;
SIGNAL \inst0|Selector390~0_combout\ : std_logic;
SIGNAL \inst0|CurrentState.requestData~q\ : std_logic;
SIGNAL \inst0|cpu_req_addr_out[2]~0_combout\ : std_logic;
SIGNAL \inst0|cache_to_cache_req_address_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|process_0~12_combout\ : std_logic;
SIGNAL \inst1|indexOfCache~6_combout\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|cache~33_combout\ : std_logic;
SIGNAL \inst1|Selector120~0_combout\ : std_logic;
SIGNAL \inst1|cache~35_combout\ : std_logic;
SIGNAL \inst1|cache~34_combout\ : std_logic;
SIGNAL \inst1|cache[3].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst1|Selector200~1_combout\ : std_logic;
SIGNAL \inst1|cache[3].MSI.modified~q\ : std_logic;
SIGNAL \inst1|cache~27_combout\ : std_logic;
SIGNAL \inst1|Selector82~0_combout\ : std_logic;
SIGNAL \inst1|cache~28_combout\ : std_logic;
SIGNAL \inst1|cache[2].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].MSI.modified~q\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|cache~31_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|cache~37_combout\ : std_logic;
SIGNAL \inst1|cache~32_combout\ : std_logic;
SIGNAL \inst1|cache[0].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].MSI.modified~q\ : std_logic;
SIGNAL \inst1|cache~29_combout\ : std_logic;
SIGNAL \inst1|Selector44~0_combout\ : std_logic;
SIGNAL \inst1|cache~36_combout\ : std_logic;
SIGNAL \inst1|cache~30_combout\ : std_logic;
SIGNAL \inst1|cache[1].MSI.modified~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].MSI.modified~q\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~15_combout\ : std_logic;
SIGNAL \inst1|cache_to_cache_resp_out~q\ : std_logic;
SIGNAL \inst0|read_en~0_combout\ : std_logic;
SIGNAL \inst0|read_en~feeder_combout\ : std_logic;
SIGNAL \inst0|read_en~q\ : std_logic;
SIGNAL \inst0|cpu_rd_req_out~feeder_combout\ : std_logic;
SIGNAL \inst0|cpu_rd_req_out~q\ : std_logic;
SIGNAL \inst1|Selector385~0_combout\ : std_logic;
SIGNAL \inst1|Selector385~1_combout\ : std_logic;
SIGNAL \inst1|Sdram_addr[0]~0_combout\ : std_logic;
SIGNAL \inst1|Selector385~2_combout\ : std_logic;
SIGNAL \inst1|Mux33~0_combout\ : std_logic;
SIGNAL \inst1|Mux33~1_combout\ : std_logic;
SIGNAL \inst1|Selector352~3_combout\ : std_logic;
SIGNAL \inst1|Sdram_addr[2]~1_combout\ : std_logic;
SIGNAL \inst1|Sdram_addr[2]~2_combout\ : std_logic;
SIGNAL \inst1|Selector352~4_combout\ : std_logic;
SIGNAL \inst1|Sdram_addr[2]~3_combout\ : std_logic;
SIGNAL \inst1|Selector387~0_combout\ : std_logic;
SIGNAL \inst1|Selector387~1_combout\ : std_logic;
SIGNAL \inst1|Selector387~2_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[10]~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[10]~0_combout\ : std_logic;
SIGNAL \inst0|Selector374~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[2]~1_combout\ : std_logic;
SIGNAL \inst0|Selector374~1_combout\ : std_logic;
SIGNAL \inst0|Mux33~0_combout\ : std_logic;
SIGNAL \inst0|Mux33~1_combout\ : std_logic;
SIGNAL \inst0|Selector352~2_combout\ : std_logic;
SIGNAL \inst0|Selector352~3_combout\ : std_logic;
SIGNAL \inst0|Sdram_data_out[10]~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[0]~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].data[0]~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[10]~0_combout\ : std_logic;
SIGNAL \inst1|Selector374~0_combout\ : std_logic;
SIGNAL \inst1|Selector374~1_combout\ : std_logic;
SIGNAL \inst1|Sdram_data_out[10]~0_combout\ : std_logic;
SIGNAL \inst0|Selector352~4_combout\ : std_logic;
SIGNAL \inst0|write_en~q\ : std_logic;
SIGNAL \inst0|Selector385~0_combout\ : std_logic;
SIGNAL \inst0|Selector385~1_combout\ : std_logic;
SIGNAL \inst0|Sdram_addr[0]~0_combout\ : std_logic;
SIGNAL \inst0|Selector385~2_combout\ : std_logic;
SIGNAL \inst0|Sdram_addr[2]~1_combout\ : std_logic;
SIGNAL \inst0|Sdram_addr[2]~2_combout\ : std_logic;
SIGNAL \inst0|Sdram_addr[2]~3_combout\ : std_logic;
SIGNAL \inst0|Selector387~0_combout\ : std_logic;
SIGNAL \inst0|Selector387~1_combout\ : std_logic;
SIGNAL \inst0|Selector387~2_combout\ : std_logic;
SIGNAL \inst0|Selector386~0_combout\ : std_logic;
SIGNAL \inst0|Selector386~1_combout\ : std_logic;
SIGNAL \inst0|Selector386~2_combout\ : std_logic;
SIGNAL \inst3|Decoder1~0_combout\ : std_logic;
SIGNAL \inst3|memory~1_combout\ : std_logic;
SIGNAL \inst1|Selector386~0_combout\ : std_logic;
SIGNAL \inst1|Selector386~1_combout\ : std_logic;
SIGNAL \inst1|Selector386~2_combout\ : std_logic;
SIGNAL \inst1|Selector352~5_combout\ : std_logic;
SIGNAL \inst1|write_en~q\ : std_logic;
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
SIGNAL \inst3|Decoder0~2_combout\ : std_logic;
SIGNAL \inst3|memory[7][10]~0_combout\ : std_logic;
SIGNAL \inst3|Decoder1~3_combout\ : std_logic;
SIGNAL \inst3|memory[7][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~1_combout\ : std_logic;
SIGNAL \inst3|Decoder1~7_combout\ : std_logic;
SIGNAL \inst3|memory~13_combout\ : std_logic;
SIGNAL \inst3|memory[3][10]~feeder_combout\ : std_logic;
SIGNAL \inst3|Decoder0~5_combout\ : std_logic;
SIGNAL \inst3|memory[3][2]~14_combout\ : std_logic;
SIGNAL \inst3|memory[3][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~4_combout\ : std_logic;
SIGNAL \inst3|memory~7_combout\ : std_logic;
SIGNAL \inst3|Decoder0~3_combout\ : std_logic;
SIGNAL \inst3|memory[2][0]~8_combout\ : std_logic;
SIGNAL \inst3|memory[2][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~6_combout\ : std_logic;
SIGNAL \inst3|memory~11_combout\ : std_logic;
SIGNAL \inst3|memory[0][2]~12_combout\ : std_logic;
SIGNAL \inst3|memory[0][10]~q\ : std_logic;
SIGNAL \inst3|Decoder1~5_combout\ : std_logic;
SIGNAL \inst3|memory~9_combout\ : std_logic;
SIGNAL \inst3|Decoder0~4_combout\ : std_logic;
SIGNAL \inst3|memory[1][10]~10_combout\ : std_logic;
SIGNAL \inst3|memory[1][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~2_combout\ : std_logic;
SIGNAL \inst3|Mux21~3_combout\ : std_logic;
SIGNAL \inst3|Mux21~4_combout\ : std_logic;
SIGNAL \inst1|read_en~q\ : std_logic;
SIGNAL \inst3|data_out2[10]~0_combout\ : std_logic;
SIGNAL \inst1|Selector227~0_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[0]~1_combout\ : std_logic;
SIGNAL \inst1|Mux22~0_combout\ : std_logic;
SIGNAL \inst1|Mux22~1_combout\ : std_logic;
SIGNAL \inst1|cache_to_cache_resp_out_data[10]~0_combout\ : std_logic;
SIGNAL \inst3|Mux53~2_combout\ : std_logic;
SIGNAL \inst3|Mux53~3_combout\ : std_logic;
SIGNAL \inst3|Mux53~0_combout\ : std_logic;
SIGNAL \inst3|Mux53~1_combout\ : std_logic;
SIGNAL \inst3|Mux53~4_combout\ : std_logic;
SIGNAL \inst3|data_out1[10]~0_combout\ : std_logic;
SIGNAL \inst0|Selector227~0_combout\ : std_logic;
SIGNAL \inst0|cache[0].data[10]~0_combout\ : std_logic;
SIGNAL \inst0|Mux22~0_combout\ : std_logic;
SIGNAL \inst0|Mux22~1_combout\ : std_logic;
SIGNAL \inst0|cache_to_cache_resp_out_data[10]~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|dataToSendToCache[0]~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[0].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector382~0_combout\ : std_logic;
SIGNAL \inst0|Selector382~1_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|dataToSendToCache[0]~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector382~0_combout\ : std_logic;
SIGNAL \inst1|Selector382~1_combout\ : std_logic;
SIGNAL \inst3|memory~19_combout\ : std_logic;
SIGNAL \inst3|memory[7][1]~20_combout\ : std_logic;
SIGNAL \inst3|memory[7][2]~q\ : std_logic;
SIGNAL \inst3|memory~15_combout\ : std_logic;
SIGNAL \inst3|memory[5][2]~q\ : std_logic;
SIGNAL \inst3|memory~17_combout\ : std_logic;
SIGNAL \inst3|memory~18_combout\ : std_logic;
SIGNAL \inst3|memory[4][2]~q\ : std_logic;
SIGNAL \inst3|memory~16_combout\ : std_logic;
SIGNAL \inst3|memory[6][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~0_combout\ : std_logic;
SIGNAL \inst3|Mux29~1_combout\ : std_logic;
SIGNAL \inst3|memory~24_combout\ : std_logic;
SIGNAL \inst3|memory[3][2]~q\ : std_logic;
SIGNAL \inst3|memory~23_combout\ : std_logic;
SIGNAL \inst3|memory[0][2]~q\ : std_logic;
SIGNAL \inst3|memory~22_combout\ : std_logic;
SIGNAL \inst3|memory[1][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~2_combout\ : std_logic;
SIGNAL \inst3|memory~21_combout\ : std_logic;
SIGNAL \inst3|memory[2][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~3_combout\ : std_logic;
SIGNAL \inst3|Mux29~4_combout\ : std_logic;
SIGNAL \inst1|Selector235~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|Mux30~1_combout\ : std_logic;
SIGNAL \inst3|Mux61~2_combout\ : std_logic;
SIGNAL \inst3|Mux61~3_combout\ : std_logic;
SIGNAL \inst3|Mux61~0_combout\ : std_logic;
SIGNAL \inst3|Mux61~1_combout\ : std_logic;
SIGNAL \inst3|Mux61~4_combout\ : std_logic;
SIGNAL \inst0|Selector235~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[2]~feeder_combout\ : std_logic;
SIGNAL \inst0|Mux30~0_combout\ : std_logic;
SIGNAL \inst0|Mux30~1_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[0].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector383~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector383~1_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[0].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector383~0_combout\ : std_logic;
SIGNAL \inst1|Selector383~1_combout\ : std_logic;
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
SIGNAL \inst3|memory~27_combout\ : std_logic;
SIGNAL \inst3|memory[4][1]~q\ : std_logic;
SIGNAL \inst3|memory~26_combout\ : std_logic;
SIGNAL \inst3|memory[6][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~0_combout\ : std_logic;
SIGNAL \inst3|memory~25_combout\ : std_logic;
SIGNAL \inst3|memory[5][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~1_combout\ : std_logic;
SIGNAL \inst3|Mux30~4_combout\ : std_logic;
SIGNAL \inst1|Selector236~0_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|Mux62~2_combout\ : std_logic;
SIGNAL \inst3|Mux62~3_combout\ : std_logic;
SIGNAL \inst3|Mux62~0_combout\ : std_logic;
SIGNAL \inst3|Mux62~1_combout\ : std_logic;
SIGNAL \inst3|Mux62~4_combout\ : std_logic;
SIGNAL \inst0|Selector236~0_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[1]~feeder_combout\ : std_logic;
SIGNAL \inst0|Mux31~0_combout\ : std_logic;
SIGNAL \inst0|Mux31~1_combout\ : std_logic;
SIGNAL \inst0|cache[0].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|cache[1].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector384~0_combout\ : std_logic;
SIGNAL \inst0|cache[2].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|Selector384~1_combout\ : std_logic;
SIGNAL \inst1|cache[1].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector384~0_combout\ : std_logic;
SIGNAL \inst1|cache[2].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|cache[3].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector384~1_combout\ : std_logic;
SIGNAL \inst3|memory~37_combout\ : std_logic;
SIGNAL \inst3|memory[7][0]~q\ : std_logic;
SIGNAL \inst3|memory~34_combout\ : std_logic;
SIGNAL \inst3|memory[5][0]~q\ : std_logic;
SIGNAL \inst3|memory~36_combout\ : std_logic;
SIGNAL \inst3|memory[4][0]~q\ : std_logic;
SIGNAL \inst3|memory~35_combout\ : std_logic;
SIGNAL \inst3|memory[6][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~0_combout\ : std_logic;
SIGNAL \inst3|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|memory~38_combout\ : std_logic;
SIGNAL \inst3|memory[2][0]~q\ : std_logic;
SIGNAL \inst3|memory~42_combout\ : std_logic;
SIGNAL \inst3|memory[3][0]~q\ : std_logic;
SIGNAL \inst3|memory~39_combout\ : std_logic;
SIGNAL \inst3|memory~40_combout\ : std_logic;
SIGNAL \inst3|memory[1][0]~q\ : std_logic;
SIGNAL \inst3|memory~41_combout\ : std_logic;
SIGNAL \inst3|memory[0][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~2_combout\ : std_logic;
SIGNAL \inst3|Mux31~3_combout\ : std_logic;
SIGNAL \inst3|Mux31~4_combout\ : std_logic;
SIGNAL \inst1|Selector237~0_combout\ : std_logic;
SIGNAL \inst1|cache[0].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux32~0_combout\ : std_logic;
SIGNAL \inst1|Mux32~1_combout\ : std_logic;
SIGNAL \inst3|Mux63~2_combout\ : std_logic;
SIGNAL \inst3|Mux63~3_combout\ : std_logic;
SIGNAL \inst3|Mux63~0_combout\ : std_logic;
SIGNAL \inst3|Mux63~1_combout\ : std_logic;
SIGNAL \inst3|Mux63~4_combout\ : std_logic;
SIGNAL \inst0|Selector237~0_combout\ : std_logic;
SIGNAL \inst0|cache[3].data[0]~feeder_combout\ : std_logic;
SIGNAL \inst0|Mux32~0_combout\ : std_logic;
SIGNAL \inst0|Mux32~1_combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst1|cpu_rd_req_out~q\ : std_logic;
SIGNAL \inst0|cache[1].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[0].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[2].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|data_out2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[0].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[3].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[3].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[0].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[2].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|wantedAddressCache\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cache[1].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache_to_cache_req_address_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache_to_cache_resp_out_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cpu_req_addr_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|dataToSendToCache\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|Sdram_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|Sdram_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|Sdram_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|Sdram_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cache[3].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cache_to_cache_req_address_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cache_to_cache_resp_out_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|cpu_req_addr_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[0].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|data_out1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|cache[2].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[3].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|cache[1].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|indexOfCache\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|cache[1].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst0|evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|cache[2].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|indexOfCache\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst0|dataToSendToCache\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|wantedAddressCache\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst0|ALT_INV_cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

r_en1 <= ww_r_en1;
ww_clk <= clk;
ww_rst <= rst;
ww_cpu0_prio <= cpu0_prio;
cpu1_wr_req_out <= ww_cpu1_wr_req_out;
ww_cpu1_prio1 <= cpu1_prio1;
cpu0_wr_req_out <= ww_cpu0_wr_req_out;
cpu0_rd_req_out <= ww_cpu0_rd_req_out;
cpu0_cache_to_cache_response_out_rdy <= ww_cpu0_cache_to_cache_response_out_rdy;
cpu0_cache_to_cache_response <= ww_cpu0_cache_to_cache_response;
cpu0_cache_to_cache_req <= ww_cpu0_cache_to_cache_req;
cpu0_cache_to_cache_req_addr <= ww_cpu0_cache_to_cache_req_addr;
cpu0_cache_to_cache_resp_data <= ww_cpu0_cache_to_cache_resp_data;
cpu0_req_addr_out <= ww_cpu0_req_addr_out;
sdramDataOut2 <= ww_sdramDataOut2;
wr_en1 <= ww_wr_en1;
wr_en2 <= ww_wr_en2;
ready1 <= ww_ready1;
ready2 <= ww_ready2;
r_en2 <= ww_r_en2;
sdram_addr1 <= ww_sdram_addr1;
sdram_addr2 <= ww_sdram_addr2;
sdram_data_out1 <= ww_sdram_data_out1;
sdram_data_out2 <= ww_sdram_data_out2;
ww_cpu1_wantedAddr <= cpu1_wantedAddr;
cpu1_rd_req_out <= ww_cpu1_rd_req_out;
cpu1_cache_to_cache_response_out_ready <= ww_cpu1_cache_to_cache_response_out_ready;
cpu1_cache_to_cache_response <= ww_cpu1_cache_to_cache_response;
cpu1_cache_to_cache_req <= ww_cpu1_cache_to_cache_req;
cpu1_cache_to_cache_req_addr <= ww_cpu1_cache_to_cache_req_addr;
cpu1_cache_to_cache_resp_data <= ww_cpu1_cache_to_cache_resp_data;
cpu1_req_addr_out <= ww_cpu1_req_addr_out;
sdramDataOut1 <= ww_sdramDataOut1;
ww_cpu0_wantedAddr <= cpu0_wantedAddr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst1|ALT_INV_cpuCacheOperation.read_cache~q\ <= NOT \inst1|cpuCacheOperation.read_cache~q\;
\inst0|ALT_INV_cpuCacheOperation.read_cache~q\ <= NOT \inst0|cpuCacheOperation.read_cache~q\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N9
\r_en1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|read_en~q\,
	devoe => ww_devoe,
	o => \r_en1~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\cpu1_wr_req_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpu_wr_req_out~q\,
	devoe => ww_devoe,
	o => \cpu1_wr_req_out~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\cpu0_wr_req_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cpu_wr_req_out~q\,
	devoe => ww_devoe,
	o => \cpu0_wr_req_out~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\cpu0_rd_req_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cpu_rd_req_out~q\,
	devoe => ww_devoe,
	o => \cpu0_rd_req_out~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\cpu0_cache_to_cache_response_out_rdy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_response_out_rdy~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\cpu0_cache_to_cache_response~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out~q\,
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_response~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\cpu0_cache_to_cache_req~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_req~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\cpu0_cache_to_cache_req_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_req_address_out\(2),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_req_addr[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\cpu0_cache_to_cache_req_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_req_address_out\(1),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_req_addr[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\cpu0_cache_to_cache_req_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_req_address_out\(0),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_req_addr[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\cpu0_cache_to_cache_resp_data[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[31]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\cpu0_cache_to_cache_resp_data[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[30]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\cpu0_cache_to_cache_resp_data[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[29]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\cpu0_cache_to_cache_resp_data[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[28]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\cpu0_cache_to_cache_resp_data[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[27]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\cpu0_cache_to_cache_resp_data[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[26]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\cpu0_cache_to_cache_resp_data[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[25]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\cpu0_cache_to_cache_resp_data[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[24]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\cpu0_cache_to_cache_resp_data[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[23]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\cpu0_cache_to_cache_resp_data[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[22]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\cpu0_cache_to_cache_resp_data[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[21]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\cpu0_cache_to_cache_resp_data[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[20]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\cpu0_cache_to_cache_resp_data[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[19]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\cpu0_cache_to_cache_resp_data[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[18]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\cpu0_cache_to_cache_resp_data[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[17]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\cpu0_cache_to_cache_resp_data[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[16]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\cpu0_cache_to_cache_resp_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[15]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\cpu0_cache_to_cache_resp_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\cpu0_cache_to_cache_resp_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[13]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\cpu0_cache_to_cache_resp_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[12]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\cpu0_cache_to_cache_resp_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[11]~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\cpu0_cache_to_cache_resp_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\cpu0_cache_to_cache_resp_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[9]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\cpu0_cache_to_cache_resp_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[8]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\cpu0_cache_to_cache_resp_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\cpu0_cache_to_cache_resp_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\cpu0_cache_to_cache_resp_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\cpu0_cache_to_cache_resp_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\cpu0_cache_to_cache_resp_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\cpu0_cache_to_cache_resp_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(2),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\cpu0_cache_to_cache_resp_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(1),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\cpu0_cache_to_cache_resp_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cache_to_cache_resp_out_data\(0),
	devoe => ww_devoe,
	o => \cpu0_cache_to_cache_resp_data[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\cpu0_req_addr_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cpu_req_addr_out\(2),
	devoe => ww_devoe,
	o => \cpu0_req_addr_out[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\cpu0_req_addr_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cpu_req_addr_out\(1),
	devoe => ww_devoe,
	o => \cpu0_req_addr_out[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\cpu0_req_addr_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|cpu_req_addr_out\(0),
	devoe => ww_devoe,
	o => \cpu0_req_addr_out[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\sdramDataOut2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[31]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\sdramDataOut2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[30]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\sdramDataOut2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[29]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\sdramDataOut2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[28]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\sdramDataOut2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[27]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\sdramDataOut2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[26]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\sdramDataOut2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[25]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\sdramDataOut2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[24]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\sdramDataOut2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[23]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\sdramDataOut2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[22]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\sdramDataOut2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[21]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\sdramDataOut2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[20]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\sdramDataOut2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[19]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\sdramDataOut2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[18]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\sdramDataOut2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[17]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\sdramDataOut2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[16]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\sdramDataOut2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[15]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\sdramDataOut2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[14]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\sdramDataOut2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[13]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\sdramDataOut2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[12]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\sdramDataOut2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[11]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\sdramDataOut2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[10]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\sdramDataOut2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[9]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\sdramDataOut2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[8]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\sdramDataOut2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\sdramDataOut2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[6]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\sdramDataOut2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\sdramDataOut2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\sdramDataOut2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(10),
	devoe => ww_devoe,
	o => \sdramDataOut2[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\sdramDataOut2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(2),
	devoe => ww_devoe,
	o => \sdramDataOut2[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\sdramDataOut2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(1),
	devoe => ww_devoe,
	o => \sdramDataOut2[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sdramDataOut2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out2\(0),
	devoe => ww_devoe,
	o => \sdramDataOut2[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\wr_en1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|write_en~q\,
	devoe => ww_devoe,
	o => \wr_en1~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\wr_en2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|write_en~q\,
	devoe => ww_devoe,
	o => \wr_en2~output_o\);

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X0_Y3_N2
\r_en2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|read_en~q\,
	devoe => ww_devoe,
	o => \r_en2~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\sdram_addr1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_addr\(2),
	devoe => ww_devoe,
	o => \sdram_addr1[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\sdram_addr1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_addr\(1),
	devoe => ww_devoe,
	o => \sdram_addr1[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\sdram_addr1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_addr\(0),
	devoe => ww_devoe,
	o => \sdram_addr1[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\sdram_addr2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_addr\(2),
	devoe => ww_devoe,
	o => \sdram_addr2[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\sdram_addr2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_addr\(1),
	devoe => ww_devoe,
	o => \sdram_addr2[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\sdram_addr2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_addr\(0),
	devoe => ww_devoe,
	o => \sdram_addr2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\sdram_data_out1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[31]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\sdram_data_out1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[30]~output_o\);

-- Location: IOOBUF_X41_Y27_N2
\sdram_data_out1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[29]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\sdram_data_out1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[28]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\sdram_data_out1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[27]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\sdram_data_out1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[26]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\sdram_data_out1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[25]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\sdram_data_out1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[24]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\sdram_data_out1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[23]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\sdram_data_out1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[22]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\sdram_data_out1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[21]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\sdram_data_out1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[20]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\sdram_data_out1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[19]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\sdram_data_out1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[18]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\sdram_data_out1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[17]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\sdram_data_out1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[16]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\sdram_data_out1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[15]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\sdram_data_out1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[14]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\sdram_data_out1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\sdram_data_out1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[12]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\sdram_data_out1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[11]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\sdram_data_out1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[10]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\sdram_data_out1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\sdram_data_out1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[8]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\sdram_data_out1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\sdram_data_out1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\sdram_data_out1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[5]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\sdram_data_out1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\sdram_data_out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out1[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\sdram_data_out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(2),
	devoe => ww_devoe,
	o => \sdram_data_out1[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\sdram_data_out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(1),
	devoe => ww_devoe,
	o => \sdram_data_out1[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\sdram_data_out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|Sdram_data_out\(0),
	devoe => ww_devoe,
	o => \sdram_data_out1[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\sdram_data_out2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[31]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\sdram_data_out2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[30]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\sdram_data_out2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[29]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\sdram_data_out2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[28]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\sdram_data_out2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[27]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\sdram_data_out2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[26]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\sdram_data_out2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[25]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\sdram_data_out2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[24]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\sdram_data_out2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[23]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\sdram_data_out2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[22]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\sdram_data_out2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[21]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\sdram_data_out2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[20]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\sdram_data_out2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[19]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\sdram_data_out2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[18]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\sdram_data_out2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[17]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\sdram_data_out2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[16]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\sdram_data_out2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[15]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\sdram_data_out2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[14]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\sdram_data_out2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[13]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\sdram_data_out2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[12]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\sdram_data_out2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[11]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\sdram_data_out2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[10]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\sdram_data_out2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[9]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\sdram_data_out2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[8]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\sdram_data_out2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\sdram_data_out2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\sdram_data_out2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[5]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\sdram_data_out2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\sdram_data_out2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => \sdram_data_out2[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\sdram_data_out2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(2),
	devoe => ww_devoe,
	o => \sdram_data_out2[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\sdram_data_out2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(1),
	devoe => ww_devoe,
	o => \sdram_data_out2[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\sdram_data_out2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sdram_data_out\(0),
	devoe => ww_devoe,
	o => \sdram_data_out2[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\cpu1_rd_req_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpu_rd_req_out~q\,
	devoe => ww_devoe,
	o => \cpu1_rd_req_out~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\cpu1_cache_to_cache_response_out_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_response_out_ready~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\cpu1_cache_to_cache_response~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out~q\,
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_response~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\cpu1_cache_to_cache_req~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_req~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\cpu1_cache_to_cache_req_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_req_address_out\(2),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_req_addr[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\cpu1_cache_to_cache_req_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_req_address_out\(1),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_req_addr[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\cpu1_cache_to_cache_req_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_req_address_out\(0),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_req_addr[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\cpu1_cache_to_cache_resp_data[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[31]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\cpu1_cache_to_cache_resp_data[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[30]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\cpu1_cache_to_cache_resp_data[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[29]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\cpu1_cache_to_cache_resp_data[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[28]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\cpu1_cache_to_cache_resp_data[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[27]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\cpu1_cache_to_cache_resp_data[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[26]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\cpu1_cache_to_cache_resp_data[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[25]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\cpu1_cache_to_cache_resp_data[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\cpu1_cache_to_cache_resp_data[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[23]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\cpu1_cache_to_cache_resp_data[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[22]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\cpu1_cache_to_cache_resp_data[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[21]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\cpu1_cache_to_cache_resp_data[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[20]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\cpu1_cache_to_cache_resp_data[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[19]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\cpu1_cache_to_cache_resp_data[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[18]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\cpu1_cache_to_cache_resp_data[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[17]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\cpu1_cache_to_cache_resp_data[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[16]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\cpu1_cache_to_cache_resp_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[15]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\cpu1_cache_to_cache_resp_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[14]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\cpu1_cache_to_cache_resp_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[13]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\cpu1_cache_to_cache_resp_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[12]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\cpu1_cache_to_cache_resp_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[11]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\cpu1_cache_to_cache_resp_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[10]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\cpu1_cache_to_cache_resp_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[9]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\cpu1_cache_to_cache_resp_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[8]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\cpu1_cache_to_cache_resp_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\cpu1_cache_to_cache_resp_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\cpu1_cache_to_cache_resp_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[5]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\cpu1_cache_to_cache_resp_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\cpu1_cache_to_cache_resp_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(10),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\cpu1_cache_to_cache_resp_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(2),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\cpu1_cache_to_cache_resp_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(1),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\cpu1_cache_to_cache_resp_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cache_to_cache_resp_out_data\(0),
	devoe => ww_devoe,
	o => \cpu1_cache_to_cache_resp_data[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\cpu1_req_addr_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpu_req_addr_out\(2),
	devoe => ww_devoe,
	o => \cpu1_req_addr_out[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\cpu1_req_addr_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpu_req_addr_out\(1),
	devoe => ww_devoe,
	o => \cpu1_req_addr_out[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\cpu1_req_addr_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpu_req_addr_out\(0),
	devoe => ww_devoe,
	o => \cpu1_req_addr_out[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\sdramDataOut1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[31]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\sdramDataOut1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[30]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\sdramDataOut1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[29]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\sdramDataOut1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[28]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\sdramDataOut1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[27]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\sdramDataOut1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[26]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\sdramDataOut1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\sdramDataOut1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[24]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\sdramDataOut1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[23]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\sdramDataOut1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[22]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\sdramDataOut1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[21]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\sdramDataOut1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[20]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\sdramDataOut1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[19]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\sdramDataOut1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[18]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\sdramDataOut1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[17]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\sdramDataOut1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[16]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\sdramDataOut1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[15]~output_o\);

-- Location: IOOBUF_X41_Y27_N9
\sdramDataOut1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\sdramDataOut1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\sdramDataOut1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[12]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\sdramDataOut1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[11]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\sdramDataOut1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[10]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\sdramDataOut1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\sdramDataOut1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[8]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\sdramDataOut1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\sdramDataOut1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\sdramDataOut1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\sdramDataOut1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\sdramDataOut1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(10),
	devoe => ww_devoe,
	o => \sdramDataOut1[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\sdramDataOut1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(2),
	devoe => ww_devoe,
	o => \sdramDataOut1[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\sdramDataOut1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(1),
	devoe => ww_devoe,
	o => \sdramDataOut1[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\sdramDataOut1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out1\(0),
	devoe => ww_devoe,
	o => \sdramDataOut1[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N8
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

-- Location: IOIBUF_X7_Y0_N22
\cpu0_wantedAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_wantedAddr(2),
	o => \cpu0_wantedAddr[2]~input_o\);

-- Location: LCCOMB_X6_Y11_N6
\inst0|sdramState.readResponseSDRAM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|sdramState.readResponseSDRAM~feeder_combout\ = \inst0|read_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|read_en~0_combout\,
	combout => \inst0|sdramState.readResponseSDRAM~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N15
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

-- Location: LCCOMB_X1_Y10_N0
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

-- Location: FF_X1_Y10_N1
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

-- Location: LCCOMB_X4_Y11_N2
\inst0|Selector391~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector391~0_combout\ = ((\inst0|CurrentState.requestData~q\ & \inst0|hit~q\)) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|CurrentState.requestData~q\,
	datac => \inst0|CurrentState.initial~q\,
	datad => \inst0|hit~q\,
	combout => \inst0|Selector391~0_combout\);

-- Location: FF_X4_Y11_N3
\inst0|CurrentState.writeData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector391~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|CurrentState.writeData~q\);

-- Location: LCCOMB_X4_Y11_N14
\inst0|Selector393~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector393~0_combout\ = (\inst0|CurrentState.writeData~q\) # ((!\inst0|hit~q\ & (\inst0|cpuCacheOperation.read_cache~q\ & \inst0|CurrentState.requestData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.writeData~q\,
	datab => \inst0|hit~q\,
	datac => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|CurrentState.requestData~q\,
	combout => \inst0|Selector393~0_combout\);

-- Location: FF_X4_Y11_N15
\inst0|cpuCacheOperation.read_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector393~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpuCacheOperation.read_cache~q\);

-- Location: FF_X6_Y11_N7
\inst0|sdramState.readResponseSDRAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|sdramState.readResponseSDRAM~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|sdramState.readResponseSDRAM~q\);

-- Location: LCCOMB_X6_Y11_N20
\inst0|sdramState.checkCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|sdramState.checkCache~0_combout\ = !\inst0|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector0~0_combout\,
	combout => \inst0|sdramState.checkCache~0_combout\);

-- Location: FF_X6_Y11_N21
\inst0|sdramState.checkCache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|sdramState.checkCache~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|sdramState.checkCache~q\);

-- Location: IOIBUF_X9_Y0_N8
\cpu0_prio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_prio,
	o => \cpu0_prio~input_o\);

-- Location: FF_X1_Y10_N15
\inst1|CurrentState.writeData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector391~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|CurrentState.writeData~q\);

-- Location: LCCOMB_X8_Y9_N28
\inst1|sdramState.checkCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdramState.checkCache~0_combout\ = !\inst1|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector0~0_combout\,
	combout => \inst1|sdramState.checkCache~0_combout\);

-- Location: LCCOMB_X1_Y10_N8
\inst1|Selector393~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector393~0_combout\ = (\inst1|CurrentState.writeData~q\) # ((\inst1|CurrentState.requestData~q\ & (\inst1|cpuCacheOperation.read_cache~q\ & !\inst1|hit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|CurrentState.requestData~q\,
	datab => \inst1|CurrentState.writeData~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|hit~q\,
	combout => \inst1|Selector393~0_combout\);

-- Location: FF_X1_Y10_N9
\inst1|cpuCacheOperation.read_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector393~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpuCacheOperation.read_cache~q\);

-- Location: FF_X8_Y9_N29
\inst1|sdramState.checkCache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|sdramState.checkCache~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdramState.checkCache~q\);

-- Location: IOIBUF_X0_Y10_N22
\cpu0_wantedAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_wantedAddr(0),
	o => \cpu0_wantedAddr[0]~input_o\);

-- Location: FF_X7_Y10_N9
\inst0|cpu_req_addr_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpu0_wantedAddr[0]~input_o\,
	sload => VCC,
	ena => \inst0|cpu_req_addr_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpu_req_addr_out\(0));

-- Location: FF_X11_Y10_N5
\inst0|wantedAddressCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|cpu_req_addr_out\(0),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressCache\(0));

-- Location: LCCOMB_X4_Y11_N4
\inst0|Selector394~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector394~0_combout\ = ((\inst0|CurrentState.requestData~q\ & ((\inst0|hit~q\) # (\inst0|cpuCacheOperation.write_cache~q\)))) # (!\inst0|CurrentState.initial~q\)

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
	combout => \inst0|Selector394~0_combout\);

-- Location: FF_X4_Y11_N5
\inst0|cpuCacheOperation.write_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector394~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpuCacheOperation.write_cache~q\);

-- Location: LCCOMB_X11_Y10_N4
\inst0|Selector205~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector205~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|cpu_req_addr_out\(0))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|wantedAddressCache\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpu_req_addr_out\(0),
	datac => \inst0|wantedAddressCache\(0),
	datad => \inst0|cpuCacheOperation.write_cache~q\,
	combout => \inst0|Selector205~0_combout\);

-- Location: LCCOMB_X10_Y10_N10
\inst0|cache[1].address[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].address[0]~feeder_combout\ = \inst0|Selector205~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector205~0_combout\,
	combout => \inst0|cache[1].address[0]~feeder_combout\);

-- Location: LCCOMB_X8_Y10_N28
\inst0|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~13_combout\ = (!\cpu0_prio~input_o\ & \inst1|cpu_wr_req_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu0_prio~input_o\,
	datad => \inst1|cpu_wr_req_out~q\,
	combout => \inst0|process_0~13_combout\);

-- Location: IOIBUF_X0_Y10_N1
\cpu0_wantedAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu0_wantedAddr(1),
	o => \cpu0_wantedAddr[1]~input_o\);

-- Location: FF_X7_Y10_N7
\inst0|cpu_req_addr_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpu0_wantedAddr[1]~input_o\,
	sload => VCC,
	ena => \inst0|cpu_req_addr_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpu_req_addr_out\(1));

-- Location: IOIBUF_X0_Y12_N1
\cpu1_wantedAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_wantedAddr(0),
	o => \cpu1_wantedAddr[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N16
\inst1|cpu_req_addr_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpu_req_addr_out[2]~0_combout\ = (!\rst~input_o\ & ((\inst1|hit~q\) # (!\inst1|CurrentState.requestData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst1|CurrentState.requestData~q\,
	datad => \inst1|hit~q\,
	combout => \inst1|cpu_req_addr_out[2]~0_combout\);

-- Location: FF_X3_Y10_N29
\inst1|cpu_req_addr_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpu1_wantedAddr[0]~input_o\,
	sload => VCC,
	ena => \inst1|cpu_req_addr_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpu_req_addr_out\(0));

-- Location: IOIBUF_X0_Y13_N1
\cpu1_wantedAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_wantedAddr(1),
	o => \cpu1_wantedAddr[1]~input_o\);

-- Location: FF_X3_Y10_N19
\inst1|cpu_req_addr_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpu1_wantedAddr[1]~input_o\,
	sload => VCC,
	ena => \inst1|cpu_req_addr_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpu_req_addr_out\(1));

-- Location: LCCOMB_X8_Y10_N8
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst0|cpu_req_addr_out\(0) & (\inst1|cpu_req_addr_out\(0) & (\inst0|cpu_req_addr_out\(1) $ (!\inst1|cpu_req_addr_out\(1))))) # (!\inst0|cpu_req_addr_out\(0) & (!\inst1|cpu_req_addr_out\(0) & (\inst0|cpu_req_addr_out\(1) $ 
-- (!\inst1|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpu_req_addr_out\(0),
	datab => \inst0|cpu_req_addr_out\(1),
	datac => \inst1|cpu_req_addr_out\(0),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst1|process_0~0_combout\);

-- Location: IOIBUF_X0_Y13_N22
\cpu1_wantedAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_wantedAddr(2),
	o => \cpu1_wantedAddr[2]~input_o\);

-- Location: FF_X3_Y10_N1
\inst1|cpu_req_addr_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpu1_wantedAddr[2]~input_o\,
	sload => VCC,
	ena => \inst1|cpu_req_addr_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpu_req_addr_out\(2));

-- Location: LCCOMB_X8_Y10_N6
\inst0|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~14_combout\ = (\inst0|process_0~13_combout\ & (\inst1|process_0~0_combout\ & (\inst0|cpu_req_addr_out\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~13_combout\,
	datab => \inst0|cpu_req_addr_out\(2),
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|cpu_req_addr_out\(2),
	combout => \inst0|process_0~14_combout\);

-- Location: LCCOMB_X6_Y11_N28
\inst0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector3~0_combout\ = (\inst1|cache_to_cache_resp_out~q\ & ((\inst0|sdramState.readResponseCACHE~q\) # ((!\inst0|isInCache~0_combout\ & !\inst0|sdramState.checkCache~q\)))) # (!\inst1|cache_to_cache_resp_out~q\ & (!\inst0|isInCache~0_combout\ & 
-- ((!\inst0|sdramState.checkCache~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache_to_cache_resp_out~q\,
	datab => \inst0|isInCache~0_combout\,
	datac => \inst0|sdramState.readResponseCACHE~q\,
	datad => \inst0|sdramState.checkCache~q\,
	combout => \inst0|Selector3~0_combout\);

-- Location: FF_X6_Y11_N29
\inst0|sdramState.readResponseCACHE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst0|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|sdramState.readResponseCACHE~q\);

-- Location: LCCOMB_X6_Y11_N8
\inst0|cache[1].data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[2]~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|sdramState.readResponseSDRAM~q\) # ((\inst0|sdramState.readResponseCACHE~q\ & \inst1|cache_to_cache_resp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst0|sdramState.readResponseCACHE~q\,
	datac => \inst1|cache_to_cache_resp_out~q\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|cache[1].data[2]~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst0|cache[0].address[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].address[0]~2_combout\ = (!\inst0|cache[1].data[2]~0_combout\ & ((\inst0|process_0~14_combout\) # ((\inst0|isInCache~0_combout\) # (!\inst0|cpuCacheOperation.write_cache~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~14_combout\,
	datab => \inst0|isInCache~0_combout\,
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|cache[1].data[2]~0_combout\,
	combout => \inst0|cache[0].address[0]~2_combout\);

-- Location: FF_X11_Y10_N21
\inst0|wantedAddressCache[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|cpu_req_addr_out\(2),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressCache\(2));

-- Location: LCCOMB_X11_Y10_N20
\inst0|Selector203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector203~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|cpu_req_addr_out\(2))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|wantedAddressCache\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpu_req_addr_out\(2),
	datac => \inst0|wantedAddressCache\(2),
	datad => \inst0|cpuCacheOperation.write_cache~q\,
	combout => \inst0|Selector203~0_combout\);

-- Location: FF_X10_Y10_N5
\inst0|cache[1].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector203~0_combout\,
	sload => VCC,
	ena => \inst0|cache[1].address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].address\(2));

-- Location: LCCOMB_X10_Y10_N26
\inst0|cache~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~25_combout\ = (\inst0|cache[1].MSI.invalid~q\ & (\inst1|cpu_wr_req_out~q\ & (\inst1|cpu_req_addr_out\(2) $ (!\inst0|cache[1].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].MSI.invalid~q\,
	datab => \inst1|cpu_req_addr_out\(2),
	datac => \inst1|cpu_wr_req_out~q\,
	datad => \inst0|cache[1].address\(2),
	combout => \inst0|cache~25_combout\);

-- Location: FF_X11_Y10_N23
\inst0|wantedAddressCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|cpu_req_addr_out\(1),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|wantedAddressCache\(1));

-- Location: LCCOMB_X11_Y10_N22
\inst0|Selector204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector204~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|cpu_req_addr_out\(1))) # (!\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|wantedAddressCache\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpu_req_addr_out\(1),
	datac => \inst0|wantedAddressCache\(1),
	datad => \inst0|cpuCacheOperation.write_cache~q\,
	combout => \inst0|Selector204~0_combout\);

-- Location: LCCOMB_X10_Y10_N16
\inst0|cache[1].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].address[1]~feeder_combout\ = \inst0|Selector204~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector204~0_combout\,
	combout => \inst0|cache[1].address[1]~feeder_combout\);

-- Location: FF_X10_Y10_N17
\inst0|cache[1].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].address[1]~feeder_combout\,
	ena => \inst0|cache[1].address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].address\(1));

-- Location: LCCOMB_X10_Y10_N12
\inst0|cache~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~24_combout\ = (\inst0|cache[1].address\(0) & (\inst1|cpu_req_addr_out\(0) & (\inst0|cache[1].address\(1) $ (!\inst1|cpu_req_addr_out\(1))))) # (!\inst0|cache[1].address\(0) & (!\inst1|cpu_req_addr_out\(0) & (\inst0|cache[1].address\(1) $ 
-- (!\inst1|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].address\(0),
	datab => \inst0|cache[1].address\(1),
	datac => \inst1|cpu_req_addr_out\(0),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst0|cache~24_combout\);

-- Location: LCCOMB_X10_Y10_N0
\inst0|cache~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~26_combout\ = (\inst0|cache~25_combout\ & \inst0|cache~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cache~25_combout\,
	datad => \inst0|cache~24_combout\,
	combout => \inst0|cache~26_combout\);

-- Location: LCCOMB_X4_Y11_N10
\inst0|cpuCacheOperation.none~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cpuCacheOperation.none~0_combout\ = (\inst0|hit~q\) # ((\inst0|cpuCacheOperation.none~q\) # (!\inst0|CurrentState.requestData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|hit~q\,
	datac => \inst0|cpuCacheOperation.none~q\,
	datad => \inst0|CurrentState.requestData~q\,
	combout => \inst0|cpuCacheOperation.none~0_combout\);

-- Location: FF_X4_Y11_N11
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

-- Location: LCCOMB_X4_Y11_N8
\inst0|Selector196~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector196~0_combout\ = (\inst0|cpuCacheOperation.none~q\ & ((!\inst0|cpuCacheOperation.read_cache~q\) # (!\inst0|sdramState.checkCache~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|sdramState.checkCache~q\,
	datac => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|cpuCacheOperation.none~q\,
	combout => \inst0|Selector196~0_combout\);

-- Location: LCCOMB_X7_Y11_N8
\inst0|MSI~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~8_combout\ = (\inst0|cache[0].MSI.invalid~q\ & (!\inst0|cache[2].MSI.invalid~q\ & \inst0|cache[1].MSI.invalid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].MSI.invalid~q\,
	datab => \inst0|cache[2].MSI.invalid~q\,
	datad => \inst0|cache[1].MSI.invalid~q\,
	combout => \inst0|MSI~8_combout\);

-- Location: LCCOMB_X8_Y11_N30
\inst0|MSI~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~9_combout\ = (\inst0|MSI~8_combout\) # ((\inst0|evictCounter\(1) & (\inst0|emptyCacheIndex~0_combout\ & !\inst0|evictCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|emptyCacheIndex~0_combout\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|MSI~8_combout\,
	combout => \inst0|MSI~9_combout\);

-- Location: LCCOMB_X8_Y10_N10
\inst0|cache[2].address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].address[0]~0_combout\ = (\inst0|MSI~9_combout\ & !\inst0|cache[0].address[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|MSI~9_combout\,
	datad => \inst0|cache[0].address[0]~2_combout\,
	combout => \inst0|cache[2].address[0]~0_combout\);

-- Location: FF_X8_Y10_N21
\inst0|cache[2].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector203~0_combout\,
	sload => VCC,
	ena => \inst0|cache[2].address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].address\(2));

-- Location: LCCOMB_X8_Y10_N12
\inst0|cache~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~11_combout\ = (\inst0|cache[2].MSI.invalid~q\ & (\inst1|cpu_wr_req_out~q\ & (\inst0|cache[2].address\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].MSI.invalid~q\,
	datab => \inst0|cache[2].address\(2),
	datac => \inst1|cpu_wr_req_out~q\,
	datad => \inst1|cpu_req_addr_out\(2),
	combout => \inst0|cache~11_combout\);

-- Location: FF_X8_Y10_N29
\inst0|cache[2].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector204~0_combout\,
	sload => VCC,
	ena => \inst0|cache[2].address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].address\(1));

-- Location: FF_X8_Y10_N31
\inst0|cache[2].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector205~0_combout\,
	sload => VCC,
	ena => \inst0|cache[2].address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].address\(0));

-- Location: LCCOMB_X8_Y10_N18
\inst0|cache~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~10_combout\ = (\inst1|cpu_req_addr_out\(0) & (\inst0|cache[2].address\(0) & (\inst0|cache[2].address\(1) $ (!\inst1|cpu_req_addr_out\(1))))) # (!\inst1|cpu_req_addr_out\(0) & (!\inst0|cache[2].address\(0) & (\inst0|cache[2].address\(1) $ 
-- (!\inst1|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(0),
	datab => \inst0|cache[2].address\(1),
	datac => \inst0|cache[2].address\(0),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst0|cache~10_combout\);

-- Location: LCCOMB_X8_Y10_N24
\inst0|cache~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~12_combout\ = (\inst0|cache~11_combout\ & \inst0|cache~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cache~11_combout\,
	datad => \inst0|cache~10_combout\,
	combout => \inst0|cache~12_combout\);

-- Location: LCCOMB_X7_Y10_N6
\inst0|indexOfCache~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~10_combout\ = (\inst0|indexOfCache~9_combout\ & ((\inst0|isInCache~0_combout\) # (\inst0|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isInCache~0_combout\,
	datab => \inst0|indexOfCache~5_combout\,
	datad => \inst0|indexOfCache~9_combout\,
	combout => \inst0|indexOfCache~10_combout\);

-- Location: LCCOMB_X7_Y11_N6
\inst0|Selector202~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~1_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (!\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|process_0~14_combout\ & \inst0|isInCache~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|process_0~14_combout\,
	datad => \inst0|isInCache~0_combout\,
	combout => \inst0|Selector202~1_combout\);

-- Location: LCCOMB_X10_Y10_N22
\inst1|cache_to_cache_req_address_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache_to_cache_req_address_out[1]~feeder_combout\ = \inst1|cpu_req_addr_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst1|cache_to_cache_req_address_out[1]~feeder_combout\);

-- Location: FF_X2_Y10_N9
\inst0|cpu_wr_req_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector391~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpu_wr_req_out~q\);

-- Location: FF_X4_Y8_N13
\inst1|wantedAddressCache[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|cpu_req_addr_out\(2),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressCache\(2));

-- Location: LCCOMB_X1_Y10_N26
\inst1|Selector394~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector394~0_combout\ = ((\inst1|CurrentState.requestData~q\ & ((\inst1|cpuCacheOperation.write_cache~q\) # (\inst1|hit~q\)))) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|CurrentState.requestData~q\,
	datab => \inst0|CurrentState.initial~q\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|hit~q\,
	combout => \inst1|Selector394~0_combout\);

-- Location: FF_X1_Y10_N27
\inst1|cpuCacheOperation.write_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector394~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpuCacheOperation.write_cache~q\);

-- Location: LCCOMB_X4_Y8_N12
\inst1|Selector203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector203~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|cpu_req_addr_out\(2))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|wantedAddressCache\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(2),
	datac => \inst1|wantedAddressCache\(2),
	datad => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector203~0_combout\);

-- Location: LCCOMB_X4_Y8_N0
\inst1|cache[1].address[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[2]~feeder_combout\ = \inst1|Selector203~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector203~0_combout\,
	combout => \inst1|cache[1].address[2]~feeder_combout\);

-- Location: FF_X4_Y8_N21
\inst1|wantedAddressCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|cpu_req_addr_out\(0),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressCache\(0));

-- Location: LCCOMB_X4_Y8_N20
\inst1|Selector205~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector205~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|cpu_req_addr_out\(0))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|wantedAddressCache\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(0),
	datac => \inst1|wantedAddressCache\(0),
	datad => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector205~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\cpu1_prio1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpu1_prio1,
	o => \cpu1_prio1~input_o\);

-- Location: LCCOMB_X8_Y10_N4
\inst1|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~16_combout\ = (\inst1|process_0~0_combout\ & (\inst1|cpu_req_addr_out\(2) $ (!\inst0|cpu_req_addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(2),
	datac => \inst1|process_0~0_combout\,
	datad => \inst0|cpu_req_addr_out\(2),
	combout => \inst1|process_0~16_combout\);

-- Location: LCCOMB_X1_Y10_N22
\inst1|Selector202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~0_combout\ = (!\cpu1_prio1~input_o\ & (!\inst1|cpuCacheOperation.read_cache~q\ & (\inst0|cpu_wr_req_out~q\ & \inst1|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu1_prio1~input_o\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst0|cpu_wr_req_out~q\,
	datad => \inst1|process_0~16_combout\,
	combout => \inst1|Selector202~0_combout\);

-- Location: LCCOMB_X5_Y9_N4
\inst1|emptyCacheIndex~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|emptyCacheIndex~0_combout\ = (\inst1|cache[0].MSI.invalid~q\ & (\inst1|cache[2].MSI.invalid~q\ & (\inst1|cache[1].MSI.invalid~q\ & \inst1|cache[3].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.invalid~q\,
	datab => \inst1|cache[2].MSI.invalid~q\,
	datac => \inst1|cache[1].MSI.invalid~q\,
	datad => \inst1|cache[3].MSI.invalid~q\,
	combout => \inst1|emptyCacheIndex~0_combout\);

-- Location: LCCOMB_X8_Y9_N26
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst0|cache_to_cache_resp_out~q\ & ((\inst1|sdramState.readResponseCACHE~q\) # ((!\inst1|sdramState.checkCache~q\ & !\inst1|isInCache~0_combout\)))) # (!\inst0|cache_to_cache_resp_out~q\ & (!\inst1|sdramState.checkCache~q\ 
-- & ((!\inst1|isInCache~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out~q\,
	datab => \inst1|sdramState.checkCache~q\,
	datac => \inst1|sdramState.readResponseCACHE~q\,
	datad => \inst1|isInCache~0_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X8_Y9_N27
\inst1|sdramState.readResponseCACHE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdramState.readResponseCACHE~q\);

-- Location: LCCOMB_X2_Y10_N4
\inst1|cache[1].data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[0]~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|sdramState.readResponseSDRAM~q\) # ((\inst1|sdramState.readResponseCACHE~q\ & \inst0|cache_to_cache_resp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState.readResponseCACHE~q\,
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datac => \inst0|cache_to_cache_resp_out~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|cache[1].data[0]~0_combout\);

-- Location: LCCOMB_X2_Y10_N6
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst0|cpu_wr_req_out~q\ & !\cpu1_prio1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpu_wr_req_out~q\,
	datad => \cpu1_prio1~input_o\,
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X3_Y10_N6
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|process_0~1_combout\ & (\inst1|process_0~0_combout\ & (\inst1|cpu_req_addr_out\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(2),
	datab => \inst1|process_0~1_combout\,
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X4_Y10_N20
\inst1|Selector352~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector352~2_combout\ = (\inst1|cache[1].data[0]~0_combout\) # ((!\inst1|process_0~2_combout\ & (\inst1|cpuCacheOperation.write_cache~q\ & !\inst1|isInCache~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].data[0]~0_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|isInCache~0_combout\,
	combout => \inst1|Selector352~2_combout\);

-- Location: LCCOMB_X7_Y7_N20
\inst1|evictCounter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|evictCounter[0]~1_combout\ = \inst1|evictCounter\(0) $ (((\inst1|emptyCacheIndex~0_combout\ & \inst1|Selector352~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|emptyCacheIndex~0_combout\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|evictCounter[0]~1_combout\);

-- Location: FF_X7_Y7_N21
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

-- Location: LCCOMB_X7_Y7_N30
\inst1|evictCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|evictCounter[1]~0_combout\ = \inst1|evictCounter\(1) $ (((\inst1|emptyCacheIndex~0_combout\ & (\inst1|evictCounter\(0) & \inst1|Selector352~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|emptyCacheIndex~0_combout\,
	datab => \inst1|evictCounter\(0),
	datac => \inst1|evictCounter\(1),
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|evictCounter[1]~0_combout\);

-- Location: FF_X7_Y7_N31
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

-- Location: LCCOMB_X5_Y9_N24
\inst1|MSI~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~10_combout\ = ((\inst1|evictCounter\(0) & \inst1|evictCounter\(1))) # (!\inst1|cache[3].MSI.invalid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cache[3].MSI.invalid~q\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|MSI~10_combout\);

-- Location: LCCOMB_X5_Y9_N10
\inst1|MSI~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~11_combout\ = (\inst1|cache[0].MSI.invalid~q\ & (\inst1|cache[2].MSI.invalid~q\ & (\inst1|cache[1].MSI.invalid~q\ & \inst1|MSI~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.invalid~q\,
	datab => \inst1|cache[2].MSI.invalid~q\,
	datac => \inst1|cache[1].MSI.invalid~q\,
	datad => \inst1|MSI~10_combout\,
	combout => \inst1|MSI~11_combout\);

-- Location: LCCOMB_X4_Y10_N26
\inst1|cache[3].address[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].address[1]~0_combout\ = (\inst1|MSI~11_combout\ & \inst1|Selector352~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSI~11_combout\,
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|cache[3].address[1]~0_combout\);

-- Location: FF_X4_Y10_N3
\inst1|cache[3].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector205~0_combout\,
	sload => VCC,
	ena => \inst1|cache[3].address[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].address\(0));

-- Location: FF_X4_Y8_N23
\inst1|wantedAddressCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|cpu_req_addr_out\(1),
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wantedAddressCache\(1));

-- Location: LCCOMB_X4_Y8_N22
\inst1|Selector204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector204~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (\inst1|cpu_req_addr_out\(1))) # (!\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|wantedAddressCache\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpu_req_addr_out\(1),
	datac => \inst1|wantedAddressCache\(1),
	datad => \inst1|cpuCacheOperation.write_cache~q\,
	combout => \inst1|Selector204~0_combout\);

-- Location: FF_X4_Y10_N5
\inst1|cache[3].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector204~0_combout\,
	sload => VCC,
	ena => \inst1|cache[3].address[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].address\(1));

-- Location: LCCOMB_X4_Y10_N24
\inst1|cache~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~12_combout\ = (\inst1|cache[3].address\(0) & (\inst0|cpu_req_addr_out\(0) & (\inst1|cache[3].address\(1) $ (!\inst0|cpu_req_addr_out\(1))))) # (!\inst1|cache[3].address\(0) & (!\inst0|cpu_req_addr_out\(0) & (\inst1|cache[3].address\(1) $ 
-- (!\inst0|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].address\(0),
	datab => \inst0|cpu_req_addr_out\(0),
	datac => \inst1|cache[3].address\(1),
	datad => \inst0|cpu_req_addr_out\(1),
	combout => \inst1|cache~12_combout\);

-- Location: FF_X4_Y10_N23
\inst1|cache[3].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector203~0_combout\,
	sload => VCC,
	ena => \inst1|cache[3].address[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].address\(2));

-- Location: LCCOMB_X3_Y11_N10
\inst1|cache~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~13_combout\ = (\inst0|cpu_wr_req_out~q\ & (\inst1|cache[3].MSI.invalid~q\ & (\inst1|cache[3].address\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpu_wr_req_out~q\,
	datab => \inst1|cache[3].address\(2),
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst1|cache[3].MSI.invalid~q\,
	combout => \inst1|cache~13_combout\);

-- Location: LCCOMB_X3_Y11_N4
\inst1|cache~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~14_combout\ = (\inst1|cache~12_combout\ & \inst1|cache~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cache~12_combout\,
	datad => \inst1|cache~13_combout\,
	combout => \inst1|cache~14_combout\);

-- Location: LCCOMB_X1_Y10_N18
\inst1|cpuCacheOperation.none~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpuCacheOperation.none~0_combout\ = ((\inst1|cpuCacheOperation.none~q\) # (\inst1|hit~q\)) # (!\inst1|CurrentState.requestData~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|CurrentState.requestData~q\,
	datac => \inst1|cpuCacheOperation.none~q\,
	datad => \inst1|hit~q\,
	combout => \inst1|cpuCacheOperation.none~0_combout\);

-- Location: FF_X1_Y10_N19
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

-- Location: LCCOMB_X1_Y10_N24
\inst1|Selector196~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector196~0_combout\ = (\inst1|cpuCacheOperation.none~q\ & ((!\inst1|cpuCacheOperation.read_cache~q\) # (!\inst1|sdramState.checkCache~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState.checkCache~q\,
	datac => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|cpuCacheOperation.none~q\,
	combout => \inst1|Selector196~0_combout\);

-- Location: LCCOMB_X3_Y10_N18
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|cache[3].address\(0) & (\inst1|cpu_req_addr_out\(0) & (\inst1|cache[3].address\(1) $ (!\inst1|cpu_req_addr_out\(1))))) # (!\inst1|cache[3].address\(0) & (!\inst1|cpu_req_addr_out\(0) & (\inst1|cache[3].address\(1) $ 
-- (!\inst1|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].address\(0),
	datab => \inst1|cache[3].address\(1),
	datac => \inst1|cpu_req_addr_out\(1),
	datad => \inst1|cpu_req_addr_out\(0),
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X3_Y10_N0
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|cache[3].MSI.invalid~q\ & (\inst1|process_0~5_combout\ & (\inst1|cache[3].address\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].MSI.invalid~q\,
	datab => \inst1|cache[3].address\(2),
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X3_Y11_N31
\inst1|cache[0].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector203~0_combout\,
	sload => VCC,
	ena => \inst1|cache[0].address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].address\(2));

-- Location: LCCOMB_X3_Y11_N24
\inst1|cache[0].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].address[1]~feeder_combout\ = \inst1|Selector204~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector204~0_combout\,
	combout => \inst1|cache[0].address[1]~feeder_combout\);

-- Location: FF_X3_Y11_N25
\inst1|cache[0].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].address[1]~feeder_combout\,
	ena => \inst1|cache[0].address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].address\(1));

-- Location: LCCOMB_X3_Y10_N2
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (\inst1|cache[0].address\(1) & (\inst1|cpu_req_addr_out\(1) & (\inst1|cache[0].address\(0) $ (!\inst1|cpu_req_addr_out\(0))))) # (!\inst1|cache[0].address\(1) & (!\inst1|cpu_req_addr_out\(1) & (\inst1|cache[0].address\(0) $ 
-- (!\inst1|cpu_req_addr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].address\(1),
	datab => \inst1|cache[0].address\(0),
	datac => \inst1|cpu_req_addr_out\(0),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X3_Y10_N24
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|cache[0].MSI.invalid~q\ & (\inst1|process_0~7_combout\ & (\inst1|cache[0].address\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].address\(2),
	datab => \inst1|cache[0].MSI.invalid~q\,
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst1|process_0~7_combout\,
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X2_Y10_N0
\inst1|indexOfCache~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~13_combout\ = (\inst1|process_0~6_combout\) # ((!\inst1|process_0~4_combout\ & ((\inst1|indexOfCache~3_combout\) # (!\inst1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~6_combout\,
	datab => \inst1|indexOfCache~3_combout\,
	datac => \inst1|process_0~4_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|indexOfCache~13_combout\);

-- Location: LCCOMB_X2_Y10_N24
\inst1|Selector197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector197~0_combout\ = (\inst1|Selector196~0_combout\ & (\inst1|indexOfCache~13_combout\ & ((\inst1|indexOfCache~9_combout\) # (\inst1|isInCache~0_combout\)))) # (!\inst1|Selector196~0_combout\ & (\inst1|indexOfCache~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|Selector196~0_combout\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|indexOfCache~13_combout\,
	combout => \inst1|Selector197~0_combout\);

-- Location: FF_X2_Y10_N25
\inst1|indexOfCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector197~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|indexOfCache\(0));

-- Location: LCCOMB_X4_Y11_N16
\inst0|cache_to_cache_req_address_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache_to_cache_req_address_out[2]~0_combout\ = (!\rst~input_o\ & (\inst0|cpuCacheOperation.read_cache~q\ & (!\inst0|isInCache~0_combout\ & !\inst0|sdramState.checkCache~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|sdramState.checkCache~q\,
	combout => \inst0|cache_to_cache_req_address_out[2]~0_combout\);

-- Location: FF_X3_Y11_N15
\inst0|cache_to_cache_req_address_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|cpu_req_addr_out\(1),
	sload => VCC,
	ena => \inst0|cache_to_cache_req_address_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_req_address_out\(1));

-- Location: LCCOMB_X3_Y11_N28
\inst0|cache_to_cache_req_address_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache_to_cache_req_address_out[0]~feeder_combout\ = \inst0|cpu_req_addr_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|cpu_req_addr_out\(0),
	combout => \inst0|cache_to_cache_req_address_out[0]~feeder_combout\);

-- Location: FF_X3_Y11_N29
\inst0|cache_to_cache_req_address_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache_to_cache_req_address_out[0]~feeder_combout\,
	ena => \inst0|cache_to_cache_req_address_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_req_address_out\(0));

-- Location: LCCOMB_X3_Y11_N2
\inst1|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~13_combout\ = (\inst1|cache[0].address\(1) & (\inst0|cache_to_cache_req_address_out\(1) & (\inst1|cache[0].address\(0) $ (!\inst0|cache_to_cache_req_address_out\(0))))) # (!\inst1|cache[0].address\(1) & 
-- (!\inst0|cache_to_cache_req_address_out\(1) & (\inst1|cache[0].address\(0) $ (!\inst0|cache_to_cache_req_address_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].address\(1),
	datab => \inst0|cache_to_cache_req_address_out\(1),
	datac => \inst1|cache[0].address\(0),
	datad => \inst0|cache_to_cache_req_address_out\(0),
	combout => \inst1|process_0~13_combout\);

-- Location: LCCOMB_X3_Y11_N30
\inst1|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~14_combout\ = (\inst1|process_0~13_combout\ & (\inst1|cache[0].MSI.invalid~q\ & (\inst0|cache_to_cache_req_address_out\(2) $ (!\inst1|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_req_address_out\(2),
	datab => \inst1|process_0~13_combout\,
	datac => \inst1|cache[0].address\(2),
	datad => \inst1|cache[0].MSI.invalid~q\,
	combout => \inst1|process_0~14_combout\);

-- Location: LCCOMB_X5_Y9_N26
\inst1|MSI~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~8_combout\ = (\inst1|cache[1].MSI.invalid~q\ & (\inst1|cache[0].MSI.invalid~q\ & !\inst1|cache[2].MSI.invalid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].MSI.invalid~q\,
	datac => \inst1|cache[0].MSI.invalid~q\,
	datad => \inst1|cache[2].MSI.invalid~q\,
	combout => \inst1|MSI~8_combout\);

-- Location: LCCOMB_X5_Y9_N16
\inst1|MSI~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~9_combout\ = (\inst1|MSI~8_combout\) # ((\inst1|emptyCacheIndex~0_combout\ & (!\inst1|evictCounter\(0) & \inst1|evictCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~8_combout\,
	datab => \inst1|emptyCacheIndex~0_combout\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|MSI~9_combout\);

-- Location: LCCOMB_X4_Y10_N8
\inst1|cache[2].address[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].address[2]~0_combout\ = (\inst1|MSI~9_combout\ & \inst1|Selector352~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSI~9_combout\,
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|cache[2].address[2]~0_combout\);

-- Location: FF_X4_Y10_N1
\inst1|cache[2].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector203~0_combout\,
	sload => VCC,
	ena => \inst1|cache[2].address[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].address\(2));

-- Location: FF_X4_Y10_N7
\inst1|cache[2].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector204~0_combout\,
	sload => VCC,
	ena => \inst1|cache[2].address[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].address\(1));

-- Location: FF_X4_Y10_N17
\inst1|cache[2].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector205~0_combout\,
	sload => VCC,
	ena => \inst1|cache[2].address[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].address\(0));

-- Location: LCCOMB_X4_Y10_N28
\inst1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = (\inst1|cache[2].address\(1) & (\inst0|cache_to_cache_req_address_out\(1) & (\inst1|cache[2].address\(0) $ (!\inst0|cache_to_cache_req_address_out\(0))))) # (!\inst1|cache[2].address\(1) & 
-- (!\inst0|cache_to_cache_req_address_out\(1) & (\inst1|cache[2].address\(0) $ (!\inst0|cache_to_cache_req_address_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(1),
	datab => \inst1|cache[2].address\(0),
	datac => \inst0|cache_to_cache_req_address_out\(1),
	datad => \inst0|cache_to_cache_req_address_out\(0),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X4_Y10_N10
\inst1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (\inst1|cache[2].MSI.invalid~q\ & (\inst1|process_0~9_combout\ & (\inst0|cache_to_cache_req_address_out\(2) $ (!\inst1|cache[2].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_req_address_out\(2),
	datab => \inst1|cache[2].address\(2),
	datac => \inst1|cache[2].MSI.invalid~q\,
	datad => \inst1|process_0~9_combout\,
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X4_Y8_N6
\inst1|cache[1].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[1]~feeder_combout\ = \inst1|Selector204~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector204~0_combout\,
	combout => \inst1|cache[1].address[1]~feeder_combout\);

-- Location: FF_X4_Y8_N7
\inst1|cache[1].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].address[1]~feeder_combout\,
	ena => \inst1|cache[1].address[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].address\(1));

-- Location: LCCOMB_X4_Y8_N28
\inst1|cache[1].address[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[0]~feeder_combout\ = \inst1|Selector205~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector205~0_combout\,
	combout => \inst1|cache[1].address[0]~feeder_combout\);

-- Location: FF_X4_Y8_N29
\inst1|cache[1].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].address[0]~feeder_combout\,
	ena => \inst1|cache[1].address[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].address\(0));

-- Location: LCCOMB_X3_Y11_N14
\inst1|indexOfCache~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~4_combout\ = (\inst1|cache[1].address\(1) & (\inst0|cache_to_cache_req_address_out\(1) & (\inst0|cache_to_cache_req_address_out\(0) $ (!\inst1|cache[1].address\(0))))) # (!\inst1|cache[1].address\(1) & 
-- (!\inst0|cache_to_cache_req_address_out\(1) & (\inst0|cache_to_cache_req_address_out\(0) $ (!\inst1|cache[1].address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(1),
	datab => \inst0|cache_to_cache_req_address_out\(0),
	datac => \inst0|cache_to_cache_req_address_out\(1),
	datad => \inst1|cache[1].address\(0),
	combout => \inst1|indexOfCache~4_combout\);

-- Location: LCCOMB_X3_Y11_N8
\inst1|indexOfCache~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~5_combout\ = (\inst1|cache[1].MSI.invalid~q\ & (\inst1|indexOfCache~4_combout\ & (\inst1|cache[1].address\(2) $ (!\inst0|cache_to_cache_req_address_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(2),
	datab => \inst0|cache_to_cache_req_address_out\(2),
	datac => \inst1|cache[1].MSI.invalid~q\,
	datad => \inst1|indexOfCache~4_combout\,
	combout => \inst1|indexOfCache~5_combout\);

-- Location: LCCOMB_X2_Y10_N14
\inst1|indexOfCache~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~8_combout\ = (\inst1|process_0~12_combout\) # ((!\inst1|process_0~10_combout\ & ((\inst1|indexOfCache~5_combout\) # (!\inst1|process_0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~12_combout\,
	datab => \inst1|process_0~14_combout\,
	datac => \inst1|process_0~10_combout\,
	datad => \inst1|indexOfCache~5_combout\,
	combout => \inst1|indexOfCache~8_combout\);

-- Location: LCCOMB_X2_Y10_N10
\inst1|indexOfCache~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~9_combout\ = (\inst1|indexOfCache~8_combout\ & ((\inst1|indexOfCache\(0)) # (\inst1|indexOfCache~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|indexOfCache\(0),
	datac => \inst1|indexOfCache~8_combout\,
	datad => \inst1|indexOfCache~6_combout\,
	combout => \inst1|indexOfCache~9_combout\);

-- Location: LCCOMB_X2_Y10_N16
\inst1|Selector316~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector316~0_combout\ = (!\inst1|cache[3].MSI.invalid~q\ & (((!\inst1|process_0~15_combout\) # (!\inst1|indexOfCache~7_combout\)) # (!\inst1|indexOfCache~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|cache[3].MSI.invalid~q\,
	datad => \inst1|process_0~15_combout\,
	combout => \inst1|Selector316~0_combout\);

-- Location: LCCOMB_X3_Y10_N20
\inst1|Selector202~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~1_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (!\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|isInCache~0_combout\ & \inst1|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.write_cache~q\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|Selector202~1_combout\);

-- Location: LCCOMB_X2_Y10_N18
\inst1|indexOfCache~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~14_combout\ = (\inst1|indexOfCache~8_combout\ & (!\inst1|process_0~8_combout\ & ((\inst1|indexOfCache~6_combout\) # (\inst1|indexOfCache\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~6_combout\,
	datab => \inst1|indexOfCache\(0),
	datac => \inst1|indexOfCache~8_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|indexOfCache~14_combout\);

-- Location: LCCOMB_X3_Y10_N22
\inst1|indexOfCache~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~12_combout\ = (\inst1|process_0~6_combout\) # ((!\inst1|process_0~4_combout\ & ((\inst1|indexOfCache~3_combout\) # (\inst1|indexOfCache~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|process_0~6_combout\,
	datac => \inst1|indexOfCache~3_combout\,
	datad => \inst1|indexOfCache~14_combout\,
	combout => \inst1|indexOfCache~12_combout\);

-- Location: LCCOMB_X4_Y9_N12
\inst1|Selector200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector200~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & !\inst1|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|Selector200~0_combout\);

-- Location: LCCOMB_X5_Y9_N30
\inst1|Selector202~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~2_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|sdramState.checkCache~q\ & ((\inst1|sdramState.readResponseSDRAM~q\) # (\inst0|cache_to_cache_resp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datac => \inst0|cache_to_cache_resp_out~q\,
	datad => \inst1|sdramState.checkCache~q\,
	combout => \inst1|Selector202~2_combout\);

-- Location: LCCOMB_X4_Y9_N22
\inst1|cache~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~15_combout\ = (\inst1|MSI~11_combout\ & (!\inst1|isInCache~0_combout\ & !\inst1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSI~11_combout\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|cache~15_combout\);

-- Location: LCCOMB_X4_Y9_N2
\inst1|cache~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~10_combout\ = (\inst1|isInCache~0_combout\ & !\inst1|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|cache~10_combout\);

-- Location: LCCOMB_X4_Y9_N16
\inst1|cache~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~16_combout\ = (\inst1|cache~15_combout\) # ((\inst1|indexOfCache~11_combout\ & (\inst1|indexOfCache~12_combout\ & \inst1|cache~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|indexOfCache~12_combout\,
	datac => \inst1|cache~15_combout\,
	datad => \inst1|cache~10_combout\,
	combout => \inst1|cache~16_combout\);

-- Location: LCCOMB_X4_Y9_N10
\inst1|Selector316~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector316~1_combout\ = (\inst1|Selector200~0_combout\ & ((\inst1|cache~16_combout\) # ((\inst1|MSI~11_combout\ & \inst1|Selector202~2_combout\)))) # (!\inst1|Selector200~0_combout\ & (\inst1|MSI~11_combout\ & (\inst1|Selector202~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector200~0_combout\,
	datab => \inst1|MSI~11_combout\,
	datac => \inst1|Selector202~2_combout\,
	datad => \inst1|cache~16_combout\,
	combout => \inst1|Selector316~1_combout\);

-- Location: LCCOMB_X5_Y10_N0
\inst1|Selector316~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector316~2_combout\ = (\inst1|Selector316~1_combout\) # ((\inst1|Selector202~1_combout\ & (\inst1|indexOfCache~12_combout\ & \inst1|indexOfCache~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector202~1_combout\,
	datab => \inst1|indexOfCache~12_combout\,
	datac => \inst1|indexOfCache~11_combout\,
	datad => \inst1|Selector316~1_combout\,
	combout => \inst1|Selector316~2_combout\);

-- Location: LCCOMB_X5_Y10_N12
\inst1|Selector316~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector316~3_combout\ = (\inst1|Selector316~2_combout\ & (!\inst1|Selector202~0_combout\)) # (!\inst1|Selector316~2_combout\ & (((!\inst1|cache~14_combout\ & !\inst1|Selector316~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector202~0_combout\,
	datab => \inst1|cache~14_combout\,
	datac => \inst1|Selector316~0_combout\,
	datad => \inst1|Selector316~2_combout\,
	combout => \inst1|Selector316~3_combout\);

-- Location: FF_X5_Y10_N13
\inst1|cache[3].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector316~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].MSI.invalid~q\);

-- Location: LCCOMB_X5_Y9_N8
\inst1|MSI~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~12_combout\ = (((\inst1|evictCounter\(0)) # (\inst1|evictCounter\(1))) # (!\inst1|cache[2].MSI.invalid~q\)) # (!\inst1|cache[1].MSI.invalid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].MSI.invalid~q\,
	datab => \inst1|cache[2].MSI.invalid~q\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|MSI~12_combout\);

-- Location: LCCOMB_X3_Y11_N18
\inst1|cache[0].address[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].address[1]~2_combout\ = (\inst1|Selector352~2_combout\ & (((\inst1|cache[3].MSI.invalid~q\ & !\inst1|MSI~12_combout\)) # (!\inst1|cache[0].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].MSI.invalid~q\,
	datab => \inst1|cache[0].MSI.invalid~q\,
	datac => \inst1|MSI~12_combout\,
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|cache[0].address[1]~2_combout\);

-- Location: FF_X3_Y11_N3
\inst1|cache[0].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector205~0_combout\,
	sload => VCC,
	ena => \inst1|cache[0].address[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].address\(0));

-- Location: LCCOMB_X3_Y11_N22
\inst1|cache~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~17_combout\ = (\inst1|cache[0].address\(0) & (\inst0|cpu_req_addr_out\(0) & (\inst0|cpu_req_addr_out\(1) $ (!\inst1|cache[0].address\(1))))) # (!\inst1|cache[0].address\(0) & (!\inst0|cpu_req_addr_out\(0) & (\inst0|cpu_req_addr_out\(1) $ 
-- (!\inst1|cache[0].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].address\(0),
	datab => \inst0|cpu_req_addr_out\(1),
	datac => \inst1|cache[0].address\(1),
	datad => \inst0|cpu_req_addr_out\(0),
	combout => \inst1|cache~17_combout\);

-- Location: LCCOMB_X3_Y11_N12
\inst1|cache~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~18_combout\ = (\inst0|cpu_wr_req_out~q\ & (\inst1|cache[0].MSI.invalid~q\ & (\inst0|cpu_req_addr_out\(2) $ (!\inst1|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpu_wr_req_out~q\,
	datab => \inst1|cache[0].MSI.invalid~q\,
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst1|cache[0].address\(2),
	combout => \inst1|cache~18_combout\);

-- Location: LCCOMB_X3_Y11_N6
\inst1|cache~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~19_combout\ = (\inst1|cache~17_combout\ & \inst1|cache~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cache~17_combout\,
	datad => \inst1|cache~18_combout\,
	combout => \inst1|cache~19_combout\);

-- Location: LCCOMB_X4_Y10_N30
\inst1|Selector202~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~4_combout\ = (!\inst1|indexOfCache~11_combout\ & (\inst1|Selector202~1_combout\ & !\inst1|indexOfCache~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|Selector202~1_combout\,
	datad => \inst1|indexOfCache~12_combout\,
	combout => \inst1|Selector202~4_combout\);

-- Location: LCCOMB_X5_Y9_N12
\inst1|Selector202~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~5_combout\ = (\inst1|Selector202~2_combout\ & (((!\inst1|MSI~12_combout\ & \inst1|cache[3].MSI.invalid~q\)) # (!\inst1|cache[0].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.invalid~q\,
	datab => \inst1|MSI~12_combout\,
	datac => \inst1|Selector202~2_combout\,
	datad => \inst1|cache[3].MSI.invalid~q\,
	combout => \inst1|Selector202~5_combout\);

-- Location: LCCOMB_X5_Y9_N22
\inst1|MSI~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~13_combout\ = (\inst1|cache[0].MSI.invalid~q\ & ((\inst1|MSI~12_combout\) # (!\inst1|cache[3].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.invalid~q\,
	datac => \inst1|MSI~12_combout\,
	datad => \inst1|cache[3].MSI.invalid~q\,
	combout => \inst1|MSI~13_combout\);

-- Location: LCCOMB_X3_Y10_N16
\inst1|cache~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~20_combout\ = (\inst1|process_0~2_combout\) # ((\inst1|MSI~13_combout\ & !\inst1|isInCache~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~13_combout\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|cache~20_combout\);

-- Location: LCCOMB_X3_Y10_N30
\inst1|cache~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~21_combout\ = (\inst1|cache~20_combout\) # ((\inst1|isInCache~0_combout\ & ((\inst1|indexOfCache~11_combout\) # (\inst1|indexOfCache~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|isInCache~0_combout\,
	datac => \inst1|indexOfCache~12_combout\,
	datad => \inst1|cache~20_combout\,
	combout => \inst1|cache~21_combout\);

-- Location: LCCOMB_X4_Y9_N4
\inst1|Selector202~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~6_combout\ = (\inst1|Selector202~4_combout\) # ((\inst1|Selector202~5_combout\) # ((!\inst1|cache~21_combout\ & \inst1|Selector200~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector202~4_combout\,
	datab => \inst1|Selector202~5_combout\,
	datac => \inst1|cache~21_combout\,
	datad => \inst1|Selector200~0_combout\,
	combout => \inst1|Selector202~6_combout\);

-- Location: LCCOMB_X6_Y9_N20
\inst1|Selector202~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~3_combout\ = (!\inst1|cache[0].MSI.invalid~q\ & ((\inst1|indexOfCache~9_combout\) # ((\inst1|indexOfCache~7_combout\) # (!\inst1|process_0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|cache[0].MSI.invalid~q\,
	datad => \inst1|process_0~15_combout\,
	combout => \inst1|Selector202~3_combout\);

-- Location: LCCOMB_X4_Y9_N26
\inst1|Selector202~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector202~7_combout\ = (\inst1|Selector202~6_combout\ & (((!\inst1|Selector202~0_combout\)))) # (!\inst1|Selector202~6_combout\ & (!\inst1|cache~19_combout\ & ((!\inst1|Selector202~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache~19_combout\,
	datab => \inst1|Selector202~0_combout\,
	datac => \inst1|Selector202~6_combout\,
	datad => \inst1|Selector202~3_combout\,
	combout => \inst1|Selector202~7_combout\);

-- Location: FF_X4_Y9_N27
\inst1|cache[0].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector202~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].MSI.invalid~q\);

-- Location: LCCOMB_X5_Y9_N18
\inst1|MSI~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~14_combout\ = (\inst1|cache[0].MSI.invalid~q\ & !\inst1|cache[1].MSI.invalid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.invalid~q\,
	datac => \inst1|cache[1].MSI.invalid~q\,
	combout => \inst1|MSI~14_combout\);

-- Location: LCCOMB_X5_Y9_N28
\inst1|MSI~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MSI~15_combout\ = (\inst1|MSI~14_combout\) # ((\inst1|emptyCacheIndex~0_combout\ & (\inst1|evictCounter\(0) & !\inst1|evictCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~14_combout\,
	datab => \inst1|emptyCacheIndex~0_combout\,
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|MSI~15_combout\);

-- Location: LCCOMB_X4_Y8_N30
\inst1|cache[1].address[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].address[2]~0_combout\ = (\inst1|MSI~15_combout\ & \inst1|Selector352~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~15_combout\,
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|cache[1].address[2]~0_combout\);

-- Location: FF_X4_Y8_N1
\inst1|cache[1].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].address[2]~feeder_combout\,
	ena => \inst1|cache[1].address[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].address\(2));

-- Location: LCCOMB_X3_Y11_N26
\inst1|cache~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~23_combout\ = (\inst0|cpu_wr_req_out~q\ & (\inst1|cache[1].MSI.invalid~q\ & (\inst0|cpu_req_addr_out\(2) $ (!\inst1|cache[1].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpu_wr_req_out~q\,
	datab => \inst1|cache[1].MSI.invalid~q\,
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst1|cache[1].address\(2),
	combout => \inst1|cache~23_combout\);

-- Location: LCCOMB_X3_Y11_N0
\inst1|cache~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~22_combout\ = (\inst1|cache[1].address\(1) & (\inst0|cpu_req_addr_out\(1) & (\inst1|cache[1].address\(0) $ (!\inst0|cpu_req_addr_out\(0))))) # (!\inst1|cache[1].address\(1) & (!\inst0|cpu_req_addr_out\(1) & (\inst1|cache[1].address\(0) $ 
-- (!\inst0|cpu_req_addr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(1),
	datab => \inst1|cache[1].address\(0),
	datac => \inst0|cpu_req_addr_out\(1),
	datad => \inst0|cpu_req_addr_out\(0),
	combout => \inst1|cache~22_combout\);

-- Location: LCCOMB_X3_Y11_N16
\inst1|cache~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~24_combout\ = (\inst1|cache~23_combout\ & \inst1|cache~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cache~23_combout\,
	datad => \inst1|cache~22_combout\,
	combout => \inst1|cache~24_combout\);

-- Location: LCCOMB_X6_Y9_N30
\inst1|Selector240~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector240~0_combout\ = (!\inst1|cache[1].MSI.invalid~q\ & ((\inst1|indexOfCache~7_combout\) # ((!\inst1|process_0~15_combout\) # (!\inst1|indexOfCache~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].MSI.invalid~q\,
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|indexOfCache~9_combout\,
	datad => \inst1|process_0~15_combout\,
	combout => \inst1|Selector240~0_combout\);

-- Location: LCCOMB_X4_Y9_N30
\inst1|cache~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~25_combout\ = (\inst1|MSI~15_combout\ & (!\inst1|isInCache~0_combout\ & !\inst1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|MSI~15_combout\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|cache~25_combout\);

-- Location: LCCOMB_X4_Y9_N24
\inst1|cache~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~26_combout\ = (\inst1|cache~25_combout\) # ((!\inst1|indexOfCache~11_combout\ & (\inst1|indexOfCache~12_combout\ & \inst1|cache~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|indexOfCache~12_combout\,
	datac => \inst1|cache~25_combout\,
	datad => \inst1|cache~10_combout\,
	combout => \inst1|cache~26_combout\);

-- Location: LCCOMB_X4_Y9_N14
\inst1|Selector240~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector240~1_combout\ = (\inst1|Selector200~0_combout\ & ((\inst1|cache~26_combout\) # ((\inst1|MSI~15_combout\ & \inst1|Selector202~2_combout\)))) # (!\inst1|Selector200~0_combout\ & (\inst1|MSI~15_combout\ & (\inst1|Selector202~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector200~0_combout\,
	datab => \inst1|MSI~15_combout\,
	datac => \inst1|Selector202~2_combout\,
	datad => \inst1|cache~26_combout\,
	combout => \inst1|Selector240~1_combout\);

-- Location: LCCOMB_X4_Y9_N20
\inst1|Selector240~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector240~2_combout\ = (\inst1|Selector240~1_combout\) # ((!\inst1|indexOfCache~11_combout\ & (\inst1|indexOfCache~12_combout\ & \inst1|Selector202~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|indexOfCache~12_combout\,
	datac => \inst1|Selector240~1_combout\,
	datad => \inst1|Selector202~1_combout\,
	combout => \inst1|Selector240~2_combout\);

-- Location: LCCOMB_X4_Y9_N0
\inst1|Selector240~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector240~3_combout\ = (\inst1|Selector240~2_combout\ & (((!\inst1|Selector202~0_combout\)))) # (!\inst1|Selector240~2_combout\ & (!\inst1|cache~24_combout\ & ((!\inst1|Selector240~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache~24_combout\,
	datab => \inst1|Selector202~0_combout\,
	datac => \inst1|Selector240~0_combout\,
	datad => \inst1|Selector240~2_combout\,
	combout => \inst1|Selector240~3_combout\);

-- Location: FF_X4_Y9_N1
\inst1|cache[1].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector240~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].MSI.invalid~q\);

-- Location: LCCOMB_X3_Y10_N26
\inst1|indexOfCache~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~2_combout\ = (\inst1|cache[1].address\(0) & (\inst1|cpu_req_addr_out\(0) & (\inst1|cpu_req_addr_out\(1) $ (!\inst1|cache[1].address\(1))))) # (!\inst1|cache[1].address\(0) & (!\inst1|cpu_req_addr_out\(0) & (\inst1|cpu_req_addr_out\(1) 
-- $ (!\inst1|cache[1].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(0),
	datab => \inst1|cpu_req_addr_out\(1),
	datac => \inst1|cache[1].address\(1),
	datad => \inst1|cpu_req_addr_out\(0),
	combout => \inst1|indexOfCache~2_combout\);

-- Location: LCCOMB_X3_Y10_N8
\inst1|indexOfCache~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~3_combout\ = (\inst1|cache[1].MSI.invalid~q\ & (\inst1|indexOfCache~2_combout\ & (\inst1|cache[1].address\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].MSI.invalid~q\,
	datab => \inst1|cache[1].address\(2),
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst1|indexOfCache~2_combout\,
	combout => \inst1|indexOfCache~3_combout\);

-- Location: LCCOMB_X3_Y10_N4
\inst1|indexOfCache~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~10_combout\ = (\inst1|indexOfCache~7_combout\ & !\inst1|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|indexOfCache~7_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|indexOfCache~10_combout\);

-- Location: LCCOMB_X3_Y10_N10
\inst1|indexOfCache~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~11_combout\ = (\inst1|process_0~4_combout\) # ((\inst1|process_0~6_combout\) # ((!\inst1|indexOfCache~3_combout\ & \inst1|indexOfCache~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|indexOfCache~3_combout\,
	datac => \inst1|indexOfCache~10_combout\,
	datad => \inst1|process_0~6_combout\,
	combout => \inst1|indexOfCache~11_combout\);

-- Location: LCCOMB_X2_Y10_N2
\inst1|Selector196~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector196~1_combout\ = (\inst1|Selector196~0_combout\ & ((\inst1|indexOfCache~11_combout\))) # (!\inst1|Selector196~0_combout\ & (\inst1|indexOfCache~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|indexOfCache~11_combout\,
	datad => \inst1|Selector196~0_combout\,
	combout => \inst1|Selector196~1_combout\);

-- Location: FF_X2_Y10_N3
\inst1|indexOfCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector196~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|indexOfCache\(1));

-- Location: LCCOMB_X2_Y10_N28
\inst1|indexOfCache~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~7_combout\ = (\inst1|indexOfCache~6_combout\ & ((\inst1|process_0~12_combout\) # ((\inst1|process_0~10_combout\)))) # (!\inst1|indexOfCache~6_combout\ & (((\inst1|indexOfCache\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~12_combout\,
	datab => \inst1|indexOfCache\(1),
	datac => \inst1|process_0~10_combout\,
	datad => \inst1|indexOfCache~6_combout\,
	combout => \inst1|indexOfCache~7_combout\);

-- Location: LCCOMB_X2_Y10_N26
\inst1|Selector278~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector278~0_combout\ = (!\inst1|cache[2].MSI.invalid~q\ & (((\inst1|indexOfCache~9_combout\) # (!\inst1|process_0~15_combout\)) # (!\inst1|indexOfCache~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].MSI.invalid~q\,
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|indexOfCache~9_combout\,
	datad => \inst1|process_0~15_combout\,
	combout => \inst1|Selector278~0_combout\);

-- Location: LCCOMB_X4_Y10_N14
\inst1|cache~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~6_combout\ = (\inst1|cache[2].address\(1) & (\inst0|cpu_req_addr_out\(1) & (\inst0|cpu_req_addr_out\(0) $ (!\inst1|cache[2].address\(0))))) # (!\inst1|cache[2].address\(1) & (!\inst0|cpu_req_addr_out\(1) & (\inst0|cpu_req_addr_out\(0) $ 
-- (!\inst1|cache[2].address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(1),
	datab => \inst0|cpu_req_addr_out\(0),
	datac => \inst1|cache[2].address\(0),
	datad => \inst0|cpu_req_addr_out\(1),
	combout => \inst1|cache~6_combout\);

-- Location: LCCOMB_X4_Y10_N12
\inst1|cache~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~7_combout\ = (\inst1|cache[2].MSI.invalid~q\ & (\inst0|cpu_wr_req_out~q\ & (\inst1|cache[2].address\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].MSI.invalid~q\,
	datab => \inst1|cache[2].address\(2),
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst0|cpu_wr_req_out~q\,
	combout => \inst1|cache~7_combout\);

-- Location: LCCOMB_X5_Y10_N30
\inst1|cache~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~8_combout\ = (\inst1|cache~6_combout\ & \inst1|cache~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cache~6_combout\,
	datad => \inst1|cache~7_combout\,
	combout => \inst1|cache~8_combout\);

-- Location: LCCOMB_X3_Y9_N4
\inst1|cache~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~9_combout\ = (\inst1|MSI~9_combout\ & (!\inst1|isInCache~0_combout\ & !\inst1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~9_combout\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|cache~9_combout\);

-- Location: LCCOMB_X3_Y9_N2
\inst1|cache~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~11_combout\ = (\inst1|cache~9_combout\) # ((\inst1|indexOfCache~11_combout\ & (!\inst1|indexOfCache~12_combout\ & \inst1|cache~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|cache~9_combout\,
	datac => \inst1|indexOfCache~12_combout\,
	datad => \inst1|cache~10_combout\,
	combout => \inst1|cache~11_combout\);

-- Location: LCCOMB_X3_Y9_N12
\inst1|Selector278~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector278~1_combout\ = (\inst1|MSI~9_combout\ & ((\inst1|Selector202~2_combout\) # ((\inst1|Selector200~0_combout\ & \inst1|cache~11_combout\)))) # (!\inst1|MSI~9_combout\ & (((\inst1|Selector200~0_combout\ & \inst1|cache~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~9_combout\,
	datab => \inst1|Selector202~2_combout\,
	datac => \inst1|Selector200~0_combout\,
	datad => \inst1|cache~11_combout\,
	combout => \inst1|Selector278~1_combout\);

-- Location: LCCOMB_X3_Y9_N6
\inst1|Selector278~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector278~2_combout\ = (\inst1|Selector278~1_combout\) # ((\inst1|Selector202~1_combout\ & (\inst1|indexOfCache~11_combout\ & !\inst1|indexOfCache~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector202~1_combout\,
	datab => \inst1|indexOfCache~11_combout\,
	datac => \inst1|indexOfCache~12_combout\,
	datad => \inst1|Selector278~1_combout\,
	combout => \inst1|Selector278~2_combout\);

-- Location: LCCOMB_X3_Y9_N26
\inst1|Selector278~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector278~3_combout\ = (\inst1|Selector278~2_combout\ & (((!\inst1|Selector202~0_combout\)))) # (!\inst1|Selector278~2_combout\ & (!\inst1|Selector278~0_combout\ & (!\inst1|cache~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector278~0_combout\,
	datab => \inst1|cache~8_combout\,
	datac => \inst1|Selector202~0_combout\,
	datad => \inst1|Selector278~2_combout\,
	combout => \inst1|Selector278~3_combout\);

-- Location: FF_X3_Y9_N27
\inst1|cache[2].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector278~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].MSI.invalid~q\);

-- Location: LCCOMB_X3_Y10_N28
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|cache[2].address\(1) & (\inst1|cpu_req_addr_out\(1) & (\inst1|cache[2].address\(0) $ (!\inst1|cpu_req_addr_out\(0))))) # (!\inst1|cache[2].address\(1) & (!\inst1|cpu_req_addr_out\(1) & (\inst1|cache[2].address\(0) $ 
-- (!\inst1|cpu_req_addr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].address\(1),
	datab => \inst1|cache[2].address\(0),
	datac => \inst1|cpu_req_addr_out\(0),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X3_Y10_N12
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|cache[2].MSI.invalid~q\ & (\inst1|process_0~3_combout\ & (\inst1|cache[2].address\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].MSI.invalid~q\,
	datab => \inst1|cache[2].address\(2),
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X3_Y10_N14
\inst1|isInCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|isInCache~0_combout\ = (\inst1|process_0~4_combout\) # ((\inst1|process_0~6_combout\) # ((\inst1|indexOfCache~3_combout\) # (\inst1|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|process_0~6_combout\,
	datac => \inst1|indexOfCache~3_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|isInCache~0_combout\);

-- Location: LCCOMB_X9_Y10_N10
\inst1|cache_to_cache_req_address_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache_to_cache_req_address_out[2]~0_combout\ = (!\inst1|sdramState.checkCache~q\ & (!\rst~input_o\ & (!\inst1|isInCache~0_combout\ & \inst1|cpuCacheOperation.read_cache~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState.checkCache~q\,
	datab => \rst~input_o\,
	datac => \inst1|isInCache~0_combout\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|cache_to_cache_req_address_out[2]~0_combout\);

-- Location: FF_X10_Y10_N23
\inst1|cache_to_cache_req_address_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache_to_cache_req_address_out[1]~feeder_combout\,
	ena => \inst1|cache_to_cache_req_address_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_req_address_out\(1));

-- Location: FF_X10_Y10_N29
\inst1|cache_to_cache_req_address_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|cpu_req_addr_out\(0),
	sload => VCC,
	ena => \inst1|cache_to_cache_req_address_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_req_address_out\(0));

-- Location: LCCOMB_X8_Y10_N26
\inst0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~0_combout\ = (\inst0|cache[2].address\(0) & (\inst1|cache_to_cache_req_address_out\(0) & (\inst0|cache[2].address\(1) $ (!\inst1|cache_to_cache_req_address_out\(1))))) # (!\inst0|cache[2].address\(0) & 
-- (!\inst1|cache_to_cache_req_address_out\(0) & (\inst0|cache[2].address\(1) $ (!\inst1|cache_to_cache_req_address_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].address\(0),
	datab => \inst0|cache[2].address\(1),
	datac => \inst1|cache_to_cache_req_address_out\(1),
	datad => \inst1|cache_to_cache_req_address_out\(0),
	combout => \inst0|process_0~0_combout\);

-- Location: LCCOMB_X10_Y10_N8
\inst1|cache_to_cache_req_address_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache_to_cache_req_address_out[2]~feeder_combout\ = \inst1|cpu_req_addr_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpu_req_addr_out\(2),
	combout => \inst1|cache_to_cache_req_address_out[2]~feeder_combout\);

-- Location: FF_X10_Y10_N9
\inst1|cache_to_cache_req_address_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache_to_cache_req_address_out[2]~feeder_combout\,
	ena => \inst1|cache_to_cache_req_address_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_req_address_out\(2));

-- Location: LCCOMB_X8_Y10_N2
\inst0|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~1_combout\ = (\inst0|cache[2].MSI.invalid~q\ & (\inst0|process_0~0_combout\ & (\inst0|cache[2].address\(2) $ (!\inst1|cache_to_cache_req_address_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].MSI.invalid~q\,
	datab => \inst0|cache[2].address\(2),
	datac => \inst0|process_0~0_combout\,
	datad => \inst1|cache_to_cache_req_address_out\(2),
	combout => \inst0|process_0~1_combout\);

-- Location: LCCOMB_X11_Y10_N6
\inst0|Selector196~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector196~1_combout\ = (\inst0|Selector196~0_combout\ & ((\inst0|indexOfCache~8_combout\))) # (!\inst0|Selector196~0_combout\ & (\inst0|indexOfCache~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|indexOfCache~3_combout\,
	datac => \inst0|Selector196~0_combout\,
	datad => \inst0|indexOfCache~8_combout\,
	combout => \inst0|Selector196~1_combout\);

-- Location: FF_X11_Y10_N7
\inst0|indexOfCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector196~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|indexOfCache\(1));

-- Location: LCCOMB_X9_Y10_N2
\inst0|cache[3].address[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].address[2]~feeder_combout\ = \inst0|Selector203~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector203~0_combout\,
	combout => \inst0|cache[3].address[2]~feeder_combout\);

-- Location: LCCOMB_X7_Y12_N12
\inst0|Selector316~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector316~0_combout\ = (!\inst0|cache[3].MSI.invalid~q\ & (((!\inst0|process_0~6_combout\) # (!\inst0|indexOfCache~3_combout\)) # (!\inst0|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].MSI.invalid~q\,
	datab => \inst0|indexOfCache~5_combout\,
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|process_0~6_combout\,
	combout => \inst0|Selector316~0_combout\);

-- Location: FF_X9_Y10_N13
\inst0|cache[3].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector205~0_combout\,
	sload => VCC,
	ena => \inst0|cache[3].address[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].address\(0));

-- Location: FF_X9_Y10_N15
\inst0|cache[3].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector204~0_combout\,
	sload => VCC,
	ena => \inst0|cache[3].address[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].address\(1));

-- Location: LCCOMB_X8_Y10_N14
\inst0|cache~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~14_combout\ = (\inst1|cpu_req_addr_out\(0) & (\inst0|cache[3].address\(0) & (\inst0|cache[3].address\(1) $ (!\inst1|cpu_req_addr_out\(1))))) # (!\inst1|cpu_req_addr_out\(0) & (!\inst0|cache[3].address\(0) & (\inst0|cache[3].address\(1) $ 
-- (!\inst1|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(0),
	datab => \inst0|cache[3].address\(0),
	datac => \inst0|cache[3].address\(1),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst0|cache~14_combout\);

-- Location: LCCOMB_X9_Y10_N26
\inst0|cache~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~15_combout\ = (\inst1|cpu_wr_req_out~q\ & (\inst0|cache[3].MSI.invalid~q\ & (\inst1|cpu_req_addr_out\(2) $ (!\inst0|cache[3].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_wr_req_out~q\,
	datab => \inst0|cache[3].MSI.invalid~q\,
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst0|cache[3].address\(2),
	combout => \inst0|cache~15_combout\);

-- Location: LCCOMB_X9_Y10_N8
\inst0|cache~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~16_combout\ = (\inst0|cache~14_combout\ & \inst0|cache~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache~14_combout\,
	datac => \inst0|cache~15_combout\,
	combout => \inst0|cache~16_combout\);

-- Location: LCCOMB_X6_Y11_N12
\inst0|Selector202~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~2_combout\ = (\inst0|sdramState.checkCache~q\ & (\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|sdramState.readResponseSDRAM~q\) # (\inst1|cache_to_cache_resp_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst0|sdramState.checkCache~q\,
	datac => \inst1|cache_to_cache_resp_out~q\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|Selector202~2_combout\);

-- Location: LCCOMB_X7_Y10_N14
\inst0|cache~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~18_combout\ = (\inst0|isInCache~0_combout\ & !\inst0|process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|process_0~14_combout\,
	combout => \inst0|cache~18_combout\);

-- Location: LCCOMB_X7_Y10_N16
\inst0|cache~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~17_combout\ = (\inst0|MSI~11_combout\ & (!\inst0|isInCache~0_combout\ & !\inst0|process_0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|MSI~11_combout\,
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|process_0~14_combout\,
	combout => \inst0|cache~17_combout\);

-- Location: LCCOMB_X7_Y10_N20
\inst0|cache~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~19_combout\ = (\inst0|cache~17_combout\) # ((\inst0|indexOfCache~10_combout\ & (\inst0|indexOfCache~8_combout\ & \inst0|cache~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~10_combout\,
	datab => \inst0|indexOfCache~8_combout\,
	datac => \inst0|cache~18_combout\,
	datad => \inst0|cache~17_combout\,
	combout => \inst0|cache~19_combout\);

-- Location: LCCOMB_X6_Y11_N30
\inst0|Selector200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector200~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & !\inst0|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|Selector200~0_combout\);

-- Location: LCCOMB_X7_Y12_N6
\inst0|Selector316~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector316~1_combout\ = (\inst0|Selector202~2_combout\ & ((\inst0|MSI~11_combout\) # ((\inst0|cache~19_combout\ & \inst0|Selector200~0_combout\)))) # (!\inst0|Selector202~2_combout\ & (((\inst0|cache~19_combout\ & \inst0|Selector200~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector202~2_combout\,
	datab => \inst0|MSI~11_combout\,
	datac => \inst0|cache~19_combout\,
	datad => \inst0|Selector200~0_combout\,
	combout => \inst0|Selector316~1_combout\);

-- Location: LCCOMB_X7_Y12_N0
\inst0|Selector316~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector316~2_combout\ = (\inst0|Selector316~1_combout\) # ((\inst0|indexOfCache~10_combout\ & (\inst0|Selector202~1_combout\ & \inst0|indexOfCache~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~10_combout\,
	datab => \inst0|Selector202~1_combout\,
	datac => \inst0|indexOfCache~8_combout\,
	datad => \inst0|Selector316~1_combout\,
	combout => \inst0|Selector316~2_combout\);

-- Location: LCCOMB_X7_Y12_N26
\inst0|Selector316~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector316~3_combout\ = (\inst0|Selector316~2_combout\ & (((!\inst0|Selector202~0_combout\)))) # (!\inst0|Selector316~2_combout\ & (!\inst0|Selector316~0_combout\ & ((!\inst0|cache~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector316~0_combout\,
	datab => \inst0|Selector202~0_combout\,
	datac => \inst0|cache~16_combout\,
	datad => \inst0|Selector316~2_combout\,
	combout => \inst0|Selector316~3_combout\);

-- Location: FF_X7_Y12_N27
\inst0|cache[3].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector316~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].MSI.invalid~q\);

-- Location: LCCOMB_X8_Y11_N18
\inst0|MSI~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~10_combout\ = ((\inst0|evictCounter\(0) & \inst0|evictCounter\(1))) # (!\inst0|cache[3].MSI.invalid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datac => \inst0|cache[3].MSI.invalid~q\,
	datad => \inst0|evictCounter\(1),
	combout => \inst0|MSI~10_combout\);

-- Location: LCCOMB_X8_Y11_N20
\inst0|MSI~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~11_combout\ = (\inst0|cache[2].MSI.invalid~q\ & (\inst0|cache[0].MSI.invalid~q\ & (\inst0|cache[1].MSI.invalid~q\ & \inst0|MSI~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].MSI.invalid~q\,
	datab => \inst0|cache[0].MSI.invalid~q\,
	datac => \inst0|cache[1].MSI.invalid~q\,
	datad => \inst0|MSI~10_combout\,
	combout => \inst0|MSI~11_combout\);

-- Location: LCCOMB_X9_Y10_N20
\inst0|cache[3].address[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].address[1]~0_combout\ = (\inst0|MSI~11_combout\ & !\inst0|cache[0].address[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|MSI~11_combout\,
	datad => \inst0|cache[0].address[0]~2_combout\,
	combout => \inst0|cache[3].address[1]~0_combout\);

-- Location: FF_X9_Y10_N3
\inst0|cache[3].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].address[2]~feeder_combout\,
	ena => \inst0|cache[3].address[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].address\(2));

-- Location: LCCOMB_X9_Y10_N16
\inst0|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~2_combout\ = (\inst0|cache[3].address\(0) & (\inst1|cache_to_cache_req_address_out\(0) & (\inst0|cache[3].address\(1) $ (!\inst1|cache_to_cache_req_address_out\(1))))) # (!\inst0|cache[3].address\(0) & 
-- (!\inst1|cache_to_cache_req_address_out\(0) & (\inst0|cache[3].address\(1) $ (!\inst1|cache_to_cache_req_address_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].address\(0),
	datab => \inst1|cache_to_cache_req_address_out\(0),
	datac => \inst0|cache[3].address\(1),
	datad => \inst1|cache_to_cache_req_address_out\(1),
	combout => \inst0|process_0~2_combout\);

-- Location: LCCOMB_X10_Y10_N6
\inst0|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~3_combout\ = (\inst0|process_0~2_combout\ & (\inst0|cache[3].MSI.invalid~q\ & (\inst0|cache[3].address\(2) $ (!\inst1|cache_to_cache_req_address_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].address\(2),
	datab => \inst1|cache_to_cache_req_address_out\(2),
	datac => \inst0|process_0~2_combout\,
	datad => \inst0|cache[3].MSI.invalid~q\,
	combout => \inst0|process_0~3_combout\);

-- Location: LCCOMB_X11_Y10_N0
\inst0|indexOfCache~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~3_combout\ = (\inst0|indexOfCache~2_combout\ & ((\inst0|process_0~1_combout\) # ((\inst0|process_0~3_combout\)))) # (!\inst0|indexOfCache~2_combout\ & (((\inst0|indexOfCache\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~1_combout\,
	datab => \inst0|indexOfCache\(1),
	datac => \inst0|process_0~3_combout\,
	datad => \inst0|indexOfCache~2_combout\,
	combout => \inst0|indexOfCache~3_combout\);

-- Location: LCCOMB_X7_Y10_N0
\inst0|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~9_combout\ = (\inst0|cache[3].address\(1) & (\inst0|cpu_req_addr_out\(1) & (\inst0|cpu_req_addr_out\(0) $ (!\inst0|cache[3].address\(0))))) # (!\inst0|cache[3].address\(1) & (!\inst0|cpu_req_addr_out\(1) & (\inst0|cpu_req_addr_out\(0) $ 
-- (!\inst0|cache[3].address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].address\(1),
	datab => \inst0|cpu_req_addr_out\(0),
	datac => \inst0|cache[3].address\(0),
	datad => \inst0|cpu_req_addr_out\(1),
	combout => \inst0|process_0~9_combout\);

-- Location: LCCOMB_X7_Y10_N18
\inst0|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~10_combout\ = (\inst0|cache[3].MSI.invalid~q\ & (\inst0|process_0~9_combout\ & (\inst0|cache[3].address\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].address\(2),
	datab => \inst0|cache[3].MSI.invalid~q\,
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst0|process_0~9_combout\,
	combout => \inst0|process_0~10_combout\);

-- Location: LCCOMB_X7_Y10_N28
\inst0|indexOfCache~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~8_combout\ = (\inst0|isInCache~0_combout\ & ((\inst0|process_0~8_combout\) # ((\inst0|process_0~10_combout\)))) # (!\inst0|isInCache~0_combout\ & (((\inst0|indexOfCache~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isInCache~0_combout\,
	datab => \inst0|process_0~8_combout\,
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|process_0~10_combout\,
	combout => \inst0|indexOfCache~8_combout\);

-- Location: LCCOMB_X6_Y10_N8
\inst0|cache~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~37_combout\ = (!\inst0|process_0~10_combout\ & \inst0|process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|process_0~10_combout\,
	datac => \inst0|process_0~8_combout\,
	combout => \inst0|cache~37_combout\);

-- Location: LCCOMB_X6_Y10_N20
\inst0|cache~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~13_combout\ = (!\inst0|process_0~14_combout\ & ((\inst0|isInCache~0_combout\ & ((\inst0|cache~37_combout\))) # (!\inst0|isInCache~0_combout\ & (\inst0|MSI~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|MSI~9_combout\,
	datab => \inst0|cache~37_combout\,
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|process_0~14_combout\,
	combout => \inst0|cache~13_combout\);

-- Location: LCCOMB_X7_Y12_N24
\inst0|Selector278~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector278~1_combout\ = (\inst0|Selector202~2_combout\ & ((\inst0|MSI~9_combout\) # ((\inst0|Selector200~0_combout\ & \inst0|cache~13_combout\)))) # (!\inst0|Selector202~2_combout\ & (\inst0|Selector200~0_combout\ & ((\inst0|cache~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector202~2_combout\,
	datab => \inst0|Selector200~0_combout\,
	datac => \inst0|MSI~9_combout\,
	datad => \inst0|cache~13_combout\,
	combout => \inst0|Selector278~1_combout\);

-- Location: LCCOMB_X7_Y12_N14
\inst0|Selector278~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector278~2_combout\ = (\inst0|Selector278~1_combout\) # ((!\inst0|indexOfCache~10_combout\ & (\inst0|Selector202~1_combout\ & \inst0|indexOfCache~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~10_combout\,
	datab => \inst0|Selector202~1_combout\,
	datac => \inst0|indexOfCache~8_combout\,
	datad => \inst0|Selector278~1_combout\,
	combout => \inst0|Selector278~2_combout\);

-- Location: LCCOMB_X8_Y12_N24
\inst0|Selector278~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector278~0_combout\ = (!\inst0|cache[2].MSI.invalid~q\ & (((\inst0|indexOfCache~5_combout\) # (!\inst0|process_0~6_combout\)) # (!\inst0|indexOfCache~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|cache[2].MSI.invalid~q\,
	datac => \inst0|indexOfCache~5_combout\,
	datad => \inst0|process_0~6_combout\,
	combout => \inst0|Selector278~0_combout\);

-- Location: LCCOMB_X7_Y12_N20
\inst0|Selector278~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector278~3_combout\ = (\inst0|Selector278~2_combout\ & (((!\inst0|Selector202~0_combout\)))) # (!\inst0|Selector278~2_combout\ & (!\inst0|cache~12_combout\ & ((!\inst0|Selector278~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache~12_combout\,
	datab => \inst0|Selector202~0_combout\,
	datac => \inst0|Selector278~2_combout\,
	datad => \inst0|Selector278~0_combout\,
	combout => \inst0|Selector278~3_combout\);

-- Location: FF_X7_Y12_N21
\inst0|cache[2].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector278~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].MSI.invalid~q\);

-- Location: LCCOMB_X7_Y10_N10
\inst0|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~7_combout\ = (\inst0|cache[2].address\(0) & (\inst0|cpu_req_addr_out\(0) & (\inst0|cache[2].address\(1) $ (!\inst0|cpu_req_addr_out\(1))))) # (!\inst0|cache[2].address\(0) & (!\inst0|cpu_req_addr_out\(0) & (\inst0|cache[2].address\(1) $ 
-- (!\inst0|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].address\(0),
	datab => \inst0|cpu_req_addr_out\(0),
	datac => \inst0|cache[2].address\(1),
	datad => \inst0|cpu_req_addr_out\(1),
	combout => \inst0|process_0~7_combout\);

-- Location: LCCOMB_X7_Y10_N24
\inst0|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~8_combout\ = (\inst0|cache[2].MSI.invalid~q\ & (\inst0|process_0~7_combout\ & (\inst0|cache[2].address\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[2].MSI.invalid~q\,
	datab => \inst0|cache[2].address\(2),
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst0|process_0~7_combout\,
	combout => \inst0|process_0~8_combout\);

-- Location: LCCOMB_X7_Y10_N8
\inst0|indexOfCache~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~6_combout\ = (\inst0|cache[1].address\(0) & (\inst0|cpu_req_addr_out\(0) & (\inst0|cache[1].address\(1) $ (!\inst0|cpu_req_addr_out\(1))))) # (!\inst0|cache[1].address\(0) & (!\inst0|cpu_req_addr_out\(0) & (\inst0|cache[1].address\(1) 
-- $ (!\inst0|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].address\(0),
	datab => \inst0|cache[1].address\(1),
	datac => \inst0|cpu_req_addr_out\(0),
	datad => \inst0|cpu_req_addr_out\(1),
	combout => \inst0|indexOfCache~6_combout\);

-- Location: LCCOMB_X7_Y10_N4
\inst0|indexOfCache~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~7_combout\ = (\inst0|cache[1].MSI.invalid~q\ & (\inst0|indexOfCache~6_combout\ & (\inst0|cache[1].address\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].MSI.invalid~q\,
	datab => \inst0|cache[1].address\(2),
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst0|indexOfCache~6_combout\,
	combout => \inst0|indexOfCache~7_combout\);

-- Location: LCCOMB_X7_Y10_N2
\inst0|indexOfCache~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~9_combout\ = (\inst0|process_0~10_combout\) # ((!\inst0|process_0~8_combout\ & ((\inst0|indexOfCache~7_combout\) # (!\inst0|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~12_combout\,
	datab => \inst0|process_0~8_combout\,
	datac => \inst0|indexOfCache~7_combout\,
	datad => \inst0|process_0~10_combout\,
	combout => \inst0|indexOfCache~9_combout\);

-- Location: LCCOMB_X11_Y10_N8
\inst0|Selector197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector197~0_combout\ = (\inst0|Selector196~0_combout\ & (\inst0|indexOfCache~9_combout\ & ((\inst0|isInCache~0_combout\) # (\inst0|indexOfCache~5_combout\)))) # (!\inst0|Selector196~0_combout\ & (((\inst0|indexOfCache~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isInCache~0_combout\,
	datab => \inst0|indexOfCache~5_combout\,
	datac => \inst0|Selector196~0_combout\,
	datad => \inst0|indexOfCache~9_combout\,
	combout => \inst0|Selector197~0_combout\);

-- Location: FF_X11_Y10_N9
\inst0|indexOfCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector197~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|indexOfCache\(0));

-- Location: LCCOMB_X9_Y10_N30
\inst0|cache[0].address[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].address[1]~feeder_combout\ = \inst0|Selector204~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|Selector204~0_combout\,
	combout => \inst0|cache[0].address[1]~feeder_combout\);

-- Location: LCCOMB_X9_Y10_N18
\inst0|MSI~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~12_combout\ = (\inst0|evictCounter\(0)) # ((\inst0|evictCounter\(1)) # ((!\inst0|cache[3].MSI.invalid~q\) # (!\inst0|cache[2].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|evictCounter\(1),
	datac => \inst0|cache[2].MSI.invalid~q\,
	datad => \inst0|cache[3].MSI.invalid~q\,
	combout => \inst0|MSI~12_combout\);

-- Location: LCCOMB_X9_Y10_N6
\inst0|cache[0].address[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].address[0]~3_combout\ = (!\inst0|cache[0].address[0]~2_combout\ & (((\inst0|cache[1].MSI.invalid~q\ & !\inst0|MSI~12_combout\)) # (!\inst0|cache[0].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].MSI.invalid~q\,
	datab => \inst0|MSI~12_combout\,
	datac => \inst0|cache[0].MSI.invalid~q\,
	datad => \inst0|cache[0].address[0]~2_combout\,
	combout => \inst0|cache[0].address[0]~3_combout\);

-- Location: FF_X9_Y10_N31
\inst0|cache[0].address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].address[1]~feeder_combout\,
	ena => \inst0|cache[0].address[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].address\(1));

-- Location: FF_X9_Y10_N5
\inst0|cache[0].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector205~0_combout\,
	sload => VCC,
	ena => \inst0|cache[0].address[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].address\(0));

-- Location: LCCOMB_X9_Y10_N0
\inst0|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~4_combout\ = (\inst0|cache[0].address\(1) & (\inst1|cache_to_cache_req_address_out\(1) & (\inst1|cache_to_cache_req_address_out\(0) $ (!\inst0|cache[0].address\(0))))) # (!\inst0|cache[0].address\(1) & 
-- (!\inst1|cache_to_cache_req_address_out\(1) & (\inst1|cache_to_cache_req_address_out\(0) $ (!\inst0|cache[0].address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].address\(1),
	datab => \inst1|cache_to_cache_req_address_out\(0),
	datac => \inst0|cache[0].address\(0),
	datad => \inst1|cache_to_cache_req_address_out\(1),
	combout => \inst0|process_0~4_combout\);

-- Location: FF_X9_Y10_N23
\inst0|cache[0].address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector203~0_combout\,
	sload => VCC,
	ena => \inst0|cache[0].address[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].address\(2));

-- Location: LCCOMB_X10_Y10_N20
\inst0|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~5_combout\ = (\inst0|cache[0].MSI.invalid~q\ & (\inst0|process_0~4_combout\ & (\inst1|cache_to_cache_req_address_out\(2) $ (!\inst0|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].MSI.invalid~q\,
	datab => \inst1|cache_to_cache_req_address_out\(2),
	datac => \inst0|process_0~4_combout\,
	datad => \inst0|cache[0].address\(2),
	combout => \inst0|process_0~5_combout\);

-- Location: LCCOMB_X11_Y10_N30
\inst0|indexOfCache~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~4_combout\ = (\inst0|process_0~3_combout\) # ((!\inst0|process_0~1_combout\ & ((\inst0|indexOfCache~1_combout\) # (!\inst0|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~1_combout\,
	datab => \inst0|process_0~5_combout\,
	datac => \inst0|process_0~3_combout\,
	datad => \inst0|process_0~1_combout\,
	combout => \inst0|indexOfCache~4_combout\);

-- Location: LCCOMB_X11_Y10_N2
\inst0|indexOfCache~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~5_combout\ = (\inst0|indexOfCache~4_combout\ & ((\inst0|indexOfCache\(0)) # (\inst0|indexOfCache~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|indexOfCache\(0),
	datac => \inst0|indexOfCache~4_combout\,
	datad => \inst0|indexOfCache~2_combout\,
	combout => \inst0|indexOfCache~5_combout\);

-- Location: LCCOMB_X7_Y11_N22
\inst0|Selector240~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector240~0_combout\ = (!\inst0|cache[1].MSI.invalid~q\ & (((\inst0|indexOfCache~3_combout\) # (!\inst0|process_0~6_combout\)) # (!\inst0|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~5_combout\,
	datab => \inst0|cache[1].MSI.invalid~q\,
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|process_0~6_combout\,
	combout => \inst0|Selector240~0_combout\);

-- Location: LCCOMB_X6_Y10_N4
\inst0|cache~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~27_combout\ = (\inst0|MSI~15_combout\ & (!\inst0|isInCache~0_combout\ & !\inst0|process_0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|MSI~15_combout\,
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|process_0~14_combout\,
	combout => \inst0|cache~27_combout\);

-- Location: LCCOMB_X6_Y10_N14
\inst0|cache~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~28_combout\ = (\inst0|cache~27_combout\) # ((\inst0|indexOfCache~10_combout\ & (\inst0|cache~18_combout\ & !\inst0|indexOfCache~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~10_combout\,
	datab => \inst0|cache~27_combout\,
	datac => \inst0|cache~18_combout\,
	datad => \inst0|indexOfCache~8_combout\,
	combout => \inst0|cache~28_combout\);

-- Location: LCCOMB_X6_Y10_N24
\inst0|Selector240~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector240~1_combout\ = (\inst0|Selector200~0_combout\ & ((\inst0|cache~28_combout\) # ((\inst0|MSI~15_combout\ & \inst0|Selector202~2_combout\)))) # (!\inst0|Selector200~0_combout\ & (\inst0|MSI~15_combout\ & (\inst0|Selector202~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector200~0_combout\,
	datab => \inst0|MSI~15_combout\,
	datac => \inst0|Selector202~2_combout\,
	datad => \inst0|cache~28_combout\,
	combout => \inst0|Selector240~1_combout\);

-- Location: LCCOMB_X7_Y11_N24
\inst0|Selector240~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector240~2_combout\ = (\inst0|Selector240~1_combout\) # ((!\inst0|indexOfCache~8_combout\ & (\inst0|Selector202~1_combout\ & \inst0|indexOfCache~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~8_combout\,
	datab => \inst0|Selector202~1_combout\,
	datac => \inst0|indexOfCache~10_combout\,
	datad => \inst0|Selector240~1_combout\,
	combout => \inst0|Selector240~2_combout\);

-- Location: LCCOMB_X7_Y11_N0
\inst0|Selector240~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector240~3_combout\ = (\inst0|Selector240~2_combout\ & (((!\inst0|Selector202~0_combout\)))) # (!\inst0|Selector240~2_combout\ & (!\inst0|cache~26_combout\ & ((!\inst0|Selector240~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache~26_combout\,
	datab => \inst0|Selector202~0_combout\,
	datac => \inst0|Selector240~0_combout\,
	datad => \inst0|Selector240~2_combout\,
	combout => \inst0|Selector240~3_combout\);

-- Location: FF_X7_Y11_N1
\inst0|cache[1].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector240~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].MSI.invalid~q\);

-- Location: LCCOMB_X8_Y11_N4
\inst0|emptyCacheIndex~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|emptyCacheIndex~0_combout\ = (\inst0|cache[1].MSI.invalid~q\ & (\inst0|cache[0].MSI.invalid~q\ & (\inst0|cache[3].MSI.invalid~q\ & \inst0|cache[2].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].MSI.invalid~q\,
	datab => \inst0|cache[0].MSI.invalid~q\,
	datac => \inst0|cache[3].MSI.invalid~q\,
	datad => \inst0|cache[2].MSI.invalid~q\,
	combout => \inst0|emptyCacheIndex~0_combout\);

-- Location: LCCOMB_X7_Y7_N28
\inst0|evictCounter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|evictCounter[0]~1_combout\ = \inst0|evictCounter\(0) $ (((!\inst0|cache[0].address[0]~2_combout\ & \inst0|emptyCacheIndex~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache[0].address[0]~2_combout\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|emptyCacheIndex~0_combout\,
	combout => \inst0|evictCounter[0]~1_combout\);

-- Location: FF_X7_Y7_N29
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

-- Location: LCCOMB_X8_Y11_N6
\inst0|evictCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|evictCounter[1]~0_combout\ = \inst0|evictCounter\(1) $ (((\inst0|evictCounter\(0) & (\inst0|emptyCacheIndex~0_combout\ & !\inst0|cache[0].address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|emptyCacheIndex~0_combout\,
	datac => \inst0|evictCounter\(1),
	datad => \inst0|cache[0].address[0]~2_combout\,
	combout => \inst0|evictCounter[1]~0_combout\);

-- Location: FF_X8_Y11_N7
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

-- Location: LCCOMB_X8_Y11_N16
\inst0|MSI~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~14_combout\ = (\inst0|cache[0].MSI.invalid~q\ & !\inst0|cache[1].MSI.invalid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache[0].MSI.invalid~q\,
	datac => \inst0|cache[1].MSI.invalid~q\,
	combout => \inst0|MSI~14_combout\);

-- Location: LCCOMB_X8_Y11_N14
\inst0|MSI~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~15_combout\ = (\inst0|MSI~14_combout\) # ((!\inst0|evictCounter\(1) & (\inst0|emptyCacheIndex~0_combout\ & \inst0|evictCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|emptyCacheIndex~0_combout\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|MSI~14_combout\,
	combout => \inst0|MSI~15_combout\);

-- Location: LCCOMB_X10_Y10_N4
\inst0|cache[1].address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].address[0]~0_combout\ = (\inst0|MSI~15_combout\ & !\inst0|cache[0].address[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|MSI~15_combout\,
	datad => \inst0|cache[0].address[0]~2_combout\,
	combout => \inst0|cache[1].address[0]~0_combout\);

-- Location: FF_X10_Y10_N11
\inst0|cache[1].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].address[0]~feeder_combout\,
	ena => \inst0|cache[1].address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].address\(0));

-- Location: LCCOMB_X10_Y10_N30
\inst0|indexOfCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~0_combout\ = (\inst0|cache[1].address\(0) & (\inst1|cache_to_cache_req_address_out\(0) & (\inst0|cache[1].address\(1) $ (!\inst1|cache_to_cache_req_address_out\(1))))) # (!\inst0|cache[1].address\(0) & 
-- (!\inst1|cache_to_cache_req_address_out\(0) & (\inst0|cache[1].address\(1) $ (!\inst1|cache_to_cache_req_address_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].address\(0),
	datab => \inst0|cache[1].address\(1),
	datac => \inst1|cache_to_cache_req_address_out\(1),
	datad => \inst1|cache_to_cache_req_address_out\(0),
	combout => \inst0|indexOfCache~0_combout\);

-- Location: LCCOMB_X10_Y10_N14
\inst0|indexOfCache~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~1_combout\ = (\inst0|indexOfCache~0_combout\ & (\inst0|cache[1].MSI.invalid~q\ & (\inst1|cache_to_cache_req_address_out\(2) $ (!\inst0|cache[1].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~0_combout\,
	datab => \inst1|cache_to_cache_req_address_out\(2),
	datac => \inst0|cache[1].MSI.invalid~q\,
	datad => \inst0|cache[1].address\(2),
	combout => \inst0|indexOfCache~1_combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst0|indexOfCache~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|indexOfCache~2_combout\ = (\inst0|indexOfCache~1_combout\) # ((\inst0|process_0~5_combout\) # ((\inst0|process_0~3_combout\) # (\inst0|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~1_combout\,
	datab => \inst0|process_0~5_combout\,
	datac => \inst0|process_0~3_combout\,
	datad => \inst0|process_0~1_combout\,
	combout => \inst0|indexOfCache~2_combout\);

-- Location: LCCOMB_X8_Y12_N22
\inst0|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Decoder0~0_combout\ = (\inst0|indexOfCache~2_combout\ & (\inst0|indexOfCache~3_combout\ & \inst0|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|indexOfCache~2_combout\,
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|Mux0~1_combout\,
	combout => \inst0|Decoder0~0_combout\);

-- Location: LCCOMB_X7_Y12_N22
\inst0|cache~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~29_combout\ = (!\inst0|cache~12_combout\ & (\inst0|cache[2].MSI.modified~q\ & ((\inst0|indexOfCache~5_combout\) # (!\inst0|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache~12_combout\,
	datab => \inst0|indexOfCache~5_combout\,
	datac => \inst0|cache[2].MSI.modified~q\,
	datad => \inst0|Decoder0~0_combout\,
	combout => \inst0|cache~29_combout\);

-- Location: LCCOMB_X7_Y12_N10
\inst0|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector82~0_combout\ = (\inst0|cache~29_combout\ & (((!\inst0|sdramState.readResponseSDRAM~q\ & !\inst1|cache_to_cache_resp_out~q\)) # (!\inst0|MSI~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|MSI~9_combout\,
	datab => \inst0|sdramState.readResponseSDRAM~q\,
	datac => \inst0|cache~29_combout\,
	datad => \inst1|cache_to_cache_resp_out~q\,
	combout => \inst0|Selector82~0_combout\);

-- Location: LCCOMB_X7_Y12_N2
\inst0|cache~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~39_combout\ = (\inst0|process_0~14_combout\ & (\inst0|indexOfCache~8_combout\ & \inst0|isInCache~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~14_combout\,
	datac => \inst0|indexOfCache~8_combout\,
	datad => \inst0|isInCache~0_combout\,
	combout => \inst0|cache~39_combout\);

-- Location: LCCOMB_X7_Y12_N28
\inst0|cache~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~30_combout\ = (\inst0|cache~13_combout\) # ((\inst0|cache~29_combout\ & ((\inst0|indexOfCache~10_combout\) # (!\inst0|cache~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~10_combout\,
	datab => \inst0|cache~13_combout\,
	datac => \inst0|cache~29_combout\,
	datad => \inst0|cache~39_combout\,
	combout => \inst0|cache~30_combout\);

-- Location: LCCOMB_X7_Y12_N16
\inst0|cache[2].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].MSI.modified~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|Selector82~0_combout\)) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|cache~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector82~0_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|cache~30_combout\,
	combout => \inst0|cache[2].MSI.modified~0_combout\);

-- Location: LCCOMB_X6_Y11_N4
\inst0|Selector200~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector200~1_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & ((!\inst0|sdramState.checkCache~q\))) # (!\inst0|cpuCacheOperation.read_cache~q\ & (!\inst0|cpuCacheOperation.write_cache~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datac => \inst0|cpuCacheOperation.write_cache~q\,
	datad => \inst0|sdramState.checkCache~q\,
	combout => \inst0|Selector200~1_combout\);

-- Location: FF_X7_Y12_N17
\inst0|cache[2].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].MSI.modified~0_combout\,
	asdata => \inst0|cache~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].MSI.modified~q\);

-- Location: LCCOMB_X7_Y12_N8
\inst0|cache~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~35_combout\ = (\inst0|cache[3].MSI.modified~q\ & (!\inst0|cache~16_combout\ & ((!\inst0|Decoder0~0_combout\) # (!\inst0|indexOfCache~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].MSI.modified~q\,
	datab => \inst0|indexOfCache~5_combout\,
	datac => \inst0|cache~16_combout\,
	datad => \inst0|Decoder0~0_combout\,
	combout => \inst0|cache~35_combout\);

-- Location: LCCOMB_X7_Y12_N4
\inst0|Selector120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector120~0_combout\ = (\inst0|cache~35_combout\ & (((!\inst0|sdramState.readResponseSDRAM~q\ & !\inst1|cache_to_cache_resp_out~q\)) # (!\inst0|MSI~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst0|MSI~11_combout\,
	datac => \inst0|cache~35_combout\,
	datad => \inst1|cache_to_cache_resp_out~q\,
	combout => \inst0|Selector120~0_combout\);

-- Location: LCCOMB_X7_Y12_N18
\inst0|cache~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~36_combout\ = (\inst0|cache~19_combout\) # ((\inst0|cache~35_combout\ & ((!\inst0|cache~39_combout\) # (!\inst0|indexOfCache~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~10_combout\,
	datab => \inst0|cache~19_combout\,
	datac => \inst0|cache~35_combout\,
	datad => \inst0|cache~39_combout\,
	combout => \inst0|cache~36_combout\);

-- Location: LCCOMB_X7_Y12_N30
\inst0|cache[3].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].MSI.modified~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|Selector120~0_combout\)) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|cache~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|Selector120~0_combout\,
	datad => \inst0|cache~36_combout\,
	combout => \inst0|cache[3].MSI.modified~0_combout\);

-- Location: FF_X7_Y12_N31
\inst0|cache[3].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].MSI.modified~0_combout\,
	asdata => \inst0|cache~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].MSI.modified~q\);

-- Location: LCCOMB_X9_Y10_N12
\inst0|MSI~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|MSI~13_combout\ = (\inst0|cache[0].MSI.invalid~q\ & ((\inst0|MSI~12_combout\) # (!\inst0|cache[1].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].MSI.invalid~q\,
	datab => \inst0|MSI~12_combout\,
	datad => \inst0|cache[0].MSI.invalid~q\,
	combout => \inst0|MSI~13_combout\);

-- Location: LCCOMB_X8_Y10_N16
\inst0|cache~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~20_combout\ = (\inst1|cpu_req_addr_out\(0) & (\inst0|cache[0].address\(0) & (\inst0|cache[0].address\(1) $ (!\inst1|cpu_req_addr_out\(1))))) # (!\inst1|cpu_req_addr_out\(0) & (!\inst0|cache[0].address\(0) & (\inst0|cache[0].address\(1) $ 
-- (!\inst1|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpu_req_addr_out\(0),
	datab => \inst0|cache[0].address\(1),
	datac => \inst0|cache[0].address\(0),
	datad => \inst1|cpu_req_addr_out\(1),
	combout => \inst0|cache~20_combout\);

-- Location: LCCOMB_X9_Y10_N28
\inst0|cache~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~21_combout\ = (\inst0|cache[0].MSI.invalid~q\ & (\inst1|cpu_wr_req_out~q\ & (\inst0|cache[0].address\(2) $ (!\inst1|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].MSI.invalid~q\,
	datab => \inst0|cache[0].address\(2),
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst1|cpu_wr_req_out~q\,
	combout => \inst0|cache~21_combout\);

-- Location: LCCOMB_X8_Y10_N22
\inst0|cache~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~22_combout\ = (\inst0|cache~20_combout\ & \inst0|cache~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cache~20_combout\,
	datad => \inst0|cache~21_combout\,
	combout => \inst0|cache~22_combout\);

-- Location: LCCOMB_X8_Y12_N0
\inst0|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Decoder0~1_combout\ = (\inst0|indexOfCache~2_combout\ & (!\inst0|indexOfCache~3_combout\ & \inst0|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|indexOfCache~2_combout\,
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|Mux0~1_combout\,
	combout => \inst0|Decoder0~1_combout\);

-- Location: LCCOMB_X7_Y11_N4
\inst0|cache~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~33_combout\ = (!\inst0|cache~22_combout\ & (\inst0|cache[0].MSI.modified~q\ & ((\inst0|indexOfCache~5_combout\) # (!\inst0|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~5_combout\,
	datab => \inst0|cache~22_combout\,
	datac => \inst0|cache[0].MSI.modified~q\,
	datad => \inst0|Decoder0~1_combout\,
	combout => \inst0|cache~33_combout\);

-- Location: LCCOMB_X7_Y11_N12
\inst0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector6~0_combout\ = (\inst0|cache~33_combout\ & ((\inst0|MSI~13_combout\) # ((!\inst1|cache_to_cache_resp_out~q\ & !\inst0|sdramState.readResponseSDRAM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache_to_cache_resp_out~q\,
	datab => \inst0|MSI~13_combout\,
	datac => \inst0|cache~33_combout\,
	datad => \inst0|sdramState.readResponseSDRAM~q\,
	combout => \inst0|Selector6~0_combout\);

-- Location: LCCOMB_X7_Y10_N26
\inst0|cache~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~38_combout\ = ((\inst0|process_0~8_combout\) # ((\inst0|indexOfCache~7_combout\) # (\inst0|process_0~10_combout\))) # (!\inst0|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~12_combout\,
	datab => \inst0|process_0~8_combout\,
	datac => \inst0|indexOfCache~7_combout\,
	datad => \inst0|process_0~10_combout\,
	combout => \inst0|cache~38_combout\);

-- Location: LCCOMB_X6_Y10_N18
\inst0|cache~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~23_combout\ = (\inst0|process_0~14_combout\) # ((\inst0|isInCache~0_combout\ & ((\inst0|cache~38_combout\))) # (!\inst0|isInCache~0_combout\ & (\inst0|MSI~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|MSI~13_combout\,
	datab => \inst0|cache~38_combout\,
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|process_0~14_combout\,
	combout => \inst0|cache~23_combout\);

-- Location: LCCOMB_X6_Y11_N14
\inst0|cache~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~41_combout\ = (((\inst0|indexOfCache~8_combout\) # (\inst0|indexOfCache~10_combout\)) # (!\inst0|isInCache~0_combout\)) # (!\inst0|process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~14_combout\,
	datab => \inst0|isInCache~0_combout\,
	datac => \inst0|indexOfCache~8_combout\,
	datad => \inst0|indexOfCache~10_combout\,
	combout => \inst0|cache~41_combout\);

-- Location: LCCOMB_X7_Y11_N2
\inst0|cache~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~34_combout\ = ((\inst0|cache~33_combout\ & \inst0|cache~41_combout\)) # (!\inst0|cache~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache~23_combout\,
	datac => \inst0|cache~33_combout\,
	datad => \inst0|cache~41_combout\,
	combout => \inst0|cache~34_combout\);

-- Location: LCCOMB_X7_Y11_N26
\inst0|cache[0].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].MSI.modified~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|Selector6~0_combout\)) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|cache~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector6~0_combout\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst0|cache~34_combout\,
	combout => \inst0|cache[0].MSI.modified~0_combout\);

-- Location: FF_X7_Y11_N27
\inst0|cache[0].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].MSI.modified~0_combout\,
	asdata => \inst0|cache~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].MSI.modified~q\);

-- Location: LCCOMB_X7_Y11_N10
\inst0|cache~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~31_combout\ = (!\inst0|cache~26_combout\ & (\inst0|cache[1].MSI.modified~q\ & ((!\inst0|Decoder0~1_combout\) # (!\inst0|indexOfCache~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache~26_combout\,
	datab => \inst0|cache[1].MSI.modified~q\,
	datac => \inst0|indexOfCache~5_combout\,
	datad => \inst0|Decoder0~1_combout\,
	combout => \inst0|cache~31_combout\);

-- Location: LCCOMB_X7_Y11_N18
\inst0|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector44~0_combout\ = (\inst0|cache~31_combout\ & (((!\inst0|sdramState.readResponseSDRAM~q\ & !\inst1|cache_to_cache_resp_out~q\)) # (!\inst0|MSI~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst1|cache_to_cache_resp_out~q\,
	datac => \inst0|MSI~15_combout\,
	datad => \inst0|cache~31_combout\,
	combout => \inst0|Selector44~0_combout\);

-- Location: LCCOMB_X7_Y11_N30
\inst0|cache~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~40_combout\ = (((\inst0|indexOfCache~8_combout\) # (!\inst0|indexOfCache~10_combout\)) # (!\inst0|process_0~14_combout\)) # (!\inst0|isInCache~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|isInCache~0_combout\,
	datab => \inst0|process_0~14_combout\,
	datac => \inst0|indexOfCache~10_combout\,
	datad => \inst0|indexOfCache~8_combout\,
	combout => \inst0|cache~40_combout\);

-- Location: LCCOMB_X7_Y11_N16
\inst0|cache~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache~32_combout\ = (\inst0|cache~28_combout\) # ((\inst0|cache~40_combout\ & \inst0|cache~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache~28_combout\,
	datac => \inst0|cache~40_combout\,
	datad => \inst0|cache~31_combout\,
	combout => \inst0|cache~32_combout\);

-- Location: LCCOMB_X7_Y11_N28
\inst0|cache[1].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].MSI.modified~0_combout\ = (\inst0|cpuCacheOperation.read_cache~q\ & (\inst0|Selector44~0_combout\)) # (!\inst0|cpuCacheOperation.read_cache~q\ & ((\inst0|cache~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \inst0|Selector44~0_combout\,
	datad => \inst0|cache~32_combout\,
	combout => \inst0|cache[1].MSI.modified~0_combout\);

-- Location: FF_X7_Y11_N29
\inst0|cache[1].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].MSI.modified~0_combout\,
	asdata => \inst0|cache~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].MSI.modified~q\);

-- Location: LCCOMB_X8_Y11_N10
\inst0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux0~0_combout\ = (\inst0|indexOfCache~3_combout\ & (((\inst0|indexOfCache~5_combout\)))) # (!\inst0|indexOfCache~3_combout\ & ((\inst0|indexOfCache~5_combout\ & ((\inst0|cache[1].MSI.modified~q\))) # (!\inst0|indexOfCache~5_combout\ & 
-- (\inst0|cache[0].MSI.modified~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].MSI.modified~q\,
	datab => \inst0|cache[1].MSI.modified~q\,
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|indexOfCache~5_combout\,
	combout => \inst0|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y11_N0
\inst0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux0~1_combout\ = (\inst0|indexOfCache~3_combout\ & ((\inst0|Mux0~0_combout\ & ((\inst0|cache[3].MSI.modified~q\))) # (!\inst0|Mux0~0_combout\ & (\inst0|cache[2].MSI.modified~q\)))) # (!\inst0|indexOfCache~3_combout\ & (((\inst0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|cache[2].MSI.modified~q\,
	datac => \inst0|cache[3].MSI.modified~q\,
	datad => \inst0|Mux0~0_combout\,
	combout => \inst0|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y12_N2
\inst0|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~6_combout\ = (\inst0|indexOfCache~2_combout\ & \inst0|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|indexOfCache~2_combout\,
	datad => \inst0|Mux0~1_combout\,
	combout => \inst0|process_0~6_combout\);

-- Location: LCCOMB_X8_Y12_N28
\inst0|cache_to_cache_resp_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache_to_cache_resp_out~feeder_combout\ = \inst0|process_0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|process_0~6_combout\,
	combout => \inst0|cache_to_cache_resp_out~feeder_combout\);

-- Location: FF_X8_Y12_N29
\inst0|cache_to_cache_resp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache_to_cache_resp_out~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_resp_out~q\);

-- Location: LCCOMB_X3_Y9_N0
\inst1|read_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|read_en~0_combout\ = (!\inst0|cache_to_cache_resp_out~q\ & \inst1|sdramState.readResponseCACHE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out~q\,
	datad => \inst1|sdramState.readResponseCACHE~q\,
	combout => \inst1|read_en~0_combout\);

-- Location: FF_X3_Y9_N1
\inst1|sdramState.readResponseSDRAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|read_en~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst1|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdramState.readResponseSDRAM~q\);

-- Location: LCCOMB_X8_Y9_N22
\inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|sdramState.readResponseSDRAM~q\) # ((!\inst1|sdramState.checkCache~q\ & \inst1|isInCache~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sdramState.checkCache~q\,
	datac => \inst1|sdramState.readResponseSDRAM~q\,
	datad => \inst1|isInCache~0_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X8_Y9_N1
\inst1|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|ALT_INV_cpuCacheOperation.read_cache~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|hit~q\);

-- Location: LCCOMB_X1_Y10_N30
\inst1|Selector390~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector390~0_combout\ = (\inst1|CurrentState.writeData~q\) # ((\inst1|CurrentState.requestData~q\ & !\inst1|hit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|CurrentState.writeData~q\,
	datac => \inst1|CurrentState.requestData~q\,
	datad => \inst1|hit~q\,
	combout => \inst1|Selector390~0_combout\);

-- Location: FF_X1_Y10_N31
\inst1|CurrentState.requestData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector390~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|CurrentState.requestData~q\);

-- Location: LCCOMB_X1_Y10_N14
\inst1|Selector391~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector391~0_combout\ = ((\inst1|CurrentState.requestData~q\ & \inst1|hit~q\)) # (!\inst0|CurrentState.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|CurrentState.initial~q\,
	datac => \inst1|CurrentState.requestData~q\,
	datad => \inst1|hit~q\,
	combout => \inst1|Selector391~0_combout\);

-- Location: FF_X8_Y10_N13
\inst1|cpu_wr_req_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector391~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpu_wr_req_out~q\);

-- Location: LCCOMB_X8_Y11_N12
\inst0|Selector202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~0_combout\ = (!\inst0|cpuCacheOperation.read_cache~q\ & (!\cpu0_prio~input_o\ & (\inst1|cpu_wr_req_out~q\ & \inst1|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.read_cache~q\,
	datab => \cpu0_prio~input_o\,
	datac => \inst1|cpu_wr_req_out~q\,
	datad => \inst1|process_0~16_combout\,
	combout => \inst0|Selector202~0_combout\);

-- Location: LCCOMB_X8_Y11_N28
\inst0|Selector202~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~5_combout\ = (\inst0|Selector202~2_combout\ & (((\inst0|cache[1].MSI.invalid~q\ & !\inst0|MSI~12_combout\)) # (!\inst0|cache[0].MSI.invalid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].MSI.invalid~q\,
	datab => \inst0|cache[0].MSI.invalid~q\,
	datac => \inst0|Selector202~2_combout\,
	datad => \inst0|MSI~12_combout\,
	combout => \inst0|Selector202~5_combout\);

-- Location: LCCOMB_X7_Y11_N20
\inst0|Selector202~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~4_combout\ = (\inst0|Selector202~1_combout\ & (!\inst0|indexOfCache~10_combout\ & !\inst0|indexOfCache~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector202~1_combout\,
	datac => \inst0|indexOfCache~10_combout\,
	datad => \inst0|indexOfCache~8_combout\,
	combout => \inst0|Selector202~4_combout\);

-- Location: LCCOMB_X8_Y11_N2
\inst0|Selector202~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~6_combout\ = (\inst0|Selector202~5_combout\) # ((\inst0|Selector202~4_combout\) # ((\inst0|Selector200~0_combout\ & !\inst0|cache~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector200~0_combout\,
	datab => \inst0|Selector202~5_combout\,
	datac => \inst0|cache~23_combout\,
	datad => \inst0|Selector202~4_combout\,
	combout => \inst0|Selector202~6_combout\);

-- Location: LCCOMB_X8_Y11_N22
\inst0|Selector202~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~3_combout\ = (!\inst0|cache[0].MSI.invalid~q\ & ((\inst0|indexOfCache~3_combout\) # ((\inst0|indexOfCache~5_combout\) # (!\inst0|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|cache[0].MSI.invalid~q\,
	datac => \inst0|process_0~6_combout\,
	datad => \inst0|indexOfCache~5_combout\,
	combout => \inst0|Selector202~3_combout\);

-- Location: LCCOMB_X8_Y11_N8
\inst0|Selector202~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector202~7_combout\ = (\inst0|Selector202~6_combout\ & (!\inst0|Selector202~0_combout\)) # (!\inst0|Selector202~6_combout\ & (((!\inst0|Selector202~3_combout\ & !\inst0|cache~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector202~0_combout\,
	datab => \inst0|Selector202~6_combout\,
	datac => \inst0|Selector202~3_combout\,
	datad => \inst0|cache~22_combout\,
	combout => \inst0|Selector202~7_combout\);

-- Location: FF_X8_Y11_N9
\inst0|cache[0].MSI.invalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector202~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].MSI.invalid~q\);

-- Location: LCCOMB_X7_Y10_N12
\inst0|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~11_combout\ = (\inst0|cache[0].address\(0) & (\inst0|cpu_req_addr_out\(0) & (\inst0|cache[0].address\(1) $ (!\inst0|cpu_req_addr_out\(1))))) # (!\inst0|cache[0].address\(0) & (!\inst0|cpu_req_addr_out\(0) & (\inst0|cache[0].address\(1) $ 
-- (!\inst0|cpu_req_addr_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].address\(0),
	datab => \inst0|cpu_req_addr_out\(0),
	datac => \inst0|cache[0].address\(1),
	datad => \inst0|cpu_req_addr_out\(1),
	combout => \inst0|process_0~11_combout\);

-- Location: LCCOMB_X7_Y10_N22
\inst0|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|process_0~12_combout\ = (\inst0|cache[0].MSI.invalid~q\ & (\inst0|process_0~11_combout\ & (\inst0|cache[0].address\(2) $ (!\inst0|cpu_req_addr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[0].MSI.invalid~q\,
	datab => \inst0|cache[0].address\(2),
	datac => \inst0|cpu_req_addr_out\(2),
	datad => \inst0|process_0~11_combout\,
	combout => \inst0|process_0~12_combout\);

-- Location: LCCOMB_X7_Y10_N30
\inst0|isInCache~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|isInCache~0_combout\ = (\inst0|process_0~12_combout\) # ((\inst0|process_0~8_combout\) # ((\inst0|indexOfCache~7_combout\) # (\inst0|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|process_0~12_combout\,
	datab => \inst0|process_0~8_combout\,
	datac => \inst0|indexOfCache~7_combout\,
	datad => \inst0|process_0~10_combout\,
	combout => \inst0|isInCache~0_combout\);

-- Location: LCCOMB_X6_Y11_N18
\inst0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector0~0_combout\ = (\inst0|sdramState.readResponseSDRAM~q\) # ((!\inst0|sdramState.checkCache~q\ & \inst0|isInCache~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst0|sdramState.checkCache~q\,
	datac => \inst0|isInCache~0_combout\,
	combout => \inst0|Selector0~0_combout\);

-- Location: FF_X6_Y11_N19
\inst0|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst0|ALT_INV_cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|hit~q\);

-- Location: LCCOMB_X4_Y11_N20
\inst0|Selector390~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector390~0_combout\ = (\inst0|CurrentState.writeData~q\) # ((!\inst0|hit~q\ & \inst0|CurrentState.requestData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|hit~q\,
	datac => \inst0|CurrentState.requestData~q\,
	datad => \inst0|CurrentState.writeData~q\,
	combout => \inst0|Selector390~0_combout\);

-- Location: FF_X4_Y11_N21
\inst0|CurrentState.requestData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|Selector390~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|CurrentState.requestData~q\);

-- Location: LCCOMB_X4_Y11_N30
\inst0|cpu_req_addr_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cpu_req_addr_out[2]~0_combout\ = (!\rst~input_o\ & ((\inst0|hit~q\) # (!\inst0|CurrentState.requestData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|CurrentState.requestData~q\,
	datac => \rst~input_o\,
	datad => \inst0|hit~q\,
	combout => \inst0|cpu_req_addr_out[2]~0_combout\);

-- Location: FF_X7_Y10_N25
\inst0|cpu_req_addr_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpu0_wantedAddr[2]~input_o\,
	sload => VCC,
	ena => \inst0|cpu_req_addr_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpu_req_addr_out\(2));

-- Location: LCCOMB_X3_Y11_N20
\inst0|cache_to_cache_req_address_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache_to_cache_req_address_out[2]~feeder_combout\ = \inst0|cpu_req_addr_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|cpu_req_addr_out\(2),
	combout => \inst0|cache_to_cache_req_address_out[2]~feeder_combout\);

-- Location: FF_X3_Y11_N21
\inst0|cache_to_cache_req_address_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache_to_cache_req_address_out[2]~feeder_combout\,
	ena => \inst0|cache_to_cache_req_address_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_req_address_out\(2));

-- Location: LCCOMB_X4_Y10_N2
\inst1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (\inst0|cache_to_cache_req_address_out\(1) & (\inst1|cache[3].address\(1) & (\inst1|cache[3].address\(0) $ (!\inst0|cache_to_cache_req_address_out\(0))))) # (!\inst0|cache_to_cache_req_address_out\(1) & 
-- (!\inst1|cache[3].address\(1) & (\inst1|cache[3].address\(0) $ (!\inst0|cache_to_cache_req_address_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_req_address_out\(1),
	datab => \inst1|cache[3].address\(1),
	datac => \inst1|cache[3].address\(0),
	datad => \inst0|cache_to_cache_req_address_out\(0),
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X4_Y10_N22
\inst1|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~12_combout\ = (\inst1|cache[3].MSI.invalid~q\ & (\inst1|process_0~11_combout\ & (\inst0|cache_to_cache_req_address_out\(2) $ (!\inst1|cache[3].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_req_address_out\(2),
	datab => \inst1|cache[3].MSI.invalid~q\,
	datac => \inst1|cache[3].address\(2),
	datad => \inst1|process_0~11_combout\,
	combout => \inst1|process_0~12_combout\);

-- Location: LCCOMB_X2_Y10_N12
\inst1|indexOfCache~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|indexOfCache~6_combout\ = (\inst1|process_0~12_combout\) # ((\inst1|process_0~14_combout\) # ((\inst1|process_0~10_combout\) # (\inst1|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~12_combout\,
	datab => \inst1|process_0~14_combout\,
	datac => \inst1|process_0~10_combout\,
	datad => \inst1|indexOfCache~5_combout\,
	combout => \inst1|indexOfCache~6_combout\);

-- Location: LCCOMB_X2_Y9_N14
\inst1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (\inst1|Mux0~1_combout\ & (\inst1|indexOfCache~6_combout\ & \inst1|indexOfCache~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|indexOfCache~6_combout\,
	datad => \inst1|indexOfCache~7_combout\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X3_Y9_N22
\inst1|cache~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~33_combout\ = (\inst1|cache[3].MSI.modified~q\ & (!\inst1|cache~14_combout\ & ((!\inst1|indexOfCache~9_combout\) # (!\inst1|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datab => \inst1|cache[3].MSI.modified~q\,
	datac => \inst1|indexOfCache~9_combout\,
	datad => \inst1|cache~14_combout\,
	combout => \inst1|cache~33_combout\);

-- Location: LCCOMB_X3_Y9_N14
\inst1|Selector120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector120~0_combout\ = (\inst1|cache~33_combout\ & (((!\inst0|cache_to_cache_resp_out~q\ & !\inst1|sdramState.readResponseSDRAM~q\)) # (!\inst1|MSI~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out~q\,
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datac => \inst1|cache~33_combout\,
	datad => \inst1|MSI~11_combout\,
	combout => \inst1|Selector120~0_combout\);

-- Location: LCCOMB_X3_Y9_N10
\inst1|cache~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~35_combout\ = (\inst1|indexOfCache~11_combout\ & (\inst1|isInCache~0_combout\ & \inst1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~11_combout\,
	datab => \inst1|isInCache~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|cache~35_combout\);

-- Location: LCCOMB_X3_Y9_N20
\inst1|cache~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~34_combout\ = (\inst1|cache~16_combout\) # ((\inst1|cache~33_combout\ & ((!\inst1|indexOfCache~12_combout\) # (!\inst1|cache~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache~35_combout\,
	datab => \inst1|cache~16_combout\,
	datac => \inst1|cache~33_combout\,
	datad => \inst1|indexOfCache~12_combout\,
	combout => \inst1|cache~34_combout\);

-- Location: LCCOMB_X3_Y9_N30
\inst1|cache[3].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].MSI.modified~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|Selector120~0_combout\)) # (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|cache~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector120~0_combout\,
	datad => \inst1|cache~34_combout\,
	combout => \inst1|cache[3].MSI.modified~0_combout\);

-- Location: LCCOMB_X5_Y9_N20
\inst1|Selector200~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector200~1_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & ((!\inst1|sdramState.checkCache~q\))) # (!\inst1|cpuCacheOperation.read_cache~q\ & (!\inst1|cpuCacheOperation.write_cache~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.write_cache~q\,
	datab => \inst1|sdramState.checkCache~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|Selector200~1_combout\);

-- Location: FF_X3_Y9_N31
\inst1|cache[3].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].MSI.modified~0_combout\,
	asdata => \inst1|cache~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].MSI.modified~q\);

-- Location: LCCOMB_X3_Y9_N8
\inst1|cache~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~27_combout\ = (\inst1|cache[2].MSI.modified~q\ & (!\inst1|cache~8_combout\ & ((\inst1|indexOfCache~9_combout\) # (!\inst1|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|cache[2].MSI.modified~q\,
	datac => \inst1|cache~8_combout\,
	datad => \inst1|Decoder0~0_combout\,
	combout => \inst1|cache~27_combout\);

-- Location: LCCOMB_X3_Y9_N16
\inst1|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector82~0_combout\ = (\inst1|cache~27_combout\ & (((!\inst0|cache_to_cache_resp_out~q\ & !\inst1|sdramState.readResponseSDRAM~q\)) # (!\inst1|MSI~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out~q\,
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datac => \inst1|cache~27_combout\,
	datad => \inst1|MSI~9_combout\,
	combout => \inst1|Selector82~0_combout\);

-- Location: LCCOMB_X3_Y9_N18
\inst1|cache~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~28_combout\ = (\inst1|cache~11_combout\) # ((\inst1|cache~27_combout\ & ((\inst1|indexOfCache~12_combout\) # (!\inst1|cache~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache~35_combout\,
	datab => \inst1|cache~11_combout\,
	datac => \inst1|cache~27_combout\,
	datad => \inst1|indexOfCache~12_combout\,
	combout => \inst1|cache~28_combout\);

-- Location: LCCOMB_X3_Y9_N28
\inst1|cache[2].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].MSI.modified~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|Selector82~0_combout\)) # (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|cache~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector82~0_combout\,
	datad => \inst1|cache~28_combout\,
	combout => \inst1|cache[2].MSI.modified~0_combout\);

-- Location: FF_X3_Y9_N29
\inst1|cache[2].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].MSI.modified~0_combout\,
	asdata => \inst1|cache~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].MSI.modified~q\);

-- Location: LCCOMB_X2_Y10_N30
\inst1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (\inst1|indexOfCache~6_combout\ & (!\inst1|indexOfCache~7_combout\ & \inst1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~6_combout\,
	datab => \inst1|indexOfCache~7_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X5_Y10_N14
\inst1|cache~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~31_combout\ = (\inst1|cache[0].MSI.modified~q\ & (!\inst1|cache~19_combout\ & ((\inst1|indexOfCache~9_combout\) # (!\inst1|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|cache[0].MSI.modified~q\,
	datac => \inst1|Decoder0~1_combout\,
	datad => \inst1|cache~19_combout\,
	combout => \inst1|cache~31_combout\);

-- Location: LCCOMB_X5_Y10_N6
\inst1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|cache~31_combout\ & ((\inst1|MSI~13_combout\) # ((!\inst0|cache_to_cache_resp_out~q\ & !\inst1|sdramState.readResponseSDRAM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~13_combout\,
	datab => \inst0|cache_to_cache_resp_out~q\,
	datac => \inst1|cache~31_combout\,
	datad => \inst1|sdramState.readResponseSDRAM~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X5_Y10_N26
\inst1|cache~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~37_combout\ = (((\inst1|indexOfCache~11_combout\) # (\inst1|indexOfCache~12_combout\)) # (!\inst1|process_0~2_combout\)) # (!\inst1|isInCache~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isInCache~0_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|indexOfCache~11_combout\,
	datad => \inst1|indexOfCache~12_combout\,
	combout => \inst1|cache~37_combout\);

-- Location: LCCOMB_X5_Y10_N28
\inst1|cache~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~32_combout\ = ((\inst1|cache~37_combout\ & \inst1|cache~31_combout\)) # (!\inst1|cache~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache~37_combout\,
	datac => \inst1|cache~31_combout\,
	datad => \inst1|cache~21_combout\,
	combout => \inst1|cache~32_combout\);

-- Location: LCCOMB_X5_Y10_N20
\inst1|cache[0].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].MSI.modified~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|Selector6~0_combout\)) # (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|cache~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector6~0_combout\,
	datab => \inst1|cpuCacheOperation.read_cache~q\,
	datad => \inst1|cache~32_combout\,
	combout => \inst1|cache[0].MSI.modified~0_combout\);

-- Location: FF_X5_Y10_N21
\inst1|cache[0].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].MSI.modified~0_combout\,
	asdata => \inst1|cache~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].MSI.modified~q\);

-- Location: LCCOMB_X5_Y9_N14
\inst1|cache~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~29_combout\ = (\inst1|cache[1].MSI.modified~q\ & (!\inst1|cache~24_combout\ & ((!\inst1|Decoder0~1_combout\) # (!\inst1|indexOfCache~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].MSI.modified~q\,
	datab => \inst1|indexOfCache~9_combout\,
	datac => \inst1|cache~24_combout\,
	datad => \inst1|Decoder0~1_combout\,
	combout => \inst1|cache~29_combout\);

-- Location: LCCOMB_X5_Y9_N0
\inst1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector44~0_combout\ = (\inst1|cache~29_combout\ & (((!\inst0|cache_to_cache_resp_out~q\ & !\inst1|sdramState.readResponseSDRAM~q\)) # (!\inst1|MSI~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out~q\,
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datac => \inst1|cache~29_combout\,
	datad => \inst1|MSI~15_combout\,
	combout => \inst1|Selector44~0_combout\);

-- Location: LCCOMB_X5_Y10_N24
\inst1|cache~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~36_combout\ = (((\inst1|indexOfCache~11_combout\) # (!\inst1|indexOfCache~12_combout\)) # (!\inst1|process_0~2_combout\)) # (!\inst1|isInCache~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|isInCache~0_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|indexOfCache~11_combout\,
	datad => \inst1|indexOfCache~12_combout\,
	combout => \inst1|cache~36_combout\);

-- Location: LCCOMB_X4_Y9_N18
\inst1|cache~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache~30_combout\ = (\inst1|cache~26_combout\) # ((\inst1|cache~29_combout\ & \inst1|cache~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cache~26_combout\,
	datac => \inst1|cache~29_combout\,
	datad => \inst1|cache~36_combout\,
	combout => \inst1|cache~30_combout\);

-- Location: LCCOMB_X4_Y9_N8
\inst1|cache[1].MSI.modified~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].MSI.modified~0_combout\ = (\inst1|cpuCacheOperation.read_cache~q\ & (\inst1|Selector44~0_combout\)) # (!\inst1|cpuCacheOperation.read_cache~q\ & ((\inst1|cache~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.read_cache~q\,
	datab => \inst1|Selector44~0_combout\,
	datad => \inst1|cache~30_combout\,
	combout => \inst1|cache[1].MSI.modified~0_combout\);

-- Location: FF_X4_Y9_N9
\inst1|cache[1].MSI.modified\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].MSI.modified~0_combout\,
	asdata => \inst1|cache~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|Selector200~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].MSI.modified~q\);

-- Location: LCCOMB_X2_Y9_N8
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|indexOfCache~9_combout\ & (((\inst1|cache[1].MSI.modified~q\) # (\inst1|indexOfCache~7_combout\)))) # (!\inst1|indexOfCache~9_combout\ & (\inst1|cache[0].MSI.modified~q\ & ((!\inst1|indexOfCache~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.modified~q\,
	datab => \inst1|cache[1].MSI.modified~q\,
	datac => \inst1|indexOfCache~9_combout\,
	datad => \inst1|indexOfCache~7_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y9_N10
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\ & ((\inst1|cache[3].MSI.modified~q\) # ((!\inst1|indexOfCache~7_combout\)))) # (!\inst1|Mux0~0_combout\ & (((\inst1|cache[2].MSI.modified~q\ & \inst1|indexOfCache~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].MSI.modified~q\,
	datab => \inst1|cache[2].MSI.modified~q\,
	datac => \inst1|Mux0~0_combout\,
	datad => \inst1|indexOfCache~7_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X2_Y10_N20
\inst1|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~15_combout\ = (\inst1|indexOfCache~6_combout\ & \inst1|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~6_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|process_0~15_combout\);

-- Location: FF_X2_Y10_N7
\inst1|cache_to_cache_resp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|process_0~15_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_resp_out~q\);

-- Location: LCCOMB_X6_Y11_N26
\inst0|read_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|read_en~0_combout\ = (!\inst1|cache_to_cache_resp_out~q\ & \inst0|sdramState.readResponseCACHE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cache_to_cache_resp_out~q\,
	datad => \inst0|sdramState.readResponseCACHE~q\,
	combout => \inst0|read_en~0_combout\);

-- Location: LCCOMB_X6_Y11_N24
\inst0|read_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|read_en~feeder_combout\ = \inst0|read_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|read_en~0_combout\,
	combout => \inst0|read_en~feeder_combout\);

-- Location: FF_X6_Y11_N25
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
	sclr => \inst0|ALT_INV_cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|read_en~q\);

-- Location: LCCOMB_X4_Y11_N0
\inst0|cpu_rd_req_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cpu_rd_req_out~feeder_combout\ = \inst0|CurrentState.writeData~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|CurrentState.writeData~q\,
	combout => \inst0|cpu_rd_req_out~feeder_combout\);

-- Location: FF_X4_Y11_N1
\inst0|cpu_rd_req_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst0|cpu_rd_req_out~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cpu_rd_req_out~q\);

-- Location: LCCOMB_X4_Y10_N18
\inst1|Selector385~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector385~0_combout\ = (\inst1|evictCounter\(0) & ((\inst1|cache[1].address\(2)) # ((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & (((!\inst1|evictCounter\(1) & \inst1|cache[0].address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(0),
	datab => \inst1|cache[1].address\(2),
	datac => \inst1|evictCounter\(1),
	datad => \inst1|cache[0].address\(2),
	combout => \inst1|Selector385~0_combout\);

-- Location: LCCOMB_X4_Y10_N0
\inst1|Selector385~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector385~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Selector385~0_combout\ & ((\inst1|cache[3].address\(2)))) # (!\inst1|Selector385~0_combout\ & (\inst1|cache[2].address\(2))))) # (!\inst1|evictCounter\(1) & 
-- (\inst1|Selector385~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|Selector385~0_combout\,
	datac => \inst1|cache[2].address\(2),
	datad => \inst1|cache[3].address\(2),
	combout => \inst1|Selector385~1_combout\);

-- Location: LCCOMB_X5_Y10_N16
\inst1|Sdram_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_addr[0]~0_combout\ = (\inst1|sdramState.readResponseSDRAM~q\) # ((\inst0|cache_to_cache_resp_out~q\) # (!\inst1|cpuCacheOperation.read_cache~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState.readResponseSDRAM~q\,
	datab => \inst0|cache_to_cache_resp_out~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|Sdram_addr[0]~0_combout\);

-- Location: LCCOMB_X5_Y10_N2
\inst1|Selector385~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector385~2_combout\ = (\inst1|Sdram_addr[0]~0_combout\ & (\inst1|Selector385~1_combout\)) # (!\inst1|Sdram_addr[0]~0_combout\ & ((\inst1|cpu_req_addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector385~1_combout\,
	datac => \inst1|cpu_req_addr_out\(2),
	datad => \inst1|Sdram_addr[0]~0_combout\,
	combout => \inst1|Selector385~2_combout\);

-- Location: LCCOMB_X2_Y9_N0
\inst1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~0_combout\ = (\inst1|evictCounter\(0) & (((\inst1|cache[1].MSI.modified~q\) # (\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & (\inst1|cache[0].MSI.modified~q\ & ((!\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].MSI.modified~q\,
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[1].MSI.modified~q\,
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Mux33~0_combout\);

-- Location: LCCOMB_X2_Y9_N18
\inst1|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux33~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Mux33~0_combout\ & ((\inst1|cache[3].MSI.modified~q\))) # (!\inst1|Mux33~0_combout\ & (\inst1|cache[2].MSI.modified~q\)))) # (!\inst1|evictCounter\(1) & (((\inst1|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|cache[2].MSI.modified~q\,
	datac => \inst1|cache[3].MSI.modified~q\,
	datad => \inst1|Mux33~0_combout\,
	combout => \inst1|Mux33~1_combout\);

-- Location: LCCOMB_X5_Y10_N10
\inst1|Selector352~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector352~3_combout\ = (\inst1|emptyCacheIndex~0_combout\ & \inst1|Mux33~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|emptyCacheIndex~0_combout\,
	datad => \inst1|Mux33~1_combout\,
	combout => \inst1|Selector352~3_combout\);

-- Location: LCCOMB_X2_Y10_N8
\inst1|Sdram_addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_addr[2]~1_combout\ = ((!\inst1|sdramState.readResponseCACHE~q\ & !\inst1|sdramState.readResponseSDRAM~q\)) # (!\inst1|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdramState.readResponseCACHE~q\,
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datad => \inst1|cpuCacheOperation.read_cache~q\,
	combout => \inst1|Sdram_addr[2]~1_combout\);

-- Location: LCCOMB_X5_Y10_N22
\inst1|Sdram_addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_addr[2]~2_combout\ = (\inst1|Sdram_addr[2]~1_combout\) # ((!\inst1|read_en~0_combout\ & ((!\inst1|Mux33~1_combout\) # (!\inst1|emptyCacheIndex~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|read_en~0_combout\,
	datab => \inst1|emptyCacheIndex~0_combout\,
	datac => \inst1|Sdram_addr[2]~1_combout\,
	datad => \inst1|Mux33~1_combout\,
	combout => \inst1|Sdram_addr[2]~2_combout\);

-- Location: LCCOMB_X2_Y10_N22
\inst1|Selector352~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector352~4_combout\ = (!\inst1|isInCache~0_combout\ & (\inst1|cpuCacheOperation.write_cache~q\ & !\inst1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|isInCache~0_combout\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|Selector352~4_combout\);

-- Location: LCCOMB_X5_Y10_N4
\inst1|Sdram_addr[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_addr[2]~3_combout\ = (!\rst~input_o\ & (((\inst1|Selector352~3_combout\ & \inst1|Selector352~4_combout\)) # (!\inst1|Sdram_addr[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector352~3_combout\,
	datab => \rst~input_o\,
	datac => \inst1|Sdram_addr[2]~2_combout\,
	datad => \inst1|Selector352~4_combout\,
	combout => \inst1|Sdram_addr[2]~3_combout\);

-- Location: FF_X5_Y10_N3
\inst1|Sdram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector385~2_combout\,
	ena => \inst1|Sdram_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_addr\(2));

-- Location: LCCOMB_X4_Y8_N2
\inst1|Selector387~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector387~0_combout\ = (\inst1|evictCounter\(1) & (\inst1|evictCounter\(0))) # (!\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0) & ((\inst1|cache[1].address\(0)))) # (!\inst1|evictCounter\(0) & (\inst1|cache[0].address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[0].address\(0),
	datad => \inst1|cache[1].address\(0),
	combout => \inst1|Selector387~0_combout\);

-- Location: LCCOMB_X4_Y10_N16
\inst1|Selector387~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector387~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Selector387~0_combout\ & (\inst1|cache[3].address\(0))) # (!\inst1|Selector387~0_combout\ & ((\inst1|cache[2].address\(0)))))) # (!\inst1|evictCounter\(1) & 
-- (((\inst1|Selector387~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|cache[3].address\(0),
	datac => \inst1|cache[2].address\(0),
	datad => \inst1|Selector387~0_combout\,
	combout => \inst1|Selector387~1_combout\);

-- Location: LCCOMB_X5_Y10_N18
\inst1|Selector387~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector387~2_combout\ = (\inst1|Sdram_addr[0]~0_combout\ & ((\inst1|Selector387~1_combout\))) # (!\inst1|Sdram_addr[0]~0_combout\ & (\inst1|cpu_req_addr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpu_req_addr_out\(0),
	datac => \inst1|Selector387~1_combout\,
	datad => \inst1|Sdram_addr[0]~0_combout\,
	combout => \inst1|Selector387~2_combout\);

-- Location: FF_X5_Y10_N19
\inst1|Sdram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector387~2_combout\,
	ena => \inst1|Sdram_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_addr\(0));

-- Location: LCCOMB_X6_Y8_N10
\inst0|cache[3].data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[10]~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|cache~19_combout\) # ((\inst0|cache[1].data[2]~0_combout\ & \inst0|MSI~11_combout\)))) # (!\inst0|cpuCacheOperation.write_cache~q\ & 
-- (\inst0|cache[1].data[2]~0_combout\ & (\inst0|MSI~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datab => \inst0|cache[1].data[2]~0_combout\,
	datac => \inst0|MSI~11_combout\,
	datad => \inst0|cache~19_combout\,
	combout => \inst0|cache[3].data[10]~0_combout\);

-- Location: FF_X7_Y8_N3
\inst0|cache[3].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst0|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst0|cache[3].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(10));

-- Location: LCCOMB_X6_Y10_N0
\inst0|cache[2].data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[10]~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|cache~13_combout\) # ((\inst0|MSI~9_combout\ & \inst0|cache[1].data[2]~0_combout\)))) # (!\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|MSI~9_combout\ & 
-- (\inst0|cache[1].data[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datab => \inst0|MSI~9_combout\,
	datac => \inst0|cache[1].data[2]~0_combout\,
	datad => \inst0|cache~13_combout\,
	combout => \inst0|cache[2].data[10]~0_combout\);

-- Location: FF_X5_Y11_N29
\inst0|cache[2].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst0|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst0|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(10));

-- Location: LCCOMB_X5_Y11_N18
\inst0|Selector374~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector374~0_combout\ = (\inst0|evictCounter\(0) & (((\inst0|evictCounter\(1))))) # (!\inst0|evictCounter\(0) & ((\inst0|evictCounter\(1) & (\inst0|cache[2].data\(10))) # (!\inst0|evictCounter\(1) & ((\inst0|cache[0].data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|cache[2].data\(10),
	datac => \inst0|cache[0].data\(10),
	datad => \inst0|evictCounter\(1),
	combout => \inst0|Selector374~0_combout\);

-- Location: LCCOMB_X6_Y10_N6
\inst0|cache[1].data[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[2]~1_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & ((\inst0|cache~28_combout\) # ((\inst0|MSI~15_combout\ & \inst0|cache[1].data[2]~0_combout\)))) # (!\inst0|cpuCacheOperation.write_cache~q\ & (\inst0|MSI~15_combout\ & 
-- (\inst0|cache[1].data[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datab => \inst0|MSI~15_combout\,
	datac => \inst0|cache[1].data[2]~0_combout\,
	datad => \inst0|cache~28_combout\,
	combout => \inst0|cache[1].data[2]~1_combout\);

-- Location: FF_X7_Y8_N25
\inst0|cache[1].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst0|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst0|cache[1].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(10));

-- Location: LCCOMB_X6_Y8_N8
\inst0|Selector374~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector374~1_combout\ = (\inst0|Selector374~0_combout\ & ((\inst0|cache[3].data\(10)) # ((!\inst0|evictCounter\(0))))) # (!\inst0|Selector374~0_combout\ & (((\inst0|evictCounter\(0) & \inst0|cache[1].data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].data\(10),
	datab => \inst0|Selector374~0_combout\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|cache[1].data\(10),
	combout => \inst0|Selector374~1_combout\);

-- Location: LCCOMB_X8_Y11_N24
\inst0|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux33~0_combout\ = (\inst0|evictCounter\(0) & ((\inst0|cache[1].MSI.modified~q\) # ((\inst0|evictCounter\(1))))) # (!\inst0|evictCounter\(0) & (((\inst0|cache[0].MSI.modified~q\ & !\inst0|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|cache[1].MSI.modified~q\,
	datac => \inst0|cache[0].MSI.modified~q\,
	datad => \inst0|evictCounter\(1),
	combout => \inst0|Mux33~0_combout\);

-- Location: LCCOMB_X8_Y11_N26
\inst0|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux33~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Mux33~0_combout\ & ((\inst0|cache[3].MSI.modified~q\))) # (!\inst0|Mux33~0_combout\ & (\inst0|cache[2].MSI.modified~q\)))) # (!\inst0|evictCounter\(1) & (((\inst0|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[2].MSI.modified~q\,
	datac => \inst0|cache[3].MSI.modified~q\,
	datad => \inst0|Mux33~0_combout\,
	combout => \inst0|Mux33~1_combout\);

-- Location: LCCOMB_X7_Y8_N22
\inst0|Selector352~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector352~2_combout\ = (\inst0|emptyCacheIndex~0_combout\ & \inst0|Mux33~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|emptyCacheIndex~0_combout\,
	datac => \inst0|Mux33~1_combout\,
	combout => \inst0|Selector352~2_combout\);

-- Location: LCCOMB_X7_Y8_N18
\inst0|Selector352~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector352~3_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (!\inst0|isInCache~0_combout\ & !\inst0|process_0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datac => \inst0|isInCache~0_combout\,
	datad => \inst0|process_0~14_combout\,
	combout => \inst0|Selector352~3_combout\);

-- Location: LCCOMB_X6_Y8_N2
\inst0|Sdram_data_out[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_data_out[10]~0_combout\ = (!\rst~input_o\ & (\inst0|Selector352~2_combout\ & ((\inst0|cache[1].data[2]~0_combout\) # (\inst0|Selector352~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst0|Selector352~2_combout\,
	datac => \inst0|cache[1].data[2]~0_combout\,
	datad => \inst0|Selector352~3_combout\,
	combout => \inst0|Sdram_data_out[10]~0_combout\);

-- Location: FF_X6_Y8_N9
\inst0|Sdram_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector374~1_combout\,
	ena => \inst0|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(10));

-- Location: LCCOMB_X4_Y9_N6
\inst1|cache[3].data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[0]~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & ((\inst1|cache~16_combout\) # ((\inst1|cache[1].data[0]~0_combout\ & \inst1|MSI~11_combout\)))) # (!\inst1|cpuCacheOperation.write_cache~q\ & 
-- (\inst1|cache[1].data[0]~0_combout\ & (\inst1|MSI~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.write_cache~q\,
	datab => \inst1|cache[1].data[0]~0_combout\,
	datac => \inst1|MSI~11_combout\,
	datad => \inst1|cache~16_combout\,
	combout => \inst1|cache[3].data[0]~0_combout\);

-- Location: FF_X5_Y9_N3
\inst1|cache[3].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst1|cache[3].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(10));

-- Location: LCCOMB_X6_Y9_N28
\inst1|cache[0].data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].data[0]~0_combout\ = (\inst1|cpuCacheOperation.write_cache~q\ & (((!\inst1|MSI~13_combout\ & \inst1|cache[1].data[0]~0_combout\)) # (!\inst1|cache~21_combout\))) # (!\inst1|cpuCacheOperation.write_cache~q\ & (!\inst1|MSI~13_combout\ & 
-- ((\inst1|cache[1].data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpuCacheOperation.write_cache~q\,
	datab => \inst1|MSI~13_combout\,
	datac => \inst1|cache~21_combout\,
	datad => \inst1|cache[1].data[0]~0_combout\,
	combout => \inst1|cache[0].data[0]~0_combout\);

-- Location: FF_X6_Y9_N23
\inst1|cache[0].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst1|cache[0].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(10));

-- Location: LCCOMB_X3_Y9_N24
\inst1|cache[2].data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[10]~0_combout\ = (\inst1|MSI~9_combout\ & ((\inst1|cache[1].data[0]~0_combout\) # ((\inst1|cpuCacheOperation.write_cache~q\ & \inst1|cache~11_combout\)))) # (!\inst1|MSI~9_combout\ & (\inst1|cpuCacheOperation.write_cache~q\ & 
-- ((\inst1|cache~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MSI~9_combout\,
	datab => \inst1|cpuCacheOperation.write_cache~q\,
	datac => \inst1|cache[1].data[0]~0_combout\,
	datad => \inst1|cache~11_combout\,
	combout => \inst1|cache[2].data[10]~0_combout\);

-- Location: FF_X6_Y9_N25
\inst1|cache[2].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst1|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(10));

-- Location: LCCOMB_X6_Y9_N24
\inst1|Selector374~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector374~0_combout\ = (\inst1|evictCounter\(0) & (((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & ((\inst1|evictCounter\(1) & ((\inst1|cache[2].data\(10)))) # (!\inst1|evictCounter\(1) & (\inst1|cache[0].data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].data\(10),
	datab => \inst1|evictCounter\(0),
	datac => \inst1|cache[2].data\(10),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector374~0_combout\);

-- Location: LCCOMB_X1_Y9_N20
\inst1|Selector374~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector374~1_combout\ = (\inst1|evictCounter\(0) & ((\inst1|Selector374~0_combout\ & ((\inst1|cache[3].data\(10)))) # (!\inst1|Selector374~0_combout\ & (\inst1|cache[1].data\(10))))) # (!\inst1|evictCounter\(0) & 
-- (((\inst1|Selector374~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(0),
	datab => \inst1|cache[1].data\(10),
	datac => \inst1|cache[3].data\(10),
	datad => \inst1|Selector374~0_combout\,
	combout => \inst1|Selector374~1_combout\);

-- Location: LCCOMB_X1_Y9_N0
\inst1|Sdram_data_out[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Sdram_data_out[10]~0_combout\ = (!\rst~input_o\ & (\inst1|Selector352~3_combout\ & ((\inst1|cache[1].data[0]~0_combout\) # (\inst1|Selector352~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].data[0]~0_combout\,
	datab => \rst~input_o\,
	datac => \inst1|Selector352~3_combout\,
	datad => \inst1|Selector352~4_combout\,
	combout => \inst1|Sdram_data_out[10]~0_combout\);

-- Location: FF_X1_Y9_N21
\inst1|Sdram_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector374~1_combout\,
	ena => \inst1|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(10));

-- Location: LCCOMB_X7_Y7_N0
\inst0|Selector352~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector352~4_combout\ = (\inst0|emptyCacheIndex~0_combout\ & (!\inst0|cache[0].address[0]~2_combout\ & \inst0|Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|emptyCacheIndex~0_combout\,
	datac => \inst0|cache[0].address[0]~2_combout\,
	datad => \inst0|Mux33~1_combout\,
	combout => \inst0|Selector352~4_combout\);

-- Location: FF_X7_Y7_N1
\inst0|write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector352~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|write_en~q\);

-- Location: LCCOMB_X9_Y10_N22
\inst0|Selector385~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector385~0_combout\ = (\inst0|evictCounter\(0) & ((\inst0|evictCounter\(1)) # ((\inst0|cache[1].address\(2))))) # (!\inst0|evictCounter\(0) & (!\inst0|evictCounter\(1) & (\inst0|cache[0].address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|evictCounter\(1),
	datac => \inst0|cache[0].address\(2),
	datad => \inst0|cache[1].address\(2),
	combout => \inst0|Selector385~0_combout\);

-- Location: LCCOMB_X8_Y10_N20
\inst0|Selector385~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector385~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Selector385~0_combout\ & (\inst0|cache[3].address\(2))) # (!\inst0|Selector385~0_combout\ & ((\inst0|cache[2].address\(2)))))) # (!\inst0|evictCounter\(1) & 
-- (((\inst0|Selector385~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[3].address\(2),
	datac => \inst0|cache[2].address\(2),
	datad => \inst0|Selector385~0_combout\,
	combout => \inst0|Selector385~1_combout\);

-- Location: LCCOMB_X7_Y11_N14
\inst0|Sdram_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_addr[0]~0_combout\ = (\inst0|sdramState.readResponseSDRAM~q\) # ((\inst1|cache_to_cache_resp_out~q\) # (!\inst0|cpuCacheOperation.read_cache~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst0|cpuCacheOperation.read_cache~q\,
	datad => \inst1|cache_to_cache_resp_out~q\,
	combout => \inst0|Sdram_addr[0]~0_combout\);

-- Location: LCCOMB_X7_Y7_N14
\inst0|Selector385~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector385~2_combout\ = (\inst0|Sdram_addr[0]~0_combout\ & (\inst0|Selector385~1_combout\)) # (!\inst0|Sdram_addr[0]~0_combout\ & ((\inst0|cpu_req_addr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector385~1_combout\,
	datac => \inst0|Sdram_addr[0]~0_combout\,
	datad => \inst0|cpu_req_addr_out\(2),
	combout => \inst0|Selector385~2_combout\);

-- Location: LCCOMB_X6_Y11_N2
\inst0|Sdram_addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_addr[2]~1_combout\ = ((!\inst0|sdramState.readResponseSDRAM~q\ & !\inst0|sdramState.readResponseCACHE~q\)) # (!\inst0|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datab => \inst0|sdramState.readResponseCACHE~q\,
	datad => \inst0|cpuCacheOperation.read_cache~q\,
	combout => \inst0|Sdram_addr[2]~1_combout\);

-- Location: LCCOMB_X7_Y8_N4
\inst0|Sdram_addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_addr[2]~2_combout\ = (\inst0|Sdram_addr[2]~1_combout\) # ((!\inst0|read_en~0_combout\ & ((!\inst0|Mux33~1_combout\) # (!\inst0|emptyCacheIndex~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|emptyCacheIndex~0_combout\,
	datab => \inst0|read_en~0_combout\,
	datac => \inst0|Mux33~1_combout\,
	datad => \inst0|Sdram_addr[2]~1_combout\,
	combout => \inst0|Sdram_addr[2]~2_combout\);

-- Location: LCCOMB_X7_Y8_N12
\inst0|Sdram_addr[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Sdram_addr[2]~3_combout\ = (!\rst~input_o\ & (((\inst0|Selector352~2_combout\ & \inst0|Selector352~3_combout\)) # (!\inst0|Sdram_addr[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Selector352~2_combout\,
	datab => \rst~input_o\,
	datac => \inst0|Sdram_addr[2]~2_combout\,
	datad => \inst0|Selector352~3_combout\,
	combout => \inst0|Sdram_addr[2]~3_combout\);

-- Location: FF_X7_Y7_N15
\inst0|Sdram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector385~2_combout\,
	ena => \inst0|Sdram_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_addr\(2));

-- Location: LCCOMB_X9_Y10_N4
\inst0|Selector387~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector387~0_combout\ = (\inst0|evictCounter\(0) & ((\inst0|evictCounter\(1)) # ((\inst0|cache[1].address\(0))))) # (!\inst0|evictCounter\(0) & (!\inst0|evictCounter\(1) & (\inst0|cache[0].address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|evictCounter\(1),
	datac => \inst0|cache[0].address\(0),
	datad => \inst0|cache[1].address\(0),
	combout => \inst0|Selector387~0_combout\);

-- Location: LCCOMB_X8_Y10_N30
\inst0|Selector387~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector387~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Selector387~0_combout\ & ((\inst0|cache[3].address\(0)))) # (!\inst0|Selector387~0_combout\ & (\inst0|cache[2].address\(0))))) # (!\inst0|evictCounter\(1) & 
-- (\inst0|Selector387~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|Selector387~0_combout\,
	datac => \inst0|cache[2].address\(0),
	datad => \inst0|cache[3].address\(0),
	combout => \inst0|Selector387~1_combout\);

-- Location: LCCOMB_X7_Y7_N18
\inst0|Selector387~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector387~2_combout\ = (\inst0|Sdram_addr[0]~0_combout\ & ((\inst0|Selector387~1_combout\))) # (!\inst0|Sdram_addr[0]~0_combout\ & (\inst0|cpu_req_addr_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cpu_req_addr_out\(0),
	datac => \inst0|Sdram_addr[0]~0_combout\,
	datad => \inst0|Selector387~1_combout\,
	combout => \inst0|Selector387~2_combout\);

-- Location: FF_X7_Y7_N19
\inst0|Sdram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector387~2_combout\,
	ena => \inst0|Sdram_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_addr\(0));

-- Location: LCCOMB_X9_Y10_N24
\inst0|Selector386~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector386~0_combout\ = (\inst0|evictCounter\(0) & (\inst0|evictCounter\(1))) # (!\inst0|evictCounter\(0) & ((\inst0|evictCounter\(1) & ((\inst0|cache[2].address\(1)))) # (!\inst0|evictCounter\(1) & (\inst0|cache[0].address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|evictCounter\(1),
	datac => \inst0|cache[0].address\(1),
	datad => \inst0|cache[2].address\(1),
	combout => \inst0|Selector386~0_combout\);

-- Location: LCCOMB_X9_Y10_N14
\inst0|Selector386~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector386~1_combout\ = (\inst0|evictCounter\(0) & ((\inst0|Selector386~0_combout\ & (\inst0|cache[3].address\(1))) # (!\inst0|Selector386~0_combout\ & ((\inst0|cache[1].address\(1)))))) # (!\inst0|evictCounter\(0) & 
-- (\inst0|Selector386~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|Selector386~0_combout\,
	datac => \inst0|cache[3].address\(1),
	datad => \inst0|cache[1].address\(1),
	combout => \inst0|Selector386~1_combout\);

-- Location: LCCOMB_X7_Y7_N12
\inst0|Selector386~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector386~2_combout\ = (\inst0|Sdram_addr[0]~0_combout\ & ((\inst0|Selector386~1_combout\))) # (!\inst0|Sdram_addr[0]~0_combout\ & (\inst0|cpu_req_addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr[0]~0_combout\,
	datac => \inst0|cpu_req_addr_out\(1),
	datad => \inst0|Selector386~1_combout\,
	combout => \inst0|Selector386~2_combout\);

-- Location: FF_X7_Y7_N13
\inst0|Sdram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector386~2_combout\,
	ena => \inst0|Sdram_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_addr\(1));

-- Location: LCCOMB_X3_Y7_N20
\inst3|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~0_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(2) & (\inst0|Sdram_addr\(0) & !\inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(2),
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~0_combout\);

-- Location: LCCOMB_X3_Y7_N28
\inst3|memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~1_combout\ = (\inst3|Decoder1~0_combout\ & (\inst0|Sdram_data_out\(10))) # (!\inst3|Decoder1~0_combout\ & ((\inst1|Sdram_data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(10),
	datac => \inst1|Sdram_data_out\(10),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~1_combout\);

-- Location: LCCOMB_X4_Y10_N6
\inst1|Selector386~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector386~0_combout\ = (\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0)) # ((\inst1|cache[2].address\(1))))) # (!\inst1|evictCounter\(1) & (!\inst1|evictCounter\(0) & ((\inst1|cache[0].address\(1)))))

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
	combout => \inst1|Selector386~0_combout\);

-- Location: LCCOMB_X4_Y10_N4
\inst1|Selector386~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector386~1_combout\ = (\inst1|Selector386~0_combout\ & (((\inst1|cache[3].address\(1)) # (!\inst1|evictCounter\(0))))) # (!\inst1|Selector386~0_combout\ & (\inst1|cache[1].address\(1) & ((\inst1|evictCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].address\(1),
	datab => \inst1|Selector386~0_combout\,
	datac => \inst1|cache[3].address\(1),
	datad => \inst1|evictCounter\(0),
	combout => \inst1|Selector386~1_combout\);

-- Location: LCCOMB_X5_Y10_N8
\inst1|Selector386~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector386~2_combout\ = (\inst1|Sdram_addr[0]~0_combout\ & ((\inst1|Selector386~1_combout\))) # (!\inst1|Sdram_addr[0]~0_combout\ & (\inst1|cpu_req_addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpu_req_addr_out\(1),
	datac => \inst1|Selector386~1_combout\,
	datad => \inst1|Sdram_addr[0]~0_combout\,
	combout => \inst1|Selector386~2_combout\);

-- Location: FF_X5_Y10_N9
\inst1|Sdram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector386~2_combout\,
	ena => \inst1|Sdram_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_addr\(1));

-- Location: LCCOMB_X7_Y7_N2
\inst1|Selector352~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector352~5_combout\ = (\inst1|Mux33~1_combout\ & (\inst1|emptyCacheIndex~0_combout\ & \inst1|Selector352~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux33~1_combout\,
	datac => \inst1|emptyCacheIndex~0_combout\,
	datad => \inst1|Selector352~2_combout\,
	combout => \inst1|Selector352~5_combout\);

-- Location: FF_X7_Y7_N3
\inst1|write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector352~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|write_en~q\);

-- Location: LCCOMB_X2_Y7_N0
\inst3|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~0_combout\ = (\inst1|write_en~q\ & \inst1|Sdram_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|write_en~q\,
	datad => \inst1|Sdram_addr\(2),
	combout => \inst3|Decoder0~0_combout\);

-- Location: LCCOMB_X2_Y7_N6
\inst3|memory[5][10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[5][10]~2_combout\ = (\inst3|Decoder1~0_combout\) # ((!\inst1|Sdram_addr\(1) & (\inst1|Sdram_addr\(0) & \inst3|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(1),
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|Decoder1~0_combout\,
	datad => \inst3|Decoder0~0_combout\,
	combout => \inst3|memory[5][10]~2_combout\);

-- Location: FF_X3_Y7_N29
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

-- Location: LCCOMB_X3_Y7_N4
\inst3|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~2_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(2) & (!\inst0|Sdram_addr\(0) & !\inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(2),
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~2_combout\);

-- Location: LCCOMB_X1_Y7_N18
\inst3|memory~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~5_combout\ = (\inst3|Decoder1~2_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~2_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(10),
	datac => \inst0|Sdram_data_out\(10),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~5_combout\);

-- Location: LCCOMB_X2_Y7_N8
\inst3|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~1_combout\ = (((\inst1|Sdram_addr\(0)) # (\inst1|Sdram_addr\(1))) # (!\inst1|Sdram_addr\(2))) # (!\inst1|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|write_en~q\,
	datab => \inst1|Sdram_addr\(2),
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Decoder0~1_combout\);

-- Location: LCCOMB_X1_Y7_N22
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

-- Location: FF_X1_Y7_N19
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

-- Location: LCCOMB_X3_Y7_N14
\inst3|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~1_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(2) & (!\inst0|Sdram_addr\(0) & \inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(2),
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~1_combout\);

-- Location: LCCOMB_X2_Y8_N0
\inst3|memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~3_combout\ = (\inst3|Decoder1~1_combout\ & (\inst0|Sdram_data_out\(10))) # (!\inst3|Decoder1~1_combout\ & ((\inst1|Sdram_data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(10),
	datac => \inst1|Sdram_data_out\(10),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~3_combout\);

-- Location: LCCOMB_X2_Y8_N10
\inst3|memory[6][10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[6][10]~4_combout\ = (\inst3|Decoder1~1_combout\) # ((\inst1|Sdram_addr\(1) & (!\inst1|Sdram_addr\(0) & \inst3|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~1_combout\,
	datab => \inst1|Sdram_addr\(1),
	datac => \inst1|Sdram_addr\(0),
	datad => \inst3|Decoder0~0_combout\,
	combout => \inst3|memory[6][10]~4_combout\);

-- Location: FF_X2_Y8_N1
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

-- Location: LCCOMB_X1_Y7_N4
\inst3|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & ((\inst3|memory[6][10]~q\))) # (!\inst1|Sdram_addr\(1) & (\inst3|memory[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst3|memory[4][10]~q\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|memory[6][10]~q\,
	combout => \inst3|Mux21~0_combout\);

-- Location: LCCOMB_X2_Y7_N22
\inst3|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~2_combout\ = (((!\inst1|Sdram_addr\(1)) # (!\inst1|Sdram_addr\(0))) # (!\inst1|Sdram_addr\(2))) # (!\inst1|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|write_en~q\,
	datab => \inst1|Sdram_addr\(2),
	datac => \inst1|Sdram_addr\(0),
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Decoder0~2_combout\);

-- Location: LCCOMB_X1_Y7_N24
\inst3|memory[7][10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[7][10]~0_combout\ = (\inst3|Decoder0~2_combout\ & ((\inst3|memory[7][10]~q\))) # (!\inst3|Decoder0~2_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(10),
	datac => \inst3|memory[7][10]~q\,
	datad => \inst3|Decoder0~2_combout\,
	combout => \inst3|memory[7][10]~0_combout\);

-- Location: LCCOMB_X3_Y7_N6
\inst3|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~3_combout\ = (\inst0|write_en~q\ & (\inst0|Sdram_addr\(2) & (\inst0|Sdram_addr\(0) & \inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(2),
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~3_combout\);

-- Location: FF_X1_Y7_N25
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

-- Location: LCCOMB_X2_Y7_N30
\inst3|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux21~0_combout\ & ((\inst3|memory[7][10]~q\))) # (!\inst3|Mux21~0_combout\ & (\inst3|memory[5][10]~q\)))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst3|memory[5][10]~q\,
	datac => \inst3|Mux21~0_combout\,
	datad => \inst3|memory[7][10]~q\,
	combout => \inst3|Mux21~1_combout\);

-- Location: LCCOMB_X7_Y7_N16
\inst3|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~7_combout\ = (\inst0|Sdram_addr\(1) & (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(2) & \inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(2),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~7_combout\);

-- Location: LCCOMB_X6_Y7_N10
\inst3|memory~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~13_combout\ = (\inst3|Decoder1~7_combout\ & (\inst0|Sdram_data_out\(10))) # (!\inst3|Decoder1~7_combout\ & ((\inst1|Sdram_data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(10),
	datac => \inst1|Sdram_data_out\(10),
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory~13_combout\);

-- Location: LCCOMB_X5_Y7_N10
\inst3|memory[3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[3][10]~feeder_combout\ = \inst3|memory~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|memory~13_combout\,
	combout => \inst3|memory[3][10]~feeder_combout\);

-- Location: LCCOMB_X5_Y7_N4
\inst3|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~5_combout\ = (!\inst1|Sdram_addr\(2) & \inst1|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Sdram_addr\(2),
	datad => \inst1|write_en~q\,
	combout => \inst3|Decoder0~5_combout\);

-- Location: LCCOMB_X5_Y7_N2
\inst3|memory[3][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[3][2]~14_combout\ = (\inst3|Decoder1~7_combout\) # ((\inst1|Sdram_addr\(0) & (\inst3|Decoder0~5_combout\ & \inst1|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst3|Decoder0~5_combout\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory[3][2]~14_combout\);

-- Location: FF_X5_Y7_N11
\inst3|memory[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|memory[3][10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|memory[3][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[3][10]~q\);

-- Location: LCCOMB_X3_Y7_N16
\inst3|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~4_combout\ = (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(2) & (!\inst0|Sdram_addr\(0) & \inst0|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|write_en~q\,
	datab => \inst0|Sdram_addr\(2),
	datac => \inst0|Sdram_addr\(0),
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Decoder1~4_combout\);

-- Location: LCCOMB_X4_Y7_N20
\inst3|memory~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~7_combout\ = (\inst3|Decoder1~4_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~4_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(10),
	datac => \inst3|Decoder1~4_combout\,
	datad => \inst0|Sdram_data_out\(10),
	combout => \inst3|memory~7_combout\);

-- Location: LCCOMB_X5_Y7_N0
\inst3|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~3_combout\ = (\inst1|Sdram_addr\(0)) # ((\inst1|Sdram_addr\(2)) # ((!\inst1|write_en~q\) # (!\inst1|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst1|Sdram_addr\(2),
	datac => \inst1|Sdram_addr\(1),
	datad => \inst1|write_en~q\,
	combout => \inst3|Decoder0~3_combout\);

-- Location: LCCOMB_X4_Y7_N24
\inst3|memory[2][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[2][0]~8_combout\ = (\inst3|Decoder1~4_combout\) # (!\inst3|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~4_combout\,
	datac => \inst3|Decoder0~3_combout\,
	combout => \inst3|memory[2][0]~8_combout\);

-- Location: FF_X4_Y7_N21
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
	ena => \inst3|memory[2][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][10]~q\);

-- Location: LCCOMB_X7_Y7_N22
\inst3|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~6_combout\ = (!\inst0|Sdram_addr\(1) & (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(2) & !\inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(2),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~6_combout\);

-- Location: LCCOMB_X6_Y7_N14
\inst3|memory~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~11_combout\ = (\inst3|Decoder1~6_combout\ & (\inst0|Sdram_data_out\(10))) # (!\inst3|Decoder1~6_combout\ & ((\inst1|Sdram_data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(10),
	datac => \inst1|Sdram_data_out\(10),
	datad => \inst3|Decoder1~6_combout\,
	combout => \inst3|memory~11_combout\);

-- Location: LCCOMB_X6_Y7_N16
\inst3|memory[0][2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[0][2]~12_combout\ = (\inst3|Decoder1~6_combout\) # ((!\inst1|Sdram_addr\(1) & (\inst3|Decoder0~5_combout\ & !\inst1|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~6_combout\,
	datab => \inst1|Sdram_addr\(1),
	datac => \inst3|Decoder0~5_combout\,
	datad => \inst1|Sdram_addr\(0),
	combout => \inst3|memory[0][2]~12_combout\);

-- Location: FF_X5_Y7_N13
\inst3|memory[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|memory~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|memory[0][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][10]~q\);

-- Location: LCCOMB_X7_Y7_N8
\inst3|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder1~5_combout\ = (!\inst0|Sdram_addr\(1) & (\inst0|write_en~q\ & (!\inst0|Sdram_addr\(2) & \inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst0|write_en~q\,
	datac => \inst0|Sdram_addr\(2),
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Decoder1~5_combout\);

-- Location: LCCOMB_X6_Y7_N4
\inst3|memory~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~9_combout\ = (\inst3|Decoder1~5_combout\ & ((\inst0|Sdram_data_out\(10)))) # (!\inst3|Decoder1~5_combout\ & (\inst1|Sdram_data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(10),
	datab => \inst0|Sdram_data_out\(10),
	datac => \inst3|Decoder1~5_combout\,
	combout => \inst3|memory~9_combout\);

-- Location: LCCOMB_X5_Y7_N18
\inst3|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~4_combout\ = ((\inst1|Sdram_addr\(2)) # ((\inst1|Sdram_addr\(1)) # (!\inst1|write_en~q\))) # (!\inst1|Sdram_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst1|Sdram_addr\(2),
	datac => \inst1|Sdram_addr\(1),
	datad => \inst1|write_en~q\,
	combout => \inst3|Decoder0~4_combout\);

-- Location: LCCOMB_X6_Y7_N20
\inst3|memory[1][10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[1][10]~10_combout\ = (\inst3|Decoder1~5_combout\) # (!\inst3|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Decoder1~5_combout\,
	datad => \inst3|Decoder0~4_combout\,
	combout => \inst3|memory[1][10]~10_combout\);

-- Location: FF_X6_Y7_N5
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
	ena => \inst3|memory[1][10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][10]~q\);

-- Location: LCCOMB_X6_Y7_N18
\inst3|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~2_combout\ = (\inst1|Sdram_addr\(1) & (((\inst1|Sdram_addr\(0))))) # (!\inst1|Sdram_addr\(1) & ((\inst1|Sdram_addr\(0) & ((\inst3|memory[1][10]~q\))) # (!\inst1|Sdram_addr\(0) & (\inst3|memory[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][10]~q\,
	datab => \inst3|memory[1][10]~q\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst1|Sdram_addr\(0),
	combout => \inst3|Mux21~2_combout\);

-- Location: LCCOMB_X6_Y7_N28
\inst3|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux21~2_combout\ & (\inst3|memory[3][10]~q\)) # (!\inst3|Mux21~2_combout\ & ((\inst3|memory[2][10]~q\))))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[3][10]~q\,
	datab => \inst3|memory[2][10]~q\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|Mux21~2_combout\,
	combout => \inst3|Mux21~3_combout\);

-- Location: LCCOMB_X2_Y7_N2
\inst3|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux21~4_combout\ = (\inst1|Sdram_addr\(2) & (\inst3|Mux21~1_combout\)) # (!\inst1|Sdram_addr\(2) & ((\inst3|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux21~1_combout\,
	datad => \inst3|Mux21~3_combout\,
	combout => \inst3|Mux21~4_combout\);

-- Location: FF_X2_Y7_N17
\inst1|read_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|read_en~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|ALT_INV_cpuCacheOperation.read_cache~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|read_en~q\);

-- Location: LCCOMB_X2_Y7_N20
\inst3|data_out2[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data_out2[10]~0_combout\ = (\inst1|read_en~q\ & !\inst1|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|read_en~q\,
	datad => \inst1|write_en~q\,
	combout => \inst3|data_out2[10]~0_combout\);

-- Location: FF_X2_Y7_N3
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

-- Location: LCCOMB_X5_Y9_N6
\inst1|Selector227~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector227~0_combout\ = (\inst1|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out2\(10)))) # (!\inst1|sdramState.readResponseSDRAM~q\ & (\inst0|cache_to_cache_resp_out_data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sdramState.readResponseSDRAM~q\,
	datac => \inst0|cache_to_cache_resp_out_data\(10),
	datad => \inst3|data_out2\(10),
	combout => \inst1|Selector227~0_combout\);

-- Location: LCCOMB_X4_Y9_N28
\inst1|cache[1].data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[0]~1_combout\ = (\inst1|cache[1].data[0]~0_combout\ & ((\inst1|MSI~15_combout\) # ((\inst1|cpuCacheOperation.write_cache~q\ & \inst1|cache~26_combout\)))) # (!\inst1|cache[1].data[0]~0_combout\ & 
-- (((\inst1|cpuCacheOperation.write_cache~q\ & \inst1|cache~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].data[0]~0_combout\,
	datab => \inst1|MSI~15_combout\,
	datac => \inst1|cpuCacheOperation.write_cache~q\,
	datad => \inst1|cache~26_combout\,
	combout => \inst1|cache[1].data[0]~1_combout\);

-- Location: FF_X5_Y9_N21
\inst1|cache[1].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst1|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst1|cache[1].data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(10));

-- Location: LCCOMB_X6_Y9_N22
\inst1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux22~0_combout\ = (\inst1|indexOfCache~9_combout\ & (\inst1|indexOfCache~7_combout\)) # (!\inst1|indexOfCache~9_combout\ & ((\inst1|indexOfCache~7_combout\ & ((\inst1|cache[2].data\(10)))) # (!\inst1|indexOfCache~7_combout\ & 
-- (\inst1|cache[0].data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|cache[0].data\(10),
	datad => \inst1|cache[2].data\(10),
	combout => \inst1|Mux22~0_combout\);

-- Location: LCCOMB_X1_Y9_N24
\inst1|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux22~1_combout\ = (\inst1|indexOfCache~9_combout\ & ((\inst1|Mux22~0_combout\ & ((\inst1|cache[3].data\(10)))) # (!\inst1|Mux22~0_combout\ & (\inst1|cache[1].data\(10))))) # (!\inst1|indexOfCache~9_combout\ & (((\inst1|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|indexOfCache~9_combout\,
	datab => \inst1|cache[1].data\(10),
	datac => \inst1|cache[3].data\(10),
	datad => \inst1|Mux22~0_combout\,
	combout => \inst1|Mux22~1_combout\);

-- Location: LCCOMB_X2_Y9_N20
\inst1|cache_to_cache_resp_out_data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache_to_cache_resp_out_data[10]~0_combout\ = (\inst1|Mux0~1_combout\ & (!\rst~input_o\ & \inst1|indexOfCache~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \rst~input_o\,
	datad => \inst1|indexOfCache~6_combout\,
	combout => \inst1|cache_to_cache_resp_out_data[10]~0_combout\);

-- Location: FF_X1_Y9_N25
\inst1|cache_to_cache_resp_out_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Mux22~1_combout\,
	ena => \inst1|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_resp_out_data\(10));

-- Location: LCCOMB_X6_Y7_N26
\inst3|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~2_combout\ = (\inst0|Sdram_addr\(1) & (\inst0|Sdram_addr\(0))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & (\inst3|memory[1][10]~q\)) # (!\inst0|Sdram_addr\(0) & ((\inst3|memory[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst0|Sdram_addr\(0),
	datac => \inst3|memory[1][10]~q\,
	datad => \inst3|memory[0][10]~q\,
	combout => \inst3|Mux53~2_combout\);

-- Location: LCCOMB_X6_Y7_N12
\inst3|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~3_combout\ = (\inst3|Mux53~2_combout\ & ((\inst3|memory[3][10]~q\) # ((!\inst0|Sdram_addr\(1))))) # (!\inst3|Mux53~2_combout\ & (((\inst3|memory[2][10]~q\ & \inst0|Sdram_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[3][10]~q\,
	datab => \inst3|memory[2][10]~q\,
	datac => \inst3|Mux53~2_combout\,
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Mux53~3_combout\);

-- Location: LCCOMB_X1_Y7_N16
\inst3|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~0_combout\ = (\inst0|Sdram_addr\(0) & (((\inst0|Sdram_addr\(1))))) # (!\inst0|Sdram_addr\(0) & ((\inst0|Sdram_addr\(1) & ((\inst3|memory[6][10]~q\))) # (!\inst0|Sdram_addr\(1) & (\inst3|memory[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst3|memory[4][10]~q\,
	datac => \inst0|Sdram_addr\(1),
	datad => \inst3|memory[6][10]~q\,
	combout => \inst3|Mux53~0_combout\);

-- Location: LCCOMB_X2_Y7_N10
\inst3|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux53~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux53~0_combout\ & (\inst3|memory[7][10]~q\)) # (!\inst3|Mux53~0_combout\ & ((\inst3|memory[5][10]~q\))))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst3|memory[7][10]~q\,
	datac => \inst3|Mux53~0_combout\,
	datad => \inst3|memory[5][10]~q\,
	combout => \inst3|Mux53~1_combout\);

-- Location: LCCOMB_X3_Y7_N12
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

-- Location: LCCOMB_X7_Y7_N26
\inst3|data_out1[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|data_out1[10]~0_combout\ = (\inst0|read_en~q\ & !\inst0|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|read_en~q\,
	datad => \inst0|write_en~q\,
	combout => \inst3|data_out1[10]~0_combout\);

-- Location: FF_X3_Y7_N13
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

-- Location: LCCOMB_X7_Y8_N10
\inst0|Selector227~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector227~0_combout\ = (\inst0|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out1\(10)))) # (!\inst0|sdramState.readResponseSDRAM~q\ & (\inst1|cache_to_cache_resp_out_data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cache_to_cache_resp_out_data\(10),
	datac => \inst0|sdramState.readResponseSDRAM~q\,
	datad => \inst3|data_out1\(10),
	combout => \inst0|Selector227~0_combout\);

-- Location: LCCOMB_X6_Y10_N30
\inst0|cache[0].data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].data[10]~0_combout\ = (\inst0|cpuCacheOperation.write_cache~q\ & (((\inst0|cache[1].data[2]~0_combout\ & !\inst0|MSI~13_combout\)) # (!\inst0|cache~23_combout\))) # (!\inst0|cpuCacheOperation.write_cache~q\ & 
-- (((\inst0|cache[1].data[2]~0_combout\ & !\inst0|MSI~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cpuCacheOperation.write_cache~q\,
	datab => \inst0|cache~23_combout\,
	datac => \inst0|cache[1].data[2]~0_combout\,
	datad => \inst0|MSI~13_combout\,
	combout => \inst0|cache[0].data[10]~0_combout\);

-- Location: FF_X5_Y11_N19
\inst0|cache[0].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst0|Selector227~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \inst0|cpuCacheOperation.write_cache~q\,
	sload => VCC,
	ena => \inst0|cache[0].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(10));

-- Location: LCCOMB_X5_Y11_N28
\inst0|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux22~0_combout\ = (\inst0|indexOfCache~5_combout\ & (((\inst0|indexOfCache~3_combout\)))) # (!\inst0|indexOfCache~5_combout\ & ((\inst0|indexOfCache~3_combout\ & ((\inst0|cache[2].data\(10)))) # (!\inst0|indexOfCache~3_combout\ & 
-- (\inst0|cache[0].data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~5_combout\,
	datab => \inst0|cache[0].data\(10),
	datac => \inst0|cache[2].data\(10),
	datad => \inst0|indexOfCache~3_combout\,
	combout => \inst0|Mux22~0_combout\);

-- Location: LCCOMB_X6_Y8_N0
\inst0|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux22~1_combout\ = (\inst0|Mux22~0_combout\ & (((\inst0|cache[3].data\(10)) # (!\inst0|indexOfCache~5_combout\)))) # (!\inst0|Mux22~0_combout\ & (\inst0|cache[1].data\(10) & (\inst0|indexOfCache~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Mux22~0_combout\,
	datab => \inst0|cache[1].data\(10),
	datac => \inst0|indexOfCache~5_combout\,
	datad => \inst0|cache[3].data\(10),
	combout => \inst0|Mux22~1_combout\);

-- Location: LCCOMB_X7_Y8_N16
\inst0|cache_to_cache_resp_out_data[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache_to_cache_resp_out_data[10]~0_combout\ = (!\rst~input_o\ & (\inst0|Mux0~1_combout\ & \inst0|indexOfCache~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst0|Mux0~1_combout\,
	datad => \inst0|indexOfCache~2_combout\,
	combout => \inst0|cache_to_cache_resp_out_data[10]~0_combout\);

-- Location: FF_X6_Y8_N1
\inst0|cache_to_cache_resp_out_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Mux22~1_combout\,
	ena => \inst0|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_resp_out_data\(10));

-- Location: LCCOMB_X5_Y8_N6
\inst0|cache[3].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[2]~feeder_combout\ = \inst0|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector235~0_combout\,
	combout => \inst0|cache[3].data[2]~feeder_combout\);

-- Location: LCCOMB_X4_Y11_N18
\inst0|dataToSendToCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|dataToSendToCache[0]~0_combout\ = (\inst0|dataToSendToCache\(0)) # ((!\inst0|CurrentState.writeData~q\ & ((\inst0|hit~q\) # (!\inst0|CurrentState.requestData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|CurrentState.writeData~q\,
	datab => \inst0|hit~q\,
	datac => \inst0|dataToSendToCache\(0),
	datad => \inst0|CurrentState.requestData~q\,
	combout => \inst0|dataToSendToCache[0]~0_combout\);

-- Location: FF_X4_Y11_N19
\inst0|dataToSendToCache[0]\ : dffeas
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
	q => \inst0|dataToSendToCache\(0));

-- Location: FF_X5_Y8_N7
\inst0|cache[3].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[2]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[3].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(2));

-- Location: LCCOMB_X6_Y10_N12
\inst0|cache[1].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[2]~feeder_combout\ = \inst0|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector235~0_combout\,
	combout => \inst0|cache[1].data[2]~feeder_combout\);

-- Location: FF_X6_Y10_N13
\inst0|cache[1].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[2]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[1].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(2));

-- Location: LCCOMB_X6_Y10_N22
\inst0|cache[0].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].data[2]~feeder_combout\ = \inst0|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector235~0_combout\,
	combout => \inst0|cache[0].data[2]~feeder_combout\);

-- Location: FF_X6_Y10_N23
\inst0|cache[0].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].data[2]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[0].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(2));

-- Location: LCCOMB_X6_Y8_N20
\inst0|Selector382~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector382~0_combout\ = (\inst0|evictCounter\(0) & ((\inst0|cache[1].data\(2)) # ((\inst0|evictCounter\(1))))) # (!\inst0|evictCounter\(0) & (((\inst0|cache[0].data\(2) & !\inst0|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(0),
	datab => \inst0|cache[1].data\(2),
	datac => \inst0|cache[0].data\(2),
	datad => \inst0|evictCounter\(1),
	combout => \inst0|Selector382~0_combout\);

-- Location: LCCOMB_X6_Y8_N22
\inst0|Selector382~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector382~1_combout\ = (\inst0|evictCounter\(1) & ((\inst0|Selector382~0_combout\ & ((\inst0|cache[3].data\(2)))) # (!\inst0|Selector382~0_combout\ & (\inst0|cache[2].data\(2))))) # (!\inst0|evictCounter\(1) & (((\inst0|Selector382~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[2].data\(2),
	datac => \inst0|cache[3].data\(2),
	datad => \inst0|Selector382~0_combout\,
	combout => \inst0|Selector382~1_combout\);

-- Location: FF_X6_Y8_N23
\inst0|Sdram_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector382~1_combout\,
	ena => \inst0|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(2));

-- Location: LCCOMB_X2_Y9_N24
\inst1|cache[2].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[2]~feeder_combout\ = \inst1|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Selector235~0_combout\,
	combout => \inst1|cache[2].data[2]~feeder_combout\);

-- Location: LCCOMB_X1_Y10_N28
\inst1|dataToSendToCache[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataToSendToCache[0]~0_combout\ = (\inst1|dataToSendToCache\(0)) # ((!\inst1|CurrentState.writeData~q\ & ((\inst1|hit~q\) # (!\inst1|CurrentState.requestData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|CurrentState.requestData~q\,
	datab => \inst1|CurrentState.writeData~q\,
	datac => \inst1|dataToSendToCache\(0),
	datad => \inst1|hit~q\,
	combout => \inst1|dataToSendToCache[0]~0_combout\);

-- Location: FF_X1_Y10_N29
\inst1|dataToSendToCache[0]\ : dffeas
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
	q => \inst1|dataToSendToCache\(0));

-- Location: FF_X2_Y9_N25
\inst1|cache[2].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[2]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(2));

-- Location: LCCOMB_X7_Y9_N2
\inst1|cache[0].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].data[2]~feeder_combout\ = \inst1|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector235~0_combout\,
	combout => \inst1|cache[0].data[2]~feeder_combout\);

-- Location: FF_X7_Y9_N3
\inst1|cache[0].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].data[2]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[0].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(2));

-- Location: LCCOMB_X7_Y9_N4
\inst1|cache[1].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[2]~feeder_combout\ = \inst1|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector235~0_combout\,
	combout => \inst1|cache[1].data[2]~feeder_combout\);

-- Location: FF_X7_Y9_N5
\inst1|cache[1].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[2]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[1].data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(2));

-- Location: LCCOMB_X1_Y9_N30
\inst1|Selector382~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector382~0_combout\ = (\inst1|evictCounter\(0) & (((\inst1|cache[1].data\(2)) # (\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & (\inst1|cache[0].data\(2) & ((!\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].data\(2),
	datab => \inst1|cache[1].data\(2),
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector382~0_combout\);

-- Location: LCCOMB_X1_Y9_N22
\inst1|Selector382~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector382~1_combout\ = (\inst1|Selector382~0_combout\ & (((\inst1|cache[3].data\(2)) # (!\inst1|evictCounter\(1))))) # (!\inst1|Selector382~0_combout\ & (\inst1|cache[2].data\(2) & ((\inst1|evictCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[2].data\(2),
	datab => \inst1|Selector382~0_combout\,
	datac => \inst1|cache[3].data\(2),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector382~1_combout\);

-- Location: FF_X1_Y9_N23
\inst1|Sdram_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector382~1_combout\,
	ena => \inst1|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(2));

-- Location: LCCOMB_X2_Y8_N16
\inst3|memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~19_combout\ = (\inst3|Decoder1~3_combout\ & (!\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~3_combout\ & ((!\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(2),
	datac => \inst1|Sdram_data_out\(2),
	datad => \inst3|Decoder1~3_combout\,
	combout => \inst3|memory~19_combout\);

-- Location: LCCOMB_X2_Y8_N24
\inst3|memory[7][1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory[7][1]~20_combout\ = (\inst3|Decoder1~3_combout\) # (!\inst3|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Decoder0~2_combout\,
	datad => \inst3|Decoder1~3_combout\,
	combout => \inst3|memory[7][1]~20_combout\);

-- Location: FF_X2_Y8_N17
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
	ena => \inst3|memory[7][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][2]~q\);

-- Location: LCCOMB_X3_Y7_N10
\inst3|memory~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~15_combout\ = (\inst3|Decoder1~0_combout\ & ((!\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~0_combout\ & (!\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(2),
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~15_combout\);

-- Location: FF_X3_Y7_N11
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

-- Location: LCCOMB_X1_Y7_N12
\inst3|memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~17_combout\ = (\inst3|Decoder0~1_combout\ & (!\inst3|memory[4][2]~q\)) # (!\inst3|Decoder0~1_combout\ & ((\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][2]~q\,
	datac => \inst3|Decoder0~1_combout\,
	datad => \inst1|Sdram_data_out\(2),
	combout => \inst3|memory~17_combout\);

-- Location: LCCOMB_X1_Y7_N30
\inst3|memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~18_combout\ = (\inst3|Decoder1~2_combout\ & ((!\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~2_combout\ & (!\inst3|memory~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory~17_combout\,
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~18_combout\);

-- Location: FF_X1_Y7_N31
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

-- Location: LCCOMB_X2_Y8_N2
\inst3|memory~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~16_combout\ = (\inst3|Decoder1~1_combout\ & (!\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~1_combout\ & ((!\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(2),
	datac => \inst1|Sdram_data_out\(2),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~16_combout\);

-- Location: FF_X2_Y8_N3
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

-- Location: LCCOMB_X1_Y7_N28
\inst3|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & ((!\inst3|memory[6][2]~q\))) # (!\inst1|Sdram_addr\(1) & (!\inst3|memory[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][2]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|memory[6][2]~q\,
	combout => \inst3|Mux29~0_combout\);

-- Location: LCCOMB_X2_Y7_N26
\inst3|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux29~0_combout\ & (!\inst3|memory[7][2]~q\)) # (!\inst3|Mux29~0_combout\ & ((!\inst3|memory[5][2]~q\))))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst3|memory[7][2]~q\,
	datac => \inst3|memory[5][2]~q\,
	datad => \inst3|Mux29~0_combout\,
	combout => \inst3|Mux29~1_combout\);

-- Location: LCCOMB_X5_Y7_N24
\inst3|memory~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~24_combout\ = (\inst3|Decoder1~7_combout\ & ((\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~7_combout\ & (\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(2),
	datac => \inst0|Sdram_data_out\(2),
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory~24_combout\);

-- Location: FF_X5_Y7_N25
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

-- Location: LCCOMB_X5_Y7_N8
\inst3|memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~23_combout\ = (\inst3|Decoder1~6_combout\ & ((\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~6_combout\ & (\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Decoder1~6_combout\,
	datab => \inst1|Sdram_data_out\(2),
	datac => \inst0|Sdram_data_out\(2),
	combout => \inst3|memory~23_combout\);

-- Location: FF_X5_Y7_N9
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
	ena => \inst3|memory[0][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][2]~q\);

-- Location: LCCOMB_X6_Y7_N6
\inst3|memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~22_combout\ = (\inst3|Decoder1~5_combout\ & (\inst0|Sdram_data_out\(2))) # (!\inst3|Decoder1~5_combout\ & ((\inst1|Sdram_data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(2),
	datab => \inst1|Sdram_data_out\(2),
	datac => \inst3|Decoder1~5_combout\,
	combout => \inst3|memory~22_combout\);

-- Location: FF_X6_Y7_N7
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
	ena => \inst3|memory[1][10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][2]~q\);

-- Location: LCCOMB_X5_Y7_N14
\inst3|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~2_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1)) # (\inst3|memory[1][2]~q\)))) # (!\inst1|Sdram_addr\(0) & (\inst3|memory[0][2]~q\ & (!\inst1|Sdram_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst3|memory[0][2]~q\,
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|memory[1][2]~q\,
	combout => \inst3|Mux29~2_combout\);

-- Location: LCCOMB_X4_Y7_N18
\inst3|memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~21_combout\ = (\inst3|Decoder1~4_combout\ & ((\inst0|Sdram_data_out\(2)))) # (!\inst3|Decoder1~4_combout\ & (\inst1|Sdram_data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(2),
	datab => \inst0|Sdram_data_out\(2),
	datac => \inst3|Decoder1~4_combout\,
	combout => \inst3|memory~21_combout\);

-- Location: FF_X4_Y7_N19
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
	ena => \inst3|memory[2][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][2]~q\);

-- Location: LCCOMB_X4_Y7_N8
\inst3|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux29~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux29~2_combout\ & (\inst3|memory[3][2]~q\)) # (!\inst3|Mux29~2_combout\ & ((\inst3|memory[2][2]~q\))))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(1),
	datab => \inst3|memory[3][2]~q\,
	datac => \inst3|Mux29~2_combout\,
	datad => \inst3|memory[2][2]~q\,
	combout => \inst3|Mux29~3_combout\);

-- Location: LCCOMB_X2_Y7_N4
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

-- Location: FF_X2_Y7_N5
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

-- Location: LCCOMB_X2_Y9_N4
\inst1|Selector235~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector235~0_combout\ = (\inst1|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out2\(2)))) # (!\inst1|sdramState.readResponseSDRAM~q\ & (\inst0|cache_to_cache_resp_out_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out_data\(2),
	datac => \inst1|sdramState.readResponseSDRAM~q\,
	datad => \inst3|data_out2\(2),
	combout => \inst1|Selector235~0_combout\);

-- Location: LCCOMB_X2_Y9_N2
\inst1|cache[3].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[2]~feeder_combout\ = \inst1|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Selector235~0_combout\,
	combout => \inst1|cache[3].data[2]~feeder_combout\);

-- Location: FF_X2_Y9_N3
\inst1|cache[3].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[2]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[3].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(2));

-- Location: LCCOMB_X1_Y9_N16
\inst1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~0_combout\ = (\inst1|indexOfCache~7_combout\ & (((\inst1|indexOfCache~9_combout\)))) # (!\inst1|indexOfCache~7_combout\ & ((\inst1|indexOfCache~9_combout\ & ((\inst1|cache[1].data\(2)))) # (!\inst1|indexOfCache~9_combout\ & 
-- (\inst1|cache[0].data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].data\(2),
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|indexOfCache~9_combout\,
	datad => \inst1|cache[1].data\(2),
	combout => \inst1|Mux30~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\inst1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux30~1_combout\ = (\inst1|indexOfCache~7_combout\ & ((\inst1|Mux30~0_combout\ & (\inst1|cache[3].data\(2))) # (!\inst1|Mux30~0_combout\ & ((\inst1|cache[2].data\(2)))))) # (!\inst1|indexOfCache~7_combout\ & (((\inst1|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].data\(2),
	datab => \inst1|indexOfCache~7_combout\,
	datac => \inst1|cache[2].data\(2),
	datad => \inst1|Mux30~0_combout\,
	combout => \inst1|Mux30~1_combout\);

-- Location: FF_X1_Y9_N27
\inst1|cache_to_cache_resp_out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Mux30~1_combout\,
	ena => \inst1|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_resp_out_data\(2));

-- Location: LCCOMB_X5_Y7_N20
\inst3|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~2_combout\ = (\inst0|Sdram_addr\(1) & (\inst0|Sdram_addr\(0))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & ((\inst3|memory[1][2]~q\))) # (!\inst0|Sdram_addr\(0) & (\inst3|memory[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst0|Sdram_addr\(0),
	datac => \inst3|memory[0][2]~q\,
	datad => \inst3|memory[1][2]~q\,
	combout => \inst3|Mux61~2_combout\);

-- Location: LCCOMB_X4_Y7_N14
\inst3|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux61~2_combout\ & ((\inst3|memory[3][2]~q\))) # (!\inst3|Mux61~2_combout\ & (\inst3|memory[2][2]~q\)))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst3|memory[2][2]~q\,
	datac => \inst3|Mux61~2_combout\,
	datad => \inst3|memory[3][2]~q\,
	combout => \inst3|Mux61~3_combout\);

-- Location: LCCOMB_X1_Y7_N14
\inst3|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~0_combout\ = (\inst0|Sdram_addr\(0) & (\inst0|Sdram_addr\(1))) # (!\inst0|Sdram_addr\(0) & ((\inst0|Sdram_addr\(1) & ((!\inst3|memory[6][2]~q\))) # (!\inst0|Sdram_addr\(1) & (!\inst3|memory[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst0|Sdram_addr\(1),
	datac => \inst3|memory[4][2]~q\,
	datad => \inst3|memory[6][2]~q\,
	combout => \inst3|Mux61~0_combout\);

-- Location: LCCOMB_X2_Y7_N24
\inst3|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux61~0_combout\ & ((!\inst3|memory[7][2]~q\))) # (!\inst3|Mux61~0_combout\ & (!\inst3|memory[5][2]~q\)))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst3|memory[5][2]~q\,
	datac => \inst3|memory[7][2]~q\,
	datad => \inst3|Mux61~0_combout\,
	combout => \inst3|Mux61~1_combout\);

-- Location: LCCOMB_X3_Y7_N18
\inst3|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux61~4_combout\ = (\inst0|Sdram_addr\(2) & ((\inst3|Mux61~1_combout\))) # (!\inst0|Sdram_addr\(2) & (\inst3|Mux61~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux61~3_combout\,
	datad => \inst3|Mux61~1_combout\,
	combout => \inst3|Mux61~4_combout\);

-- Location: FF_X3_Y7_N19
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

-- Location: LCCOMB_X5_Y8_N8
\inst0|Selector235~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector235~0_combout\ = (\inst0|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out1\(2)))) # (!\inst0|sdramState.readResponseSDRAM~q\ & (\inst1|cache_to_cache_resp_out_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datac => \inst1|cache_to_cache_resp_out_data\(2),
	datad => \inst3|data_out1\(2),
	combout => \inst0|Selector235~0_combout\);

-- Location: LCCOMB_X5_Y8_N28
\inst0|cache[2].data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[2]~feeder_combout\ = \inst0|Selector235~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector235~0_combout\,
	combout => \inst0|cache[2].data[2]~feeder_combout\);

-- Location: FF_X5_Y8_N29
\inst0|cache[2].data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[2]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(2));

-- Location: LCCOMB_X6_Y8_N28
\inst0|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux30~0_combout\ = (\inst0|indexOfCache~3_combout\ & (((\inst0|indexOfCache~5_combout\)))) # (!\inst0|indexOfCache~3_combout\ & ((\inst0|indexOfCache~5_combout\ & (\inst0|cache[1].data\(2))) # (!\inst0|indexOfCache~5_combout\ & 
-- ((\inst0|cache[0].data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|cache[1].data\(2),
	datac => \inst0|cache[0].data\(2),
	datad => \inst0|indexOfCache~5_combout\,
	combout => \inst0|Mux30~0_combout\);

-- Location: LCCOMB_X6_Y8_N30
\inst0|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux30~1_combout\ = (\inst0|indexOfCache~3_combout\ & ((\inst0|Mux30~0_combout\ & ((\inst0|cache[3].data\(2)))) # (!\inst0|Mux30~0_combout\ & (\inst0|cache[2].data\(2))))) # (!\inst0|indexOfCache~3_combout\ & (((\inst0|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|cache[2].data\(2),
	datac => \inst0|cache[3].data\(2),
	datad => \inst0|Mux30~0_combout\,
	combout => \inst0|Mux30~1_combout\);

-- Location: FF_X6_Y8_N31
\inst0|cache_to_cache_resp_out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Mux30~1_combout\,
	ena => \inst0|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_resp_out_data\(2));

-- Location: LCCOMB_X5_Y8_N4
\inst0|cache[2].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[1]~feeder_combout\ = \inst0|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Selector236~0_combout\,
	combout => \inst0|cache[2].data[1]~feeder_combout\);

-- Location: FF_X5_Y8_N5
\inst0|cache[2].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[1]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(1));

-- Location: LCCOMB_X6_Y10_N10
\inst0|cache[0].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].data[1]~feeder_combout\ = \inst0|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector236~0_combout\,
	combout => \inst0|cache[0].data[1]~feeder_combout\);

-- Location: FF_X6_Y10_N11
\inst0|cache[0].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].data[1]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[0].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(1));

-- Location: LCCOMB_X6_Y8_N14
\inst0|Selector383~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector383~0_combout\ = (\inst0|evictCounter\(1) & ((\inst0|cache[2].data\(1)) # ((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & (((!\inst0|evictCounter\(0) & \inst0|cache[0].data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[2].data\(1),
	datac => \inst0|evictCounter\(0),
	datad => \inst0|cache[0].data\(1),
	combout => \inst0|Selector383~0_combout\);

-- Location: LCCOMB_X5_Y8_N22
\inst0|cache[3].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[1]~feeder_combout\ = \inst0|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Selector236~0_combout\,
	combout => \inst0|cache[3].data[1]~feeder_combout\);

-- Location: FF_X5_Y8_N23
\inst0|cache[3].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[1]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[3].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(1));

-- Location: LCCOMB_X6_Y8_N12
\inst0|Selector383~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector383~1_combout\ = (\inst0|Selector383~0_combout\ & (((\inst0|cache[3].data\(1)) # (!\inst0|evictCounter\(0))))) # (!\inst0|Selector383~0_combout\ & (\inst0|cache[1].data\(1) & (\inst0|evictCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].data\(1),
	datab => \inst0|Selector383~0_combout\,
	datac => \inst0|evictCounter\(0),
	datad => \inst0|cache[3].data\(1),
	combout => \inst0|Selector383~1_combout\);

-- Location: FF_X6_Y8_N13
\inst0|Sdram_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector383~1_combout\,
	ena => \inst0|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(1));

-- Location: LCCOMB_X7_Y9_N8
\inst1|cache[1].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[1]~feeder_combout\ = \inst1|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector236~0_combout\,
	combout => \inst1|cache[1].data[1]~feeder_combout\);

-- Location: FF_X7_Y9_N9
\inst1|cache[1].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[1]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[1].data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(1));

-- Location: LCCOMB_X7_Y9_N10
\inst1|cache[0].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].data[1]~feeder_combout\ = \inst1|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector236~0_combout\,
	combout => \inst1|cache[0].data[1]~feeder_combout\);

-- Location: FF_X7_Y9_N11
\inst1|cache[0].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].data[1]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[0].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(1));

-- Location: LCCOMB_X2_Y9_N28
\inst1|cache[2].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[1]~feeder_combout\ = \inst1|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector236~0_combout\,
	combout => \inst1|cache[2].data[1]~feeder_combout\);

-- Location: FF_X2_Y9_N29
\inst1|cache[2].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[1]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(1));

-- Location: LCCOMB_X1_Y9_N4
\inst1|Selector383~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector383~0_combout\ = (\inst1|evictCounter\(0) & (((\inst1|evictCounter\(1))))) # (!\inst1|evictCounter\(0) & ((\inst1|evictCounter\(1) & ((\inst1|cache[2].data\(1)))) # (!\inst1|evictCounter\(1) & (\inst1|cache[0].data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].data\(1),
	datab => \inst1|cache[2].data\(1),
	datac => \inst1|evictCounter\(0),
	datad => \inst1|evictCounter\(1),
	combout => \inst1|Selector383~0_combout\);

-- Location: LCCOMB_X1_Y9_N28
\inst1|Selector383~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector383~1_combout\ = (\inst1|Selector383~0_combout\ & (((\inst1|cache[3].data\(1)) # (!\inst1|evictCounter\(0))))) # (!\inst1|Selector383~0_combout\ & (\inst1|cache[1].data\(1) & ((\inst1|evictCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[1].data\(1),
	datab => \inst1|Selector383~0_combout\,
	datac => \inst1|cache[3].data\(1),
	datad => \inst1|evictCounter\(0),
	combout => \inst1|Selector383~1_combout\);

-- Location: FF_X1_Y9_N29
\inst1|Sdram_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector383~1_combout\,
	ena => \inst1|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(1));

-- Location: LCCOMB_X5_Y7_N16
\inst3|memory~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~33_combout\ = (\inst3|Decoder1~7_combout\ & (!\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~7_combout\ & ((!\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datac => \inst1|Sdram_data_out\(1),
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory~33_combout\);

-- Location: FF_X5_Y7_N17
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

-- Location: LCCOMB_X4_Y7_N2
\inst3|memory~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~29_combout\ = (!\inst3|Decoder1~4_combout\ & ((\inst3|Decoder0~3_combout\ & ((!\inst3|memory[2][1]~q\))) # (!\inst3|Decoder0~3_combout\ & (\inst1|Sdram_data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(1),
	datab => \inst3|Decoder0~3_combout\,
	datac => \inst3|Decoder1~4_combout\,
	datad => \inst3|memory[2][1]~q\,
	combout => \inst3|memory~29_combout\);

-- Location: LCCOMB_X4_Y7_N26
\inst3|memory~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~30_combout\ = (!\inst3|memory~29_combout\ & ((!\inst3|Decoder1~4_combout\) # (!\inst0|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datac => \inst3|Decoder1~4_combout\,
	datad => \inst3|memory~29_combout\,
	combout => \inst3|memory~30_combout\);

-- Location: FF_X4_Y7_N27
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

-- Location: LCCOMB_X5_Y7_N30
\inst3|memory~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~32_combout\ = (\inst3|Decoder1~6_combout\ & ((\inst0|Sdram_data_out\(1)))) # (!\inst3|Decoder1~6_combout\ & (\inst1|Sdram_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(1),
	datac => \inst3|Decoder1~6_combout\,
	datad => \inst0|Sdram_data_out\(1),
	combout => \inst3|memory~32_combout\);

-- Location: FF_X5_Y7_N31
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
	ena => \inst3|memory[0][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][1]~q\);

-- Location: LCCOMB_X6_Y7_N8
\inst3|memory~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~31_combout\ = (\inst3|Decoder1~5_combout\ & (\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~5_combout\ & ((\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datac => \inst3|Decoder1~5_combout\,
	datad => \inst1|Sdram_data_out\(1),
	combout => \inst3|memory~31_combout\);

-- Location: FF_X6_Y7_N9
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
	ena => \inst3|memory[1][10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][1]~q\);

-- Location: LCCOMB_X4_Y7_N0
\inst3|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~2_combout\ = (\inst1|Sdram_addr\(0) & (((\inst3|memory[1][1]~q\) # (\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & (\inst3|memory[0][1]~q\ & ((!\inst1|Sdram_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[0][1]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|memory[1][1]~q\,
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Mux30~2_combout\);

-- Location: LCCOMB_X4_Y7_N6
\inst3|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~3_combout\ = (\inst1|Sdram_addr\(1) & ((\inst3|Mux30~2_combout\ & (!\inst3|memory[3][1]~q\)) # (!\inst3|Mux30~2_combout\ & ((!\inst3|memory[2][1]~q\))))) # (!\inst1|Sdram_addr\(1) & (((\inst3|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(1),
	datab => \inst3|memory[3][1]~q\,
	datac => \inst3|memory[2][1]~q\,
	datad => \inst3|Mux30~2_combout\,
	combout => \inst3|Mux30~3_combout\);

-- Location: LCCOMB_X2_Y8_N20
\inst3|memory~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~28_combout\ = (\inst3|Decoder1~3_combout\ & (!\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~3_combout\ & ((!\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datac => \inst1|Sdram_data_out\(1),
	datad => \inst3|Decoder1~3_combout\,
	combout => \inst3|memory~28_combout\);

-- Location: FF_X2_Y8_N21
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
	ena => \inst3|memory[7][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][1]~q\);

-- Location: LCCOMB_X1_Y7_N10
\inst3|memory~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~27_combout\ = (\inst3|Decoder1~2_combout\ & ((\inst0|Sdram_data_out\(1)))) # (!\inst3|Decoder1~2_combout\ & (\inst1|Sdram_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(1),
	datac => \inst0|Sdram_data_out\(1),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~27_combout\);

-- Location: FF_X1_Y7_N11
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

-- Location: LCCOMB_X2_Y8_N6
\inst3|memory~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~26_combout\ = (\inst3|Decoder1~1_combout\ & (!\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~1_combout\ & ((!\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_data_out\(1),
	datac => \inst1|Sdram_data_out\(1),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~26_combout\);

-- Location: FF_X2_Y8_N7
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

-- Location: LCCOMB_X1_Y7_N0
\inst3|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & ((!\inst3|memory[6][1]~q\))) # (!\inst1|Sdram_addr\(1) & (\inst3|memory[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][1]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst1|Sdram_addr\(1),
	datad => \inst3|memory[6][1]~q\,
	combout => \inst3|Mux30~0_combout\);

-- Location: LCCOMB_X3_Y7_N24
\inst3|memory~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~25_combout\ = (\inst3|Decoder1~0_combout\ & (\inst0|Sdram_data_out\(1))) # (!\inst3|Decoder1~0_combout\ & ((\inst1|Sdram_data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(1),
	datac => \inst1|Sdram_data_out\(1),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~25_combout\);

-- Location: FF_X3_Y7_N25
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

-- Location: LCCOMB_X2_Y7_N28
\inst3|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux30~0_combout\ & (!\inst3|memory[7][1]~q\)) # (!\inst3|Mux30~0_combout\ & ((\inst3|memory[5][1]~q\))))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(0),
	datab => \inst3|memory[7][1]~q\,
	datac => \inst3|Mux30~0_combout\,
	datad => \inst3|memory[5][1]~q\,
	combout => \inst3|Mux30~1_combout\);

-- Location: LCCOMB_X2_Y7_N18
\inst3|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux30~4_combout\ = (\inst1|Sdram_addr\(2) & ((\inst3|Mux30~1_combout\))) # (!\inst1|Sdram_addr\(2) & (\inst3|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux30~3_combout\,
	datad => \inst3|Mux30~1_combout\,
	combout => \inst3|Mux30~4_combout\);

-- Location: FF_X2_Y7_N19
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

-- Location: LCCOMB_X2_Y9_N6
\inst1|Selector236~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector236~0_combout\ = (\inst1|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out2\(1)))) # (!\inst1|sdramState.readResponseSDRAM~q\ & (\inst0|cache_to_cache_resp_out_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|cache_to_cache_resp_out_data\(1),
	datac => \inst1|sdramState.readResponseSDRAM~q\,
	datad => \inst3|data_out2\(1),
	combout => \inst1|Selector236~0_combout\);

-- Location: LCCOMB_X2_Y9_N30
\inst1|cache[3].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[1]~feeder_combout\ = \inst1|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector236~0_combout\,
	combout => \inst1|cache[3].data[1]~feeder_combout\);

-- Location: FF_X2_Y9_N31
\inst1|cache[3].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[1]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[3].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(1));

-- Location: LCCOMB_X1_Y9_N2
\inst1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~0_combout\ = (\inst1|indexOfCache~7_combout\ & (((\inst1|cache[2].data\(1)) # (\inst1|indexOfCache~9_combout\)))) # (!\inst1|indexOfCache~7_combout\ & (\inst1|cache[0].data\(1) & ((!\inst1|indexOfCache~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].data\(1),
	datab => \inst1|cache[2].data\(1),
	datac => \inst1|indexOfCache~7_combout\,
	datad => \inst1|indexOfCache~9_combout\,
	combout => \inst1|Mux31~0_combout\);

-- Location: LCCOMB_X1_Y9_N8
\inst1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux31~1_combout\ = (\inst1|Mux31~0_combout\ & ((\inst1|cache[3].data\(1)) # ((!\inst1|indexOfCache~9_combout\)))) # (!\inst1|Mux31~0_combout\ & (((\inst1|cache[1].data\(1) & \inst1|indexOfCache~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[3].data\(1),
	datab => \inst1|Mux31~0_combout\,
	datac => \inst1|cache[1].data\(1),
	datad => \inst1|indexOfCache~9_combout\,
	combout => \inst1|Mux31~1_combout\);

-- Location: FF_X1_Y9_N9
\inst1|cache_to_cache_resp_out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Mux31~1_combout\,
	ena => \inst1|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_resp_out_data\(1));

-- Location: LCCOMB_X4_Y7_N28
\inst3|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~2_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0))))) # (!\inst0|Sdram_addr\(1) & ((\inst0|Sdram_addr\(0) & (\inst3|memory[1][1]~q\)) # (!\inst0|Sdram_addr\(0) & ((\inst3|memory[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst3|memory[1][1]~q\,
	datac => \inst3|memory[0][1]~q\,
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux62~2_combout\);

-- Location: LCCOMB_X4_Y7_N10
\inst3|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux62~2_combout\ & (!\inst3|memory[3][1]~q\)) # (!\inst3|Mux62~2_combout\ & ((!\inst3|memory[2][1]~q\))))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst3|memory[3][1]~q\,
	datac => \inst3|memory[2][1]~q\,
	datad => \inst3|Mux62~2_combout\,
	combout => \inst3|Mux62~3_combout\);

-- Location: LCCOMB_X1_Y7_N20
\inst3|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~0_combout\ = (\inst0|Sdram_addr\(1) & (((\inst0|Sdram_addr\(0)) # (!\inst3|memory[6][1]~q\)))) # (!\inst0|Sdram_addr\(1) & (\inst3|memory[4][1]~q\ & (!\inst0|Sdram_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][1]~q\,
	datab => \inst0|Sdram_addr\(1),
	datac => \inst0|Sdram_addr\(0),
	datad => \inst3|memory[6][1]~q\,
	combout => \inst3|Mux62~0_combout\);

-- Location: LCCOMB_X2_Y7_N14
\inst3|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~1_combout\ = (\inst0|Sdram_addr\(0) & ((\inst3|Mux62~0_combout\ & ((!\inst3|memory[7][1]~q\))) # (!\inst3|Mux62~0_combout\ & (\inst3|memory[5][1]~q\)))) # (!\inst0|Sdram_addr\(0) & (((\inst3|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(0),
	datab => \inst3|memory[5][1]~q\,
	datac => \inst3|memory[7][1]~q\,
	datad => \inst3|Mux62~0_combout\,
	combout => \inst3|Mux62~1_combout\);

-- Location: LCCOMB_X3_Y7_N0
\inst3|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux62~4_combout\ = (\inst0|Sdram_addr\(2) & ((\inst3|Mux62~1_combout\))) # (!\inst0|Sdram_addr\(2) & (\inst3|Mux62~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux62~3_combout\,
	datad => \inst3|Mux62~1_combout\,
	combout => \inst3|Mux62~4_combout\);

-- Location: FF_X3_Y7_N1
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

-- Location: LCCOMB_X5_Y8_N14
\inst0|Selector236~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector236~0_combout\ = (\inst0|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out1\(1)))) # (!\inst0|sdramState.readResponseSDRAM~q\ & (\inst1|cache_to_cache_resp_out_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cache_to_cache_resp_out_data\(1),
	datac => \inst3|data_out1\(1),
	datad => \inst0|sdramState.readResponseSDRAM~q\,
	combout => \inst0|Selector236~0_combout\);

-- Location: LCCOMB_X6_Y10_N28
\inst0|cache[1].data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[1]~feeder_combout\ = \inst0|Selector236~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector236~0_combout\,
	combout => \inst0|cache[1].data[1]~feeder_combout\);

-- Location: FF_X6_Y10_N29
\inst0|cache[1].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[1]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[1].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(1));

-- Location: LCCOMB_X6_Y8_N18
\inst0|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux31~0_combout\ = (\inst0|indexOfCache~3_combout\ & ((\inst0|indexOfCache~5_combout\) # ((\inst0|cache[2].data\(1))))) # (!\inst0|indexOfCache~3_combout\ & (!\inst0|indexOfCache~5_combout\ & ((\inst0|cache[0].data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|indexOfCache~5_combout\,
	datac => \inst0|cache[2].data\(1),
	datad => \inst0|cache[0].data\(1),
	combout => \inst0|Mux31~0_combout\);

-- Location: LCCOMB_X6_Y8_N4
\inst0|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux31~1_combout\ = (\inst0|indexOfCache~5_combout\ & ((\inst0|Mux31~0_combout\ & ((\inst0|cache[3].data\(1)))) # (!\inst0|Mux31~0_combout\ & (\inst0|cache[1].data\(1))))) # (!\inst0|indexOfCache~5_combout\ & (((\inst0|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[1].data\(1),
	datab => \inst0|cache[3].data\(1),
	datac => \inst0|indexOfCache~5_combout\,
	datad => \inst0|Mux31~0_combout\,
	combout => \inst0|Mux31~1_combout\);

-- Location: FF_X6_Y8_N5
\inst0|cache_to_cache_resp_out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Mux31~1_combout\,
	ena => \inst0|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_resp_out_data\(1));

-- Location: LCCOMB_X6_Y10_N26
\inst0|cache[0].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[0].data[0]~feeder_combout\ = \inst0|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector237~0_combout\,
	combout => \inst0|cache[0].data[0]~feeder_combout\);

-- Location: FF_X6_Y10_N27
\inst0|cache[0].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[0].data[0]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[0].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[0].data\(0));

-- Location: LCCOMB_X6_Y10_N16
\inst0|cache[1].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[1].data[0]~feeder_combout\ = \inst0|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector237~0_combout\,
	combout => \inst0|cache[1].data[0]~feeder_combout\);

-- Location: FF_X6_Y10_N17
\inst0|cache[1].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[1].data[0]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[1].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[1].data\(0));

-- Location: LCCOMB_X6_Y8_N16
\inst0|Selector384~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector384~0_combout\ = (\inst0|evictCounter\(1) & (((\inst0|evictCounter\(0))))) # (!\inst0|evictCounter\(1) & ((\inst0|evictCounter\(0) & ((\inst0|cache[1].data\(0)))) # (!\inst0|evictCounter\(0) & (\inst0|cache[0].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|evictCounter\(1),
	datab => \inst0|cache[0].data\(0),
	datac => \inst0|evictCounter\(0),
	datad => \inst0|cache[1].data\(0),
	combout => \inst0|Selector384~0_combout\);

-- Location: LCCOMB_X5_Y8_N20
\inst0|cache[2].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[2].data[0]~feeder_combout\ = \inst0|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector237~0_combout\,
	combout => \inst0|cache[2].data[0]~feeder_combout\);

-- Location: FF_X5_Y8_N21
\inst0|cache[2].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[2].data[0]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[2].data\(0));

-- Location: LCCOMB_X6_Y8_N26
\inst0|Selector384~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector384~1_combout\ = (\inst0|Selector384~0_combout\ & ((\inst0|cache[3].data\(0)) # ((!\inst0|evictCounter\(1))))) # (!\inst0|Selector384~0_combout\ & (((\inst0|evictCounter\(1) & \inst0|cache[2].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].data\(0),
	datab => \inst0|Selector384~0_combout\,
	datac => \inst0|evictCounter\(1),
	datad => \inst0|cache[2].data\(0),
	combout => \inst0|Selector384~1_combout\);

-- Location: FF_X6_Y8_N27
\inst0|Sdram_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Selector384~1_combout\,
	ena => \inst0|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|Sdram_data_out\(0));

-- Location: LCCOMB_X7_Y9_N12
\inst1|cache[1].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[1].data[0]~feeder_combout\ = \inst1|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector237~0_combout\,
	combout => \inst1|cache[1].data[0]~feeder_combout\);

-- Location: FF_X7_Y9_N13
\inst1|cache[1].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[1].data[0]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[1].data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[1].data\(0));

-- Location: LCCOMB_X1_Y9_N18
\inst1|Selector384~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector384~0_combout\ = (\inst1|evictCounter\(1) & (((\inst1|evictCounter\(0))))) # (!\inst1|evictCounter\(1) & ((\inst1|evictCounter\(0) & (\inst1|cache[1].data\(0))) # (!\inst1|evictCounter\(0) & ((\inst1|cache[0].data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|cache[1].data\(0),
	datac => \inst1|evictCounter\(0),
	datad => \inst1|cache[0].data\(0),
	combout => \inst1|Selector384~0_combout\);

-- Location: LCCOMB_X2_Y9_N12
\inst1|cache[2].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[2].data[0]~feeder_combout\ = \inst1|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector237~0_combout\,
	combout => \inst1|cache[2].data[0]~feeder_combout\);

-- Location: FF_X2_Y9_N13
\inst1|cache[2].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[2].data[0]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[2].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[2].data\(0));

-- Location: LCCOMB_X2_Y9_N22
\inst1|cache[3].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[3].data[0]~feeder_combout\ = \inst1|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector237~0_combout\,
	combout => \inst1|cache[3].data[0]~feeder_combout\);

-- Location: FF_X2_Y9_N23
\inst1|cache[3].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[3].data[0]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[3].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[3].data\(0));

-- Location: LCCOMB_X1_Y9_N6
\inst1|Selector384~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector384~1_combout\ = (\inst1|evictCounter\(1) & ((\inst1|Selector384~0_combout\ & ((\inst1|cache[3].data\(0)))) # (!\inst1|Selector384~0_combout\ & (\inst1|cache[2].data\(0))))) # (!\inst1|evictCounter\(1) & (\inst1|Selector384~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|evictCounter\(1),
	datab => \inst1|Selector384~0_combout\,
	datac => \inst1|cache[2].data\(0),
	datad => \inst1|cache[3].data\(0),
	combout => \inst1|Selector384~1_combout\);

-- Location: FF_X1_Y9_N7
\inst1|Sdram_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector384~1_combout\,
	ena => \inst1|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Sdram_data_out\(0));

-- Location: LCCOMB_X2_Y8_N12
\inst3|memory~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~37_combout\ = (\inst3|Decoder1~3_combout\ & (!\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~3_combout\ & ((!\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(0),
	datac => \inst1|Sdram_data_out\(0),
	datad => \inst3|Decoder1~3_combout\,
	combout => \inst3|memory~37_combout\);

-- Location: FF_X2_Y8_N13
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
	ena => \inst3|memory[7][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[7][0]~q\);

-- Location: LCCOMB_X3_Y7_N26
\inst3|memory~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~34_combout\ = (\inst3|Decoder1~0_combout\ & ((!\inst0|Sdram_data_out\(0)))) # (!\inst3|Decoder1~0_combout\ & (!\inst1|Sdram_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(0),
	datac => \inst0|Sdram_data_out\(0),
	datad => \inst3|Decoder1~0_combout\,
	combout => \inst3|memory~34_combout\);

-- Location: FF_X3_Y7_N27
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

-- Location: LCCOMB_X1_Y7_N26
\inst3|memory~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~36_combout\ = (\inst3|Decoder1~2_combout\ & ((\inst0|Sdram_data_out\(0)))) # (!\inst3|Decoder1~2_combout\ & (\inst1|Sdram_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(0),
	datac => \inst0|Sdram_data_out\(0),
	datad => \inst3|Decoder1~2_combout\,
	combout => \inst3|memory~36_combout\);

-- Location: FF_X1_Y7_N27
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

-- Location: LCCOMB_X2_Y8_N30
\inst3|memory~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~35_combout\ = (\inst3|Decoder1~1_combout\ & (\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~1_combout\ & ((\inst1|Sdram_data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_data_out\(0),
	datac => \inst1|Sdram_data_out\(0),
	datad => \inst3|Decoder1~1_combout\,
	combout => \inst3|memory~35_combout\);

-- Location: FF_X2_Y8_N31
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

-- Location: LCCOMB_X4_Y7_N12
\inst3|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~0_combout\ = (\inst1|Sdram_addr\(0) & (((\inst1|Sdram_addr\(1))))) # (!\inst1|Sdram_addr\(0) & ((\inst1|Sdram_addr\(1) & ((\inst3|memory[6][0]~q\))) # (!\inst1|Sdram_addr\(1) & (\inst3|memory[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[4][0]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|memory[6][0]~q\,
	datad => \inst1|Sdram_addr\(1),
	combout => \inst3|Mux31~0_combout\);

-- Location: LCCOMB_X4_Y7_N30
\inst3|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~1_combout\ = (\inst1|Sdram_addr\(0) & ((\inst3|Mux31~0_combout\ & (!\inst3|memory[7][0]~q\)) # (!\inst3|Mux31~0_combout\ & ((!\inst3|memory[5][0]~q\))))) # (!\inst1|Sdram_addr\(0) & (((\inst3|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[7][0]~q\,
	datab => \inst1|Sdram_addr\(0),
	datac => \inst3|memory[5][0]~q\,
	datad => \inst3|Mux31~0_combout\,
	combout => \inst3|Mux31~1_combout\);

-- Location: LCCOMB_X4_Y7_N16
\inst3|memory~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~38_combout\ = (\inst3|Decoder1~4_combout\ & ((\inst0|Sdram_data_out\(0)))) # (!\inst3|Decoder1~4_combout\ & (\inst1|Sdram_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Sdram_data_out\(0),
	datac => \inst3|Decoder1~4_combout\,
	datad => \inst0|Sdram_data_out\(0),
	combout => \inst3|memory~38_combout\);

-- Location: FF_X4_Y7_N17
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
	ena => \inst3|memory[2][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[2][0]~q\);

-- Location: LCCOMB_X5_Y7_N28
\inst3|memory~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~42_combout\ = (\inst3|Decoder1~7_combout\ & ((!\inst0|Sdram_data_out\(0)))) # (!\inst3|Decoder1~7_combout\ & (!\inst1|Sdram_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(0),
	datab => \inst0|Sdram_data_out\(0),
	datad => \inst3|Decoder1~7_combout\,
	combout => \inst3|memory~42_combout\);

-- Location: FF_X5_Y7_N29
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

-- Location: LCCOMB_X5_Y7_N12
\inst3|memory~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~39_combout\ = (\inst3|Decoder0~4_combout\ & ((!\inst3|memory[1][0]~q\))) # (!\inst3|Decoder0~4_combout\ & (\inst1|Sdram_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(0),
	datab => \inst3|Decoder0~4_combout\,
	datad => \inst3|memory[1][0]~q\,
	combout => \inst3|memory~39_combout\);

-- Location: LCCOMB_X6_Y7_N22
\inst3|memory~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~40_combout\ = (\inst3|Decoder1~5_combout\ & (!\inst0|Sdram_data_out\(0))) # (!\inst3|Decoder1~5_combout\ & ((!\inst3|memory~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Decoder1~5_combout\,
	datac => \inst0|Sdram_data_out\(0),
	datad => \inst3|memory~39_combout\,
	combout => \inst3|memory~40_combout\);

-- Location: FF_X6_Y7_N23
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

-- Location: LCCOMB_X5_Y7_N6
\inst3|memory~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|memory~41_combout\ = (\inst3|Decoder1~6_combout\ & ((\inst0|Sdram_data_out\(0)))) # (!\inst3|Decoder1~6_combout\ & (\inst1|Sdram_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_data_out\(0),
	datab => \inst0|Sdram_data_out\(0),
	datac => \inst3|Decoder1~6_combout\,
	combout => \inst3|memory~41_combout\);

-- Location: FF_X5_Y7_N7
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
	ena => \inst3|memory[0][2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][0]~q\);

-- Location: LCCOMB_X6_Y7_N24
\inst3|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~2_combout\ = (\inst1|Sdram_addr\(1) & (((\inst1|Sdram_addr\(0))))) # (!\inst1|Sdram_addr\(1) & ((\inst1|Sdram_addr\(0) & (!\inst3|memory[1][0]~q\)) # (!\inst1|Sdram_addr\(0) & ((\inst3|memory[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[1][0]~q\,
	datab => \inst1|Sdram_addr\(1),
	datac => \inst3|memory[0][0]~q\,
	datad => \inst1|Sdram_addr\(0),
	combout => \inst3|Mux31~2_combout\);

-- Location: LCCOMB_X5_Y7_N22
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

-- Location: LCCOMB_X2_Y7_N12
\inst3|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux31~4_combout\ = (\inst1|Sdram_addr\(2) & (\inst3|Mux31~1_combout\)) # (!\inst1|Sdram_addr\(2) & ((\inst3|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Sdram_addr\(2),
	datac => \inst3|Mux31~1_combout\,
	datad => \inst3|Mux31~3_combout\,
	combout => \inst3|Mux31~4_combout\);

-- Location: FF_X2_Y7_N13
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

-- Location: LCCOMB_X2_Y9_N16
\inst1|Selector237~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector237~0_combout\ = (\inst1|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out2\(0)))) # (!\inst1|sdramState.readResponseSDRAM~q\ & (\inst0|cache_to_cache_resp_out_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache_to_cache_resp_out_data\(0),
	datac => \inst1|sdramState.readResponseSDRAM~q\,
	datad => \inst3|data_out2\(0),
	combout => \inst1|Selector237~0_combout\);

-- Location: LCCOMB_X7_Y9_N22
\inst1|cache[0].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cache[0].data[0]~feeder_combout\ = \inst1|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Selector237~0_combout\,
	combout => \inst1|cache[0].data[0]~feeder_combout\);

-- Location: FF_X7_Y9_N23
\inst1|cache[0].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|cache[0].data[0]~feeder_combout\,
	asdata => \inst1|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst1|cpuCacheOperation.write_cache~q\,
	ena => \inst1|cache[0].data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache[0].data\(0));

-- Location: LCCOMB_X1_Y9_N12
\inst1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~0_combout\ = (\inst1|indexOfCache~7_combout\ & (((\inst1|indexOfCache~9_combout\)))) # (!\inst1|indexOfCache~7_combout\ & ((\inst1|indexOfCache~9_combout\ & ((\inst1|cache[1].data\(0)))) # (!\inst1|indexOfCache~9_combout\ & 
-- (\inst1|cache[0].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cache[0].data\(0),
	datab => \inst1|cache[1].data\(0),
	datac => \inst1|indexOfCache~7_combout\,
	datad => \inst1|indexOfCache~9_combout\,
	combout => \inst1|Mux32~0_combout\);

-- Location: LCCOMB_X1_Y9_N10
\inst1|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux32~1_combout\ = (\inst1|Mux32~0_combout\ & (((\inst1|cache[3].data\(0)) # (!\inst1|indexOfCache~7_combout\)))) # (!\inst1|Mux32~0_combout\ & (\inst1|cache[2].data\(0) & (\inst1|indexOfCache~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux32~0_combout\,
	datab => \inst1|cache[2].data\(0),
	datac => \inst1|indexOfCache~7_combout\,
	datad => \inst1|cache[3].data\(0),
	combout => \inst1|Mux32~1_combout\);

-- Location: FF_X1_Y9_N11
\inst1|cache_to_cache_resp_out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Mux32~1_combout\,
	ena => \inst1|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cache_to_cache_resp_out_data\(0));

-- Location: LCCOMB_X6_Y7_N2
\inst3|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~2_combout\ = (\inst0|Sdram_addr\(0) & (((\inst0|Sdram_addr\(1))) # (!\inst3|memory[1][0]~q\))) # (!\inst0|Sdram_addr\(0) & (((\inst3|memory[0][0]~q\ & !\inst0|Sdram_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[1][0]~q\,
	datab => \inst0|Sdram_addr\(0),
	datac => \inst3|memory[0][0]~q\,
	datad => \inst0|Sdram_addr\(1),
	combout => \inst3|Mux63~2_combout\);

-- Location: LCCOMB_X5_Y7_N26
\inst3|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~3_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|Mux63~2_combout\ & (!\inst3|memory[3][0]~q\)) # (!\inst3|Mux63~2_combout\ & ((\inst3|memory[2][0]~q\))))) # (!\inst0|Sdram_addr\(1) & (((\inst3|Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst3|memory[3][0]~q\,
	datac => \inst3|memory[2][0]~q\,
	datad => \inst3|Mux63~2_combout\,
	combout => \inst3|Mux63~3_combout\);

-- Location: LCCOMB_X4_Y7_N4
\inst3|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~0_combout\ = (\inst0|Sdram_addr\(1) & ((\inst3|memory[6][0]~q\) # ((\inst0|Sdram_addr\(0))))) # (!\inst0|Sdram_addr\(1) & (((\inst3|memory[4][0]~q\ & !\inst0|Sdram_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|Sdram_addr\(1),
	datab => \inst3|memory[6][0]~q\,
	datac => \inst3|memory[4][0]~q\,
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux63~0_combout\);

-- Location: LCCOMB_X4_Y7_N22
\inst3|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~1_combout\ = (\inst3|Mux63~0_combout\ & (((!\inst0|Sdram_addr\(0)) # (!\inst3|memory[7][0]~q\)))) # (!\inst3|Mux63~0_combout\ & (!\inst3|memory[5][0]~q\ & ((\inst0|Sdram_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|memory[5][0]~q\,
	datab => \inst3|memory[7][0]~q\,
	datac => \inst3|Mux63~0_combout\,
	datad => \inst0|Sdram_addr\(0),
	combout => \inst3|Mux63~1_combout\);

-- Location: LCCOMB_X3_Y7_N22
\inst3|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux63~4_combout\ = (\inst0|Sdram_addr\(2) & ((\inst3|Mux63~1_combout\))) # (!\inst0|Sdram_addr\(2) & (\inst3|Mux63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|Sdram_addr\(2),
	datac => \inst3|Mux63~3_combout\,
	datad => \inst3|Mux63~1_combout\,
	combout => \inst3|Mux63~4_combout\);

-- Location: FF_X3_Y7_N23
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

-- Location: LCCOMB_X5_Y8_N12
\inst0|Selector237~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Selector237~0_combout\ = (\inst0|sdramState.readResponseSDRAM~q\ & ((\inst3|data_out1\(0)))) # (!\inst0|sdramState.readResponseSDRAM~q\ & (\inst1|cache_to_cache_resp_out_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|sdramState.readResponseSDRAM~q\,
	datac => \inst1|cache_to_cache_resp_out_data\(0),
	datad => \inst3|data_out1\(0),
	combout => \inst0|Selector237~0_combout\);

-- Location: LCCOMB_X5_Y8_N10
\inst0|cache[3].data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|cache[3].data[0]~feeder_combout\ = \inst0|Selector237~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst0|Selector237~0_combout\,
	combout => \inst0|cache[3].data[0]~feeder_combout\);

-- Location: FF_X5_Y8_N11
\inst0|cache[3].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|cache[3].data[0]~feeder_combout\,
	asdata => \inst0|dataToSendToCache\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \inst0|cpuCacheOperation.write_cache~q\,
	ena => \inst0|cache[3].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache[3].data\(0));

-- Location: LCCOMB_X6_Y8_N24
\inst0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux32~0_combout\ = (\inst0|indexOfCache~3_combout\ & (((\inst0|indexOfCache~5_combout\)))) # (!\inst0|indexOfCache~3_combout\ & ((\inst0|indexOfCache~5_combout\ & ((\inst0|cache[1].data\(0)))) # (!\inst0|indexOfCache~5_combout\ & 
-- (\inst0|cache[0].data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|indexOfCache~3_combout\,
	datab => \inst0|cache[0].data\(0),
	datac => \inst0|indexOfCache~5_combout\,
	datad => \inst0|cache[1].data\(0),
	combout => \inst0|Mux32~0_combout\);

-- Location: LCCOMB_X6_Y8_N6
\inst0|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|Mux32~1_combout\ = (\inst0|indexOfCache~3_combout\ & ((\inst0|Mux32~0_combout\ & (\inst0|cache[3].data\(0))) # (!\inst0|Mux32~0_combout\ & ((\inst0|cache[2].data\(0)))))) # (!\inst0|indexOfCache~3_combout\ & (((\inst0|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|cache[3].data\(0),
	datab => \inst0|cache[2].data\(0),
	datac => \inst0|indexOfCache~3_combout\,
	datad => \inst0|Mux32~0_combout\,
	combout => \inst0|Mux32~1_combout\);

-- Location: FF_X6_Y8_N7
\inst0|cache_to_cache_resp_out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|Mux32~1_combout\,
	ena => \inst0|cache_to_cache_resp_out_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|cache_to_cache_resp_out_data\(0));

-- Location: LCCOMB_X7_Y7_N24
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\inst0|read_en~q\) # (\inst0|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|read_en~q\,
	datad => \inst0|write_en~q\,
	combout => \inst~combout\);

-- Location: LCCOMB_X1_Y4_N16
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\inst1|read_en~q\) # (\inst1|write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|read_en~q\,
	datac => \inst1|write_en~q\,
	combout => \inst6~combout\);

-- Location: FF_X1_Y10_N13
\inst1|cpu_rd_req_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|CurrentState.writeData~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpu_rd_req_out~q\);

ww_r_en1 <= \r_en1~output_o\;

ww_cpu1_wr_req_out <= \cpu1_wr_req_out~output_o\;

ww_cpu0_wr_req_out <= \cpu0_wr_req_out~output_o\;

ww_cpu0_rd_req_out <= \cpu0_rd_req_out~output_o\;

ww_cpu0_cache_to_cache_response_out_rdy <= \cpu0_cache_to_cache_response_out_rdy~output_o\;

ww_cpu0_cache_to_cache_response <= \cpu0_cache_to_cache_response~output_o\;

ww_cpu0_cache_to_cache_req <= \cpu0_cache_to_cache_req~output_o\;

ww_cpu0_cache_to_cache_req_addr(2) <= \cpu0_cache_to_cache_req_addr[2]~output_o\;

ww_cpu0_cache_to_cache_req_addr(1) <= \cpu0_cache_to_cache_req_addr[1]~output_o\;

ww_cpu0_cache_to_cache_req_addr(0) <= \cpu0_cache_to_cache_req_addr[0]~output_o\;

ww_cpu0_cache_to_cache_resp_data(31) <= \cpu0_cache_to_cache_resp_data[31]~output_o\;

ww_cpu0_cache_to_cache_resp_data(30) <= \cpu0_cache_to_cache_resp_data[30]~output_o\;

ww_cpu0_cache_to_cache_resp_data(29) <= \cpu0_cache_to_cache_resp_data[29]~output_o\;

ww_cpu0_cache_to_cache_resp_data(28) <= \cpu0_cache_to_cache_resp_data[28]~output_o\;

ww_cpu0_cache_to_cache_resp_data(27) <= \cpu0_cache_to_cache_resp_data[27]~output_o\;

ww_cpu0_cache_to_cache_resp_data(26) <= \cpu0_cache_to_cache_resp_data[26]~output_o\;

ww_cpu0_cache_to_cache_resp_data(25) <= \cpu0_cache_to_cache_resp_data[25]~output_o\;

ww_cpu0_cache_to_cache_resp_data(24) <= \cpu0_cache_to_cache_resp_data[24]~output_o\;

ww_cpu0_cache_to_cache_resp_data(23) <= \cpu0_cache_to_cache_resp_data[23]~output_o\;

ww_cpu0_cache_to_cache_resp_data(22) <= \cpu0_cache_to_cache_resp_data[22]~output_o\;

ww_cpu0_cache_to_cache_resp_data(21) <= \cpu0_cache_to_cache_resp_data[21]~output_o\;

ww_cpu0_cache_to_cache_resp_data(20) <= \cpu0_cache_to_cache_resp_data[20]~output_o\;

ww_cpu0_cache_to_cache_resp_data(19) <= \cpu0_cache_to_cache_resp_data[19]~output_o\;

ww_cpu0_cache_to_cache_resp_data(18) <= \cpu0_cache_to_cache_resp_data[18]~output_o\;

ww_cpu0_cache_to_cache_resp_data(17) <= \cpu0_cache_to_cache_resp_data[17]~output_o\;

ww_cpu0_cache_to_cache_resp_data(16) <= \cpu0_cache_to_cache_resp_data[16]~output_o\;

ww_cpu0_cache_to_cache_resp_data(15) <= \cpu0_cache_to_cache_resp_data[15]~output_o\;

ww_cpu0_cache_to_cache_resp_data(14) <= \cpu0_cache_to_cache_resp_data[14]~output_o\;

ww_cpu0_cache_to_cache_resp_data(13) <= \cpu0_cache_to_cache_resp_data[13]~output_o\;

ww_cpu0_cache_to_cache_resp_data(12) <= \cpu0_cache_to_cache_resp_data[12]~output_o\;

ww_cpu0_cache_to_cache_resp_data(11) <= \cpu0_cache_to_cache_resp_data[11]~output_o\;

ww_cpu0_cache_to_cache_resp_data(10) <= \cpu0_cache_to_cache_resp_data[10]~output_o\;

ww_cpu0_cache_to_cache_resp_data(9) <= \cpu0_cache_to_cache_resp_data[9]~output_o\;

ww_cpu0_cache_to_cache_resp_data(8) <= \cpu0_cache_to_cache_resp_data[8]~output_o\;

ww_cpu0_cache_to_cache_resp_data(7) <= \cpu0_cache_to_cache_resp_data[7]~output_o\;

ww_cpu0_cache_to_cache_resp_data(6) <= \cpu0_cache_to_cache_resp_data[6]~output_o\;

ww_cpu0_cache_to_cache_resp_data(5) <= \cpu0_cache_to_cache_resp_data[5]~output_o\;

ww_cpu0_cache_to_cache_resp_data(4) <= \cpu0_cache_to_cache_resp_data[4]~output_o\;

ww_cpu0_cache_to_cache_resp_data(3) <= \cpu0_cache_to_cache_resp_data[3]~output_o\;

ww_cpu0_cache_to_cache_resp_data(2) <= \cpu0_cache_to_cache_resp_data[2]~output_o\;

ww_cpu0_cache_to_cache_resp_data(1) <= \cpu0_cache_to_cache_resp_data[1]~output_o\;

ww_cpu0_cache_to_cache_resp_data(0) <= \cpu0_cache_to_cache_resp_data[0]~output_o\;

ww_cpu0_req_addr_out(2) <= \cpu0_req_addr_out[2]~output_o\;

ww_cpu0_req_addr_out(1) <= \cpu0_req_addr_out[1]~output_o\;

ww_cpu0_req_addr_out(0) <= \cpu0_req_addr_out[0]~output_o\;

ww_sdramDataOut2(31) <= \sdramDataOut2[31]~output_o\;

ww_sdramDataOut2(30) <= \sdramDataOut2[30]~output_o\;

ww_sdramDataOut2(29) <= \sdramDataOut2[29]~output_o\;

ww_sdramDataOut2(28) <= \sdramDataOut2[28]~output_o\;

ww_sdramDataOut2(27) <= \sdramDataOut2[27]~output_o\;

ww_sdramDataOut2(26) <= \sdramDataOut2[26]~output_o\;

ww_sdramDataOut2(25) <= \sdramDataOut2[25]~output_o\;

ww_sdramDataOut2(24) <= \sdramDataOut2[24]~output_o\;

ww_sdramDataOut2(23) <= \sdramDataOut2[23]~output_o\;

ww_sdramDataOut2(22) <= \sdramDataOut2[22]~output_o\;

ww_sdramDataOut2(21) <= \sdramDataOut2[21]~output_o\;

ww_sdramDataOut2(20) <= \sdramDataOut2[20]~output_o\;

ww_sdramDataOut2(19) <= \sdramDataOut2[19]~output_o\;

ww_sdramDataOut2(18) <= \sdramDataOut2[18]~output_o\;

ww_sdramDataOut2(17) <= \sdramDataOut2[17]~output_o\;

ww_sdramDataOut2(16) <= \sdramDataOut2[16]~output_o\;

ww_sdramDataOut2(15) <= \sdramDataOut2[15]~output_o\;

ww_sdramDataOut2(14) <= \sdramDataOut2[14]~output_o\;

ww_sdramDataOut2(13) <= \sdramDataOut2[13]~output_o\;

ww_sdramDataOut2(12) <= \sdramDataOut2[12]~output_o\;

ww_sdramDataOut2(11) <= \sdramDataOut2[11]~output_o\;

ww_sdramDataOut2(10) <= \sdramDataOut2[10]~output_o\;

ww_sdramDataOut2(9) <= \sdramDataOut2[9]~output_o\;

ww_sdramDataOut2(8) <= \sdramDataOut2[8]~output_o\;

ww_sdramDataOut2(7) <= \sdramDataOut2[7]~output_o\;

ww_sdramDataOut2(6) <= \sdramDataOut2[6]~output_o\;

ww_sdramDataOut2(5) <= \sdramDataOut2[5]~output_o\;

ww_sdramDataOut2(4) <= \sdramDataOut2[4]~output_o\;

ww_sdramDataOut2(3) <= \sdramDataOut2[3]~output_o\;

ww_sdramDataOut2(2) <= \sdramDataOut2[2]~output_o\;

ww_sdramDataOut2(1) <= \sdramDataOut2[1]~output_o\;

ww_sdramDataOut2(0) <= \sdramDataOut2[0]~output_o\;

ww_wr_en1 <= \wr_en1~output_o\;

ww_wr_en2 <= \wr_en2~output_o\;

ww_ready1 <= \ready1~output_o\;

ww_ready2 <= \ready2~output_o\;

ww_r_en2 <= \r_en2~output_o\;

ww_sdram_addr1(2) <= \sdram_addr1[2]~output_o\;

ww_sdram_addr1(1) <= \sdram_addr1[1]~output_o\;

ww_sdram_addr1(0) <= \sdram_addr1[0]~output_o\;

ww_sdram_addr2(2) <= \sdram_addr2[2]~output_o\;

ww_sdram_addr2(1) <= \sdram_addr2[1]~output_o\;

ww_sdram_addr2(0) <= \sdram_addr2[0]~output_o\;

ww_sdram_data_out1(31) <= \sdram_data_out1[31]~output_o\;

ww_sdram_data_out1(30) <= \sdram_data_out1[30]~output_o\;

ww_sdram_data_out1(29) <= \sdram_data_out1[29]~output_o\;

ww_sdram_data_out1(28) <= \sdram_data_out1[28]~output_o\;

ww_sdram_data_out1(27) <= \sdram_data_out1[27]~output_o\;

ww_sdram_data_out1(26) <= \sdram_data_out1[26]~output_o\;

ww_sdram_data_out1(25) <= \sdram_data_out1[25]~output_o\;

ww_sdram_data_out1(24) <= \sdram_data_out1[24]~output_o\;

ww_sdram_data_out1(23) <= \sdram_data_out1[23]~output_o\;

ww_sdram_data_out1(22) <= \sdram_data_out1[22]~output_o\;

ww_sdram_data_out1(21) <= \sdram_data_out1[21]~output_o\;

ww_sdram_data_out1(20) <= \sdram_data_out1[20]~output_o\;

ww_sdram_data_out1(19) <= \sdram_data_out1[19]~output_o\;

ww_sdram_data_out1(18) <= \sdram_data_out1[18]~output_o\;

ww_sdram_data_out1(17) <= \sdram_data_out1[17]~output_o\;

ww_sdram_data_out1(16) <= \sdram_data_out1[16]~output_o\;

ww_sdram_data_out1(15) <= \sdram_data_out1[15]~output_o\;

ww_sdram_data_out1(14) <= \sdram_data_out1[14]~output_o\;

ww_sdram_data_out1(13) <= \sdram_data_out1[13]~output_o\;

ww_sdram_data_out1(12) <= \sdram_data_out1[12]~output_o\;

ww_sdram_data_out1(11) <= \sdram_data_out1[11]~output_o\;

ww_sdram_data_out1(10) <= \sdram_data_out1[10]~output_o\;

ww_sdram_data_out1(9) <= \sdram_data_out1[9]~output_o\;

ww_sdram_data_out1(8) <= \sdram_data_out1[8]~output_o\;

ww_sdram_data_out1(7) <= \sdram_data_out1[7]~output_o\;

ww_sdram_data_out1(6) <= \sdram_data_out1[6]~output_o\;

ww_sdram_data_out1(5) <= \sdram_data_out1[5]~output_o\;

ww_sdram_data_out1(4) <= \sdram_data_out1[4]~output_o\;

ww_sdram_data_out1(3) <= \sdram_data_out1[3]~output_o\;

ww_sdram_data_out1(2) <= \sdram_data_out1[2]~output_o\;

ww_sdram_data_out1(1) <= \sdram_data_out1[1]~output_o\;

ww_sdram_data_out1(0) <= \sdram_data_out1[0]~output_o\;

ww_sdram_data_out2(31) <= \sdram_data_out2[31]~output_o\;

ww_sdram_data_out2(30) <= \sdram_data_out2[30]~output_o\;

ww_sdram_data_out2(29) <= \sdram_data_out2[29]~output_o\;

ww_sdram_data_out2(28) <= \sdram_data_out2[28]~output_o\;

ww_sdram_data_out2(27) <= \sdram_data_out2[27]~output_o\;

ww_sdram_data_out2(26) <= \sdram_data_out2[26]~output_o\;

ww_sdram_data_out2(25) <= \sdram_data_out2[25]~output_o\;

ww_sdram_data_out2(24) <= \sdram_data_out2[24]~output_o\;

ww_sdram_data_out2(23) <= \sdram_data_out2[23]~output_o\;

ww_sdram_data_out2(22) <= \sdram_data_out2[22]~output_o\;

ww_sdram_data_out2(21) <= \sdram_data_out2[21]~output_o\;

ww_sdram_data_out2(20) <= \sdram_data_out2[20]~output_o\;

ww_sdram_data_out2(19) <= \sdram_data_out2[19]~output_o\;

ww_sdram_data_out2(18) <= \sdram_data_out2[18]~output_o\;

ww_sdram_data_out2(17) <= \sdram_data_out2[17]~output_o\;

ww_sdram_data_out2(16) <= \sdram_data_out2[16]~output_o\;

ww_sdram_data_out2(15) <= \sdram_data_out2[15]~output_o\;

ww_sdram_data_out2(14) <= \sdram_data_out2[14]~output_o\;

ww_sdram_data_out2(13) <= \sdram_data_out2[13]~output_o\;

ww_sdram_data_out2(12) <= \sdram_data_out2[12]~output_o\;

ww_sdram_data_out2(11) <= \sdram_data_out2[11]~output_o\;

ww_sdram_data_out2(10) <= \sdram_data_out2[10]~output_o\;

ww_sdram_data_out2(9) <= \sdram_data_out2[9]~output_o\;

ww_sdram_data_out2(8) <= \sdram_data_out2[8]~output_o\;

ww_sdram_data_out2(7) <= \sdram_data_out2[7]~output_o\;

ww_sdram_data_out2(6) <= \sdram_data_out2[6]~output_o\;

ww_sdram_data_out2(5) <= \sdram_data_out2[5]~output_o\;

ww_sdram_data_out2(4) <= \sdram_data_out2[4]~output_o\;

ww_sdram_data_out2(3) <= \sdram_data_out2[3]~output_o\;

ww_sdram_data_out2(2) <= \sdram_data_out2[2]~output_o\;

ww_sdram_data_out2(1) <= \sdram_data_out2[1]~output_o\;

ww_sdram_data_out2(0) <= \sdram_data_out2[0]~output_o\;

ww_cpu1_rd_req_out <= \cpu1_rd_req_out~output_o\;

ww_cpu1_cache_to_cache_response_out_ready <= \cpu1_cache_to_cache_response_out_ready~output_o\;

ww_cpu1_cache_to_cache_response <= \cpu1_cache_to_cache_response~output_o\;

ww_cpu1_cache_to_cache_req <= \cpu1_cache_to_cache_req~output_o\;

ww_cpu1_cache_to_cache_req_addr(2) <= \cpu1_cache_to_cache_req_addr[2]~output_o\;

ww_cpu1_cache_to_cache_req_addr(1) <= \cpu1_cache_to_cache_req_addr[1]~output_o\;

ww_cpu1_cache_to_cache_req_addr(0) <= \cpu1_cache_to_cache_req_addr[0]~output_o\;

ww_cpu1_cache_to_cache_resp_data(31) <= \cpu1_cache_to_cache_resp_data[31]~output_o\;

ww_cpu1_cache_to_cache_resp_data(30) <= \cpu1_cache_to_cache_resp_data[30]~output_o\;

ww_cpu1_cache_to_cache_resp_data(29) <= \cpu1_cache_to_cache_resp_data[29]~output_o\;

ww_cpu1_cache_to_cache_resp_data(28) <= \cpu1_cache_to_cache_resp_data[28]~output_o\;

ww_cpu1_cache_to_cache_resp_data(27) <= \cpu1_cache_to_cache_resp_data[27]~output_o\;

ww_cpu1_cache_to_cache_resp_data(26) <= \cpu1_cache_to_cache_resp_data[26]~output_o\;

ww_cpu1_cache_to_cache_resp_data(25) <= \cpu1_cache_to_cache_resp_data[25]~output_o\;

ww_cpu1_cache_to_cache_resp_data(24) <= \cpu1_cache_to_cache_resp_data[24]~output_o\;

ww_cpu1_cache_to_cache_resp_data(23) <= \cpu1_cache_to_cache_resp_data[23]~output_o\;

ww_cpu1_cache_to_cache_resp_data(22) <= \cpu1_cache_to_cache_resp_data[22]~output_o\;

ww_cpu1_cache_to_cache_resp_data(21) <= \cpu1_cache_to_cache_resp_data[21]~output_o\;

ww_cpu1_cache_to_cache_resp_data(20) <= \cpu1_cache_to_cache_resp_data[20]~output_o\;

ww_cpu1_cache_to_cache_resp_data(19) <= \cpu1_cache_to_cache_resp_data[19]~output_o\;

ww_cpu1_cache_to_cache_resp_data(18) <= \cpu1_cache_to_cache_resp_data[18]~output_o\;

ww_cpu1_cache_to_cache_resp_data(17) <= \cpu1_cache_to_cache_resp_data[17]~output_o\;

ww_cpu1_cache_to_cache_resp_data(16) <= \cpu1_cache_to_cache_resp_data[16]~output_o\;

ww_cpu1_cache_to_cache_resp_data(15) <= \cpu1_cache_to_cache_resp_data[15]~output_o\;

ww_cpu1_cache_to_cache_resp_data(14) <= \cpu1_cache_to_cache_resp_data[14]~output_o\;

ww_cpu1_cache_to_cache_resp_data(13) <= \cpu1_cache_to_cache_resp_data[13]~output_o\;

ww_cpu1_cache_to_cache_resp_data(12) <= \cpu1_cache_to_cache_resp_data[12]~output_o\;

ww_cpu1_cache_to_cache_resp_data(11) <= \cpu1_cache_to_cache_resp_data[11]~output_o\;

ww_cpu1_cache_to_cache_resp_data(10) <= \cpu1_cache_to_cache_resp_data[10]~output_o\;

ww_cpu1_cache_to_cache_resp_data(9) <= \cpu1_cache_to_cache_resp_data[9]~output_o\;

ww_cpu1_cache_to_cache_resp_data(8) <= \cpu1_cache_to_cache_resp_data[8]~output_o\;

ww_cpu1_cache_to_cache_resp_data(7) <= \cpu1_cache_to_cache_resp_data[7]~output_o\;

ww_cpu1_cache_to_cache_resp_data(6) <= \cpu1_cache_to_cache_resp_data[6]~output_o\;

ww_cpu1_cache_to_cache_resp_data(5) <= \cpu1_cache_to_cache_resp_data[5]~output_o\;

ww_cpu1_cache_to_cache_resp_data(4) <= \cpu1_cache_to_cache_resp_data[4]~output_o\;

ww_cpu1_cache_to_cache_resp_data(3) <= \cpu1_cache_to_cache_resp_data[3]~output_o\;

ww_cpu1_cache_to_cache_resp_data(2) <= \cpu1_cache_to_cache_resp_data[2]~output_o\;

ww_cpu1_cache_to_cache_resp_data(1) <= \cpu1_cache_to_cache_resp_data[1]~output_o\;

ww_cpu1_cache_to_cache_resp_data(0) <= \cpu1_cache_to_cache_resp_data[0]~output_o\;

ww_cpu1_req_addr_out(2) <= \cpu1_req_addr_out[2]~output_o\;

ww_cpu1_req_addr_out(1) <= \cpu1_req_addr_out[1]~output_o\;

ww_cpu1_req_addr_out(0) <= \cpu1_req_addr_out[0]~output_o\;

ww_sdramDataOut1(31) <= \sdramDataOut1[31]~output_o\;

ww_sdramDataOut1(30) <= \sdramDataOut1[30]~output_o\;

ww_sdramDataOut1(29) <= \sdramDataOut1[29]~output_o\;

ww_sdramDataOut1(28) <= \sdramDataOut1[28]~output_o\;

ww_sdramDataOut1(27) <= \sdramDataOut1[27]~output_o\;

ww_sdramDataOut1(26) <= \sdramDataOut1[26]~output_o\;

ww_sdramDataOut1(25) <= \sdramDataOut1[25]~output_o\;

ww_sdramDataOut1(24) <= \sdramDataOut1[24]~output_o\;

ww_sdramDataOut1(23) <= \sdramDataOut1[23]~output_o\;

ww_sdramDataOut1(22) <= \sdramDataOut1[22]~output_o\;

ww_sdramDataOut1(21) <= \sdramDataOut1[21]~output_o\;

ww_sdramDataOut1(20) <= \sdramDataOut1[20]~output_o\;

ww_sdramDataOut1(19) <= \sdramDataOut1[19]~output_o\;

ww_sdramDataOut1(18) <= \sdramDataOut1[18]~output_o\;

ww_sdramDataOut1(17) <= \sdramDataOut1[17]~output_o\;

ww_sdramDataOut1(16) <= \sdramDataOut1[16]~output_o\;

ww_sdramDataOut1(15) <= \sdramDataOut1[15]~output_o\;

ww_sdramDataOut1(14) <= \sdramDataOut1[14]~output_o\;

ww_sdramDataOut1(13) <= \sdramDataOut1[13]~output_o\;

ww_sdramDataOut1(12) <= \sdramDataOut1[12]~output_o\;

ww_sdramDataOut1(11) <= \sdramDataOut1[11]~output_o\;

ww_sdramDataOut1(10) <= \sdramDataOut1[10]~output_o\;

ww_sdramDataOut1(9) <= \sdramDataOut1[9]~output_o\;

ww_sdramDataOut1(8) <= \sdramDataOut1[8]~output_o\;

ww_sdramDataOut1(7) <= \sdramDataOut1[7]~output_o\;

ww_sdramDataOut1(6) <= \sdramDataOut1[6]~output_o\;

ww_sdramDataOut1(5) <= \sdramDataOut1[5]~output_o\;

ww_sdramDataOut1(4) <= \sdramDataOut1[4]~output_o\;

ww_sdramDataOut1(3) <= \sdramDataOut1[3]~output_o\;

ww_sdramDataOut1(2) <= \sdramDataOut1[2]~output_o\;

ww_sdramDataOut1(1) <= \sdramDataOut1[1]~output_o\;

ww_sdramDataOut1(0) <= \sdramDataOut1[0]~output_o\;
END structure;


