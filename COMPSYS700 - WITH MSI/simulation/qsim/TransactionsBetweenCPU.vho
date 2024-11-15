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

-- DATE "09/17/2024 23:17:40"

-- 
-- Device: Altera 5CSEMA6U23C8 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TransactionsBetweenCPU IS
    PORT (
	readfromCPU : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	data_out_sdram : OUT std_logic_vector(31 DOWNTO 0);
	writefromCPU : OUT std_logic;
	sdram_addr_fromCPU : OUT std_logic_vector(2 DOWNTO 0);
	sdram_data_fromCPU : OUT std_logic_vector(31 DOWNTO 0);
	CurrentState : OUT std_logic_vector(1 DOWNTO 0)
	);
END TransactionsBetweenCPU;

-- Design Ports Information
-- readfromCPU	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[31]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[30]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[29]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[28]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[27]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[26]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[25]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[24]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[23]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[22]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[21]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[20]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[19]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[18]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[17]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[15]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[14]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[12]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[11]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[4]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[0]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writefromCPU	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr_fromCPU[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr_fromCPU[1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr_fromCPU[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[31]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[30]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[29]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[28]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[27]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[26]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[25]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[24]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[23]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[22]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[21]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[20]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[19]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[18]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[17]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[16]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[14]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[13]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[12]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[11]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[10]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[7]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[1]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CurrentState[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_readfromCPU : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_data_out_sdram : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_writefromCPU : std_logic;
SIGNAL ww_sdram_addr_fromCPU : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sdram_data_fromCPU : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CurrentState : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|hit~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|CurrentState.initial~feeder_combout\ : std_logic;
SIGNAL \inst|CurrentState.initial~q\ : std_logic;
SIGNAL \inst|CurrentState~12_combout\ : std_logic;
SIGNAL \inst|CurrentState.execute~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cpuCacheOperation~7_combout\ : std_logic;
SIGNAL \inst|Selector193~0_combout\ : std_logic;
SIGNAL \inst|cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst|hit~q\ : std_logic;
SIGNAL \inst|CurrentState.execute~q\ : std_logic;
SIGNAL \inst|CurrentState.writeData~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Selector191~0_combout\ : std_logic;
SIGNAL \inst|CurrentState.requestData~q\ : std_logic;
SIGNAL \inst|CurrentState.writeData~q\ : std_logic;
SIGNAL \inst|Selector190~0_combout\ : std_logic;
SIGNAL \inst|wantedAddress[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst|Selector194~0_combout\ : std_logic;
SIGNAL \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst|cpuCacheOperation.none~0_combout\ : std_logic;
SIGNAL \inst|cpuCacheOperation.none~DUPLICATE_q\ : std_logic;
SIGNAL \inst|emptyCacheIndex[1]~2_combout\ : std_logic;
SIGNAL \inst|cache[2].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[2].valid~q\ : std_logic;
SIGNAL \inst|emptyCacheIndex~1_combout\ : std_logic;
SIGNAL \inst|cache[3].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[3].valid~q\ : std_logic;
SIGNAL \inst|emptyCacheIndex~0_combout\ : std_logic;
SIGNAL \inst|cache[1].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[1].valid~q\ : std_logic;
SIGNAL \inst|cache[0].valid~q\ : std_logic;
SIGNAL \inst|cache[3].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cache[1].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|isCacheFull~0_combout\ : std_logic;
SIGNAL \inst|evictCounter[0]~1_combout\ : std_logic;
SIGNAL \inst|evictCounter[0]~0_combout\ : std_logic;
SIGNAL \inst|evictCounter[1]~2_combout\ : std_logic;
SIGNAL \inst|address~0_combout\ : std_logic;
SIGNAL \inst|cache[3].address[0]~0_combout\ : std_logic;
SIGNAL \inst|cache[0].address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|isInCache~0_combout\ : std_logic;
SIGNAL \inst|wantedAddressCache[0]~0_combout\ : std_logic;
SIGNAL \inst|cache~0_combout\ : std_logic;
SIGNAL \inst|address~3_combout\ : std_logic;
SIGNAL \inst|cache[0].address[0]~0_combout\ : std_logic;
SIGNAL \inst|sdramState~0_combout\ : std_logic;
SIGNAL \inst|sdramState~q\ : std_logic;
SIGNAL \inst|address~1_combout\ : std_logic;
SIGNAL \inst|cache[1].address[0]~0_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|cache[0].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[0].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|address~2_combout\ : std_logic;
SIGNAL \inst|cache[2].address[0]~0_combout\ : std_logic;
SIGNAL \inst|read_en~0_combout\ : std_logic;
SIGNAL \inst|read_en~feeder_combout\ : std_logic;
SIGNAL \inst|read_en~q\ : std_logic;
SIGNAL \inst|indexOfCache[0]~2_combout\ : std_logic;
SIGNAL \inst|indexOfCache~0_combout\ : std_logic;
SIGNAL \inst|indexOfCache~1_combout\ : std_logic;
SIGNAL \inst|Selector144~0_combout\ : std_logic;
SIGNAL \inst|cache[3].data[10]~0_combout\ : std_logic;
SIGNAL \inst|Selector70~0_combout\ : std_logic;
SIGNAL \inst|cache[1].data[10]~0_combout\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|cache[0].data[10]~0_combout\ : std_logic;
SIGNAL \inst|Selector107~0_combout\ : std_logic;
SIGNAL \inst|cache[2].data[10]~0_combout\ : std_logic;
SIGNAL \inst|Selector177~0_combout\ : std_logic;
SIGNAL \inst|cache~2_combout\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst|cache[2].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[2].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst|cache[2].dirtyBit~q\ : std_logic;
SIGNAL \inst|cache[3].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[3].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst|cache[3].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst|cache[3].dirtyBit~q\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~3_combout\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~q\ : std_logic;
SIGNAL \inst|cache~1_combout\ : std_logic;
SIGNAL \inst|cache[1].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[1].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst|cache[1].dirtyBit~q\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Sdram_data_out[10]~0_combout\ : std_logic;
SIGNAL \inst|Sdram_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|cache[3].address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Sdram_addr[0]~1_combout\ : std_logic;
SIGNAL \inst|Sdram_addr[0]~2_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Sdram_addr[0]~3_combout\ : std_logic;
SIGNAL \inst|Selector155~0_combout\ : std_logic;
SIGNAL \inst|write_en~q\ : std_logic;
SIGNAL \inst3|Decoder0~1_combout\ : std_logic;
SIGNAL \inst3|memory[0][10]~q\ : std_logic;
SIGNAL \inst3|Decoder0~0_combout\ : std_logic;
SIGNAL \inst3|memory[1][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~0_combout\ : std_logic;
SIGNAL \inst3|data_out[10]~0_combout\ : std_logic;
SIGNAL \inst|dataToSendToCache[2]~0_combout\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|Selector155~1_combout\ : std_logic;
SIGNAL \inst|cache[1].data[2]~1_combout\ : std_logic;
SIGNAL \inst|cache[2].data[1]~1_combout\ : std_logic;
SIGNAL \inst|cache[3].data[1]~1_combout\ : std_logic;
SIGNAL \inst|cache[0].data[2]~1_combout\ : std_logic;
SIGNAL \inst|Selector186~0_combout\ : std_logic;
SIGNAL \inst3|memory[0][1]~q\ : std_logic;
SIGNAL \inst3|memory[1][1]~feeder_combout\ : std_logic;
SIGNAL \inst3|memory[1][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|Selector187~0_combout\ : std_logic;
SIGNAL \inst3|memory[0][0]~q\ : std_logic;
SIGNAL \inst3|memory[1][0]~0_combout\ : std_logic;
SIGNAL \inst3|memory[1][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~0_combout\ : std_logic;
SIGNAL \inst|write_en~DUPLICATE_q\ : std_logic;
SIGNAL \inst|currentState_output~0_combout\ : std_logic;
SIGNAL \inst|cache[2].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|wantedAddress\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|Sdram_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|cache[3].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|Sdram_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|cache[0].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|currentState_output\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|cache[1].address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|indexOfCache\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|cache[0].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|cache[1].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|cache[2].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|cache[3].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|wantedAddressCache\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|emptyCacheIndex\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|dataToSendToCache\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_CurrentState.writeData~q\ : std_logic;
SIGNAL \inst|ALT_INV_address~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_wantedAddressCache\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_cpuCacheOperation~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.execute~q\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.requestData~q\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.initial~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[2].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[1].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[0].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_evictCounter[0]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Sdram_addr[0]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_indexOfCache~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_indexOfCache\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_Sdram_addr[0]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_indexOfCache~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Sdram_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_isInCache~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[3].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_isCacheFull~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].valid~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[0][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[1][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[0][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[1][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[0][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[1][10]~q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst|ALT_INV_read_en~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].address\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[2].address\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[1].address\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_wantedAddress\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[3].address\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_Sdram_data_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_Sdram_addr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_write_en~q\ : std_logic;
SIGNAL \inst3|ALT_INV_data_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_sdramState~q\ : std_logic;
SIGNAL \inst|ALT_INV_read_en~q\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.execute~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].address[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_hit~q\ : std_logic;
SIGNAL \inst|ALT_INV_Selector155~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_dataToSendToCache\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst|ALT_INV_Selector144~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector107~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector70~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].dirtyBit~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].dirtyBit~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_emptyCacheIndex~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_emptyCacheIndex\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_emptyCacheIndex~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address~1_combout\ : std_logic;

BEGIN

readfromCPU <= ww_readfromCPU;
ww_clk <= clk;
ww_reset <= reset;
data_out_sdram <= ww_data_out_sdram;
writefromCPU <= ww_writefromCPU;
sdram_addr_fromCPU <= ww_sdram_addr_fromCPU;
sdram_data_fromCPU <= ww_sdram_data_fromCPU;
CurrentState <= ww_CurrentState;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_CurrentState.writeData~q\ <= NOT \inst|CurrentState.writeData~q\;
\inst|ALT_INV_address~0_combout\ <= NOT \inst|address~0_combout\;
\inst|ALT_INV_cache~0_combout\ <= NOT \inst|cache~0_combout\;
\inst|ALT_INV_wantedAddressCache\(0) <= NOT \inst|wantedAddressCache\(0);
\inst|ALT_INV_cpuCacheOperation~7_combout\ <= NOT \inst|cpuCacheOperation~7_combout\;
\inst|ALT_INV_CurrentState.execute~q\ <= NOT \inst|CurrentState.execute~q\;
\inst|ALT_INV_CurrentState.requestData~q\ <= NOT \inst|CurrentState.requestData~q\;
\inst|ALT_INV_CurrentState.initial~q\ <= NOT \inst|CurrentState.initial~q\;
\inst|ALT_INV_cache[3].data\(0) <= NOT \inst|cache[3].data\(0);
\inst|ALT_INV_cache[2].data\(0) <= NOT \inst|cache[2].data\(0);
\inst|ALT_INV_cache[1].data\(0) <= NOT \inst|cache[1].data\(0);
\inst|ALT_INV_cache[0].data\(0) <= NOT \inst|cache[0].data\(0);
\inst|ALT_INV_cache[3].data\(1) <= NOT \inst|cache[3].data\(1);
\inst|ALT_INV_cache[2].data\(1) <= NOT \inst|cache[2].data\(1);
\inst|ALT_INV_cache[1].data\(1) <= NOT \inst|cache[1].data\(1);
\inst|ALT_INV_cache[0].data\(1) <= NOT \inst|cache[0].data\(1);
\inst|ALT_INV_evictCounter[0]~0_combout\ <= NOT \inst|evictCounter[0]~0_combout\;
\inst|ALT_INV_cpuCacheOperation.none~q\ <= NOT \inst|cpuCacheOperation.none~q\;
\inst|ALT_INV_cache[3].data\(10) <= NOT \inst|cache[3].data\(10);
\inst|ALT_INV_cache[2].data\(10) <= NOT \inst|cache[2].data\(10);
\inst|ALT_INV_cache[1].data\(10) <= NOT \inst|cache[1].data\(10);
\inst|ALT_INV_cache[0].data\(10) <= NOT \inst|cache[0].data\(10);
\inst|ALT_INV_Selector4~0_combout\ <= NOT \inst|Selector4~0_combout\;
\inst|ALT_INV_Sdram_addr[0]~2_combout\ <= NOT \inst|Sdram_addr[0]~2_combout\;
\inst|ALT_INV_indexOfCache~1_combout\ <= NOT \inst|indexOfCache~1_combout\;
\inst|ALT_INV_indexOfCache\(1) <= NOT \inst|indexOfCache\(1);
\inst|ALT_INV_Sdram_addr[0]~1_combout\ <= NOT \inst|Sdram_addr[0]~1_combout\;
\inst|ALT_INV_indexOfCache~0_combout\ <= NOT \inst|indexOfCache~0_combout\;
\inst|ALT_INV_indexOfCache\(0) <= NOT \inst|indexOfCache\(0);
\inst|ALT_INV_Sdram_addr[0]~0_combout\ <= NOT \inst|Sdram_addr[0]~0_combout\;
\inst|ALT_INV_isInCache~0_combout\ <= NOT \inst|isInCache~0_combout\;
\inst|ALT_INV_Selector7~0_combout\ <= NOT \inst|Selector7~0_combout\;
\inst|ALT_INV_cpuCacheOperation.write_cache~q\ <= NOT \inst|cpuCacheOperation.write_cache~q\;
\inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|Mux3~0_combout\;
\inst|ALT_INV_evictCounter\(1) <= NOT \inst|evictCounter\(1);
\inst|ALT_INV_evictCounter\(0) <= NOT \inst|evictCounter\(0);
\inst|ALT_INV_cache[3].dirtyBit~q\ <= NOT \inst|cache[3].dirtyBit~q\;
\inst|ALT_INV_cache[2].dirtyBit~q\ <= NOT \inst|cache[2].dirtyBit~q\;
\inst|ALT_INV_cache[1].dirtyBit~q\ <= NOT \inst|cache[1].dirtyBit~q\;
\inst|ALT_INV_cache[0].dirtyBit~q\ <= NOT \inst|cache[0].dirtyBit~q\;
\inst|ALT_INV_isCacheFull~0_combout\ <= NOT \inst|isCacheFull~0_combout\;
\inst|ALT_INV_cache[3].valid~q\ <= NOT \inst|cache[3].valid~q\;
\inst|ALT_INV_cache[2].valid~q\ <= NOT \inst|cache[2].valid~q\;
\inst|ALT_INV_cache[1].valid~q\ <= NOT \inst|cache[1].valid~q\;
\inst|ALT_INV_cache[0].valid~q\ <= NOT \inst|cache[0].valid~q\;
\inst3|ALT_INV_memory[0][0]~q\ <= NOT \inst3|memory[0][0]~q\;
\inst3|ALT_INV_memory[1][0]~q\ <= NOT \inst3|memory[1][0]~q\;
\inst3|ALT_INV_memory[0][1]~q\ <= NOT \inst3|memory[0][1]~q\;
\inst3|ALT_INV_memory[1][1]~q\ <= NOT \inst3|memory[1][1]~q\;
\inst3|ALT_INV_memory[0][10]~q\ <= NOT \inst3|memory[0][10]~q\;
\inst3|ALT_INV_memory[1][10]~q\ <= NOT \inst3|memory[1][10]~q\;
\inst|ALT_INV_cpuCacheOperation.read_cache~q\ <= NOT \inst|cpuCacheOperation.read_cache~q\;
\inst|ALT_INV_read_en~0_combout\ <= NOT \inst|read_en~0_combout\;
\inst|ALT_INV_cache[0].address\(0) <= NOT \inst|cache[0].address\(0);
\inst|ALT_INV_cache[2].address\(0) <= NOT \inst|cache[2].address\(0);
\inst|ALT_INV_cache[1].address\(0) <= NOT \inst|cache[1].address\(0);
\inst|ALT_INV_wantedAddress\(0) <= NOT \inst|wantedAddress\(0);
\inst|ALT_INV_cache[3].address\(0) <= NOT \inst|cache[3].address\(0);
\inst|ALT_INV_Sdram_data_out\(0) <= NOT \inst|Sdram_data_out\(0);
\inst|ALT_INV_Sdram_data_out\(1) <= NOT \inst|Sdram_data_out\(1);
\inst|ALT_INV_Sdram_addr\(0) <= NOT \inst|Sdram_addr\(0);
\inst|ALT_INV_write_en~q\ <= NOT \inst|write_en~q\;
\inst3|ALT_INV_data_out\(0) <= NOT \inst3|data_out\(0);
\inst3|ALT_INV_data_out\(1) <= NOT \inst3|data_out\(1);
\inst3|ALT_INV_data_out\(10) <= NOT \inst3|data_out\(10);
\inst|ALT_INV_sdramState~q\ <= NOT \inst|sdramState~q\;
\inst|ALT_INV_read_en~q\ <= NOT \inst|read_en~q\;
\inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\ <= NOT \inst|CurrentState.writeData~DUPLICATE_q\;
\inst|ALT_INV_CurrentState.execute~DUPLICATE_q\ <= NOT \inst|CurrentState.execute~DUPLICATE_q\;
\inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\ <= NOT \inst|cpuCacheOperation.none~DUPLICATE_q\;
\inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\ <= NOT \inst|cpuCacheOperation.write_cache~DUPLICATE_q\;
\inst|ALT_INV_cache[3].valid~DUPLICATE_q\ <= NOT \inst|cache[3].valid~DUPLICATE_q\;
\inst|ALT_INV_cache[1].valid~DUPLICATE_q\ <= NOT \inst|cache[1].valid~DUPLICATE_q\;
\inst|ALT_INV_cache[0].valid~DUPLICATE_q\ <= NOT \inst|cache[0].valid~DUPLICATE_q\;
\inst|ALT_INV_cache[0].address[0]~DUPLICATE_q\ <= NOT \inst|cache[0].address[0]~DUPLICATE_q\;
\inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\ <= NOT \inst|wantedAddress[0]~DUPLICATE_q\;
\inst|ALT_INV_cache[3].address[0]~DUPLICATE_q\ <= NOT \inst|cache[3].address[0]~DUPLICATE_q\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst|ALT_INV_hit~q\ <= NOT \inst|hit~q\;
\inst|ALT_INV_Selector155~1_combout\ <= NOT \inst|Selector155~1_combout\;
\inst|ALT_INV_dataToSendToCache\(2) <= NOT \inst|dataToSendToCache\(2);
\inst|ALT_INV_Selector144~0_combout\ <= NOT \inst|Selector144~0_combout\;
\inst|ALT_INV_Selector107~0_combout\ <= NOT \inst|Selector107~0_combout\;
\inst|ALT_INV_Selector70~0_combout\ <= NOT \inst|Selector70~0_combout\;
\inst|ALT_INV_Selector33~0_combout\ <= NOT \inst|Selector33~0_combout\;
\inst|ALT_INV_cache[3].dirtyBit~1_combout\ <= NOT \inst|cache[3].dirtyBit~1_combout\;
\inst|ALT_INV_cache[3].dirtyBit~0_combout\ <= NOT \inst|cache[3].dirtyBit~0_combout\;
\inst|ALT_INV_cache[2].dirtyBit~0_combout\ <= NOT \inst|cache[2].dirtyBit~0_combout\;
\inst|ALT_INV_cache~2_combout\ <= NOT \inst|cache~2_combout\;
\inst|ALT_INV_cache[1].dirtyBit~0_combout\ <= NOT \inst|cache[1].dirtyBit~0_combout\;
\inst|ALT_INV_cache~1_combout\ <= NOT \inst|cache~1_combout\;
\inst|ALT_INV_cache[0].dirtyBit~2_combout\ <= NOT \inst|cache[0].dirtyBit~2_combout\;
\inst|ALT_INV_cache[0].dirtyBit~1_combout\ <= NOT \inst|cache[0].dirtyBit~1_combout\;
\inst|ALT_INV_cache[0].dirtyBit~0_combout\ <= NOT \inst|cache[0].dirtyBit~0_combout\;
\inst|ALT_INV_emptyCacheIndex~1_combout\ <= NOT \inst|emptyCacheIndex~1_combout\;
\inst|ALT_INV_emptyCacheIndex\(1) <= NOT \inst|emptyCacheIndex\(1);
\inst|ALT_INV_emptyCacheIndex~0_combout\ <= NOT \inst|emptyCacheIndex~0_combout\;
\inst|ALT_INV_emptyCacheIndex\(0) <= NOT \inst|emptyCacheIndex\(0);
\inst|ALT_INV_address~3_combout\ <= NOT \inst|address~3_combout\;
\inst|ALT_INV_address~2_combout\ <= NOT \inst|address~2_combout\;
\inst|ALT_INV_address~1_combout\ <= NOT \inst|address~1_combout\;

-- Location: IOOBUF_X8_Y0_N2
\readfromCPU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|read_en~q\,
	devoe => ww_devoe,
	o => ww_readfromCPU);

-- Location: IOOBUF_X70_Y0_N2
\data_out_sdram[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(31));

-- Location: IOOBUF_X56_Y0_N2
\data_out_sdram[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(30));

-- Location: IOOBUF_X78_Y0_N2
\data_out_sdram[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(29));

-- Location: IOOBUF_X86_Y0_N36
\data_out_sdram[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(28));

-- Location: IOOBUF_X74_Y0_N76
\data_out_sdram[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(27));

-- Location: IOOBUF_X50_Y0_N42
\data_out_sdram[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(26));

-- Location: IOOBUF_X58_Y0_N42
\data_out_sdram[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(25));

-- Location: IOOBUF_X70_Y0_N53
\data_out_sdram[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(24));

-- Location: IOOBUF_X74_Y0_N42
\data_out_sdram[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(23));

-- Location: IOOBUF_X70_Y0_N19
\data_out_sdram[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(22));

-- Location: IOOBUF_X74_Y0_N59
\data_out_sdram[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(21));

-- Location: IOOBUF_X70_Y0_N36
\data_out_sdram[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(20));

-- Location: IOOBUF_X84_Y0_N2
\data_out_sdram[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(19));

-- Location: IOOBUF_X86_Y0_N53
\data_out_sdram[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(18));

-- Location: IOOBUF_X60_Y0_N2
\data_out_sdram[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(17));

-- Location: IOOBUF_X82_Y0_N59
\data_out_sdram[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(16));

-- Location: IOOBUF_X84_Y0_N53
\data_out_sdram[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(15));

-- Location: IOOBUF_X62_Y0_N53
\data_out_sdram[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(14));

-- Location: IOOBUF_X58_Y0_N76
\data_out_sdram[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(13));

-- Location: IOOBUF_X86_Y0_N19
\data_out_sdram[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(12));

-- Location: IOOBUF_X50_Y0_N93
\data_out_sdram[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(11));

-- Location: IOOBUF_X84_Y0_N19
\data_out_sdram[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(10));

-- Location: IOOBUF_X78_Y0_N36
\data_out_sdram[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(9));

-- Location: IOOBUF_X56_Y0_N19
\data_out_sdram[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(8));

-- Location: IOOBUF_X82_Y0_N42
\data_out_sdram[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(7));

-- Location: IOOBUF_X86_Y0_N2
\data_out_sdram[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(6));

-- Location: IOOBUF_X62_Y0_N2
\data_out_sdram[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(5));

-- Location: IOOBUF_X60_Y0_N53
\data_out_sdram[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(4));

-- Location: IOOBUF_X30_Y0_N2
\data_out_sdram[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(10),
	devoe => ww_devoe,
	o => ww_data_out_sdram(3));

-- Location: IOOBUF_X26_Y0_N76
\data_out_sdram[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(1),
	devoe => ww_devoe,
	o => ww_data_out_sdram(2));

-- Location: IOOBUF_X26_Y0_N59
\data_out_sdram[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(1),
	devoe => ww_devoe,
	o => ww_data_out_sdram(1));

-- Location: IOOBUF_X8_Y0_N53
\data_out_sdram[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(0),
	devoe => ww_devoe,
	o => ww_data_out_sdram(0));

-- Location: IOOBUF_X28_Y0_N53
\writefromCPU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|write_en~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_writefromCPU);

-- Location: IOOBUF_X34_Y0_N42
\sdram_addr_fromCPU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sdram_addr_fromCPU(2));

-- Location: IOOBUF_X38_Y0_N53
\sdram_addr_fromCPU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sdram_addr_fromCPU(1));

-- Location: IOOBUF_X26_Y0_N93
\sdram_addr_fromCPU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_addr\(0),
	devoe => ww_devoe,
	o => ww_sdram_addr_fromCPU(0));

-- Location: IOOBUF_X40_Y0_N53
\sdram_data_fromCPU[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(31));

-- Location: IOOBUF_X40_Y0_N19
\sdram_data_fromCPU[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(30));

-- Location: IOOBUF_X52_Y0_N2
\sdram_data_fromCPU[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(29));

-- Location: IOOBUF_X32_Y0_N19
\sdram_data_fromCPU[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(28));

-- Location: IOOBUF_X50_Y0_N59
\sdram_data_fromCPU[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(27));

-- Location: IOOBUF_X34_Y0_N59
\sdram_data_fromCPU[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(26));

-- Location: IOOBUF_X2_Y0_N93
\sdram_data_fromCPU[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(25));

-- Location: IOOBUF_X2_Y0_N42
\sdram_data_fromCPU[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(24));

-- Location: IOOBUF_X2_Y0_N76
\sdram_data_fromCPU[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(23));

-- Location: IOOBUF_X52_Y0_N53
\sdram_data_fromCPU[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(22));

-- Location: IOOBUF_X6_Y0_N36
\sdram_data_fromCPU[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(21));

-- Location: IOOBUF_X38_Y0_N36
\sdram_data_fromCPU[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(20));

-- Location: IOOBUF_X32_Y0_N2
\sdram_data_fromCPU[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(19));

-- Location: IOOBUF_X66_Y0_N42
\sdram_data_fromCPU[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(18));

-- Location: IOOBUF_X66_Y0_N76
\sdram_data_fromCPU[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(17));

-- Location: IOOBUF_X2_Y0_N59
\sdram_data_fromCPU[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(16));

-- Location: IOOBUF_X68_Y0_N2
\sdram_data_fromCPU[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(15));

-- Location: IOOBUF_X38_Y0_N19
\sdram_data_fromCPU[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(14));

-- Location: IOOBUF_X62_Y0_N36
\sdram_data_fromCPU[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(13));

-- Location: IOOBUF_X32_Y0_N36
\sdram_data_fromCPU[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(12));

-- Location: IOOBUF_X64_Y0_N53
\sdram_data_fromCPU[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(11));

-- Location: IOOBUF_X66_Y0_N59
\sdram_data_fromCPU[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(10));

-- Location: IOOBUF_X64_Y0_N19
\sdram_data_fromCPU[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(9));

-- Location: IOOBUF_X64_Y0_N36
\sdram_data_fromCPU[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(8));

-- Location: IOOBUF_X68_Y0_N36
\sdram_data_fromCPU[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(7));

-- Location: IOOBUF_X4_Y0_N53
\sdram_data_fromCPU[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(6));

-- Location: IOOBUF_X40_Y0_N2
\sdram_data_fromCPU[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(5));

-- Location: IOOBUF_X32_Y0_N53
\sdram_data_fromCPU[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(4));

-- Location: IOOBUF_X62_Y0_N19
\sdram_data_fromCPU[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(10),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(3));

-- Location: IOOBUF_X28_Y0_N2
\sdram_data_fromCPU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(1),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(2));

-- Location: IOOBUF_X28_Y0_N19
\sdram_data_fromCPU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(1),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(1));

-- Location: IOOBUF_X26_Y0_N42
\sdram_data_fromCPU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(0),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(0));

-- Location: IOOBUF_X8_Y0_N19
\CurrentState[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|currentState_output\(1),
	devoe => ww_devoe,
	o => ww_CurrentState(1));

-- Location: IOOBUF_X6_Y0_N2
\CurrentState[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|currentState_output\(0),
	devoe => ww_devoe,
	o => ww_CurrentState(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X11_Y3_N24
\inst|hit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|hit~0_combout\ = ( !\inst|read_en~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_read_en~0_combout\,
	combout => \inst|hit~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X11_Y3_N45
\inst|CurrentState.initial~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|CurrentState.initial~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst|CurrentState.initial~feeder_combout\);

-- Location: FF_X11_Y3_N46
\inst|CurrentState.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|CurrentState.initial~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CurrentState.initial~q\);

-- Location: LABCELL_X11_Y3_N12
\inst|CurrentState~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|CurrentState~12_combout\ = ( \inst|CurrentState.requestData~q\ & ( \inst|hit~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_hit~q\,
	dataf => \inst|ALT_INV_CurrentState.requestData~q\,
	combout => \inst|CurrentState~12_combout\);

-- Location: FF_X11_Y3_N14
\inst|CurrentState.execute~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|CurrentState~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CurrentState.execute~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N33
\inst|cpuCacheOperation~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cpuCacheOperation~7_combout\ = ( \inst|CurrentState.initial~q\ & ( !\inst|CurrentState.execute~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_CurrentState.initial~q\,
	dataf => \inst|ALT_INV_CurrentState.execute~DUPLICATE_q\,
	combout => \inst|cpuCacheOperation~7_combout\);

-- Location: LABCELL_X16_Y3_N18
\inst|Selector193~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector193~0_combout\ = ( \inst|CurrentState.requestData~q\ ) # ( !\inst|CurrentState.requestData~q\ & ( (!\inst|cpuCacheOperation~7_combout\ & \inst|cpuCacheOperation.read_cache~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_cpuCacheOperation~7_combout\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	dataf => \inst|ALT_INV_CurrentState.requestData~q\,
	combout => \inst|Selector193~0_combout\);

-- Location: FF_X16_Y3_N20
\inst|cpuCacheOperation.read_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector193~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cpuCacheOperation.read_cache~q\);

-- Location: FF_X11_Y3_N26
\inst|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|hit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|hit~q\);

-- Location: FF_X11_Y3_N13
\inst|CurrentState.execute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|CurrentState~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CurrentState.execute~q\);

-- Location: FF_X16_Y3_N34
\inst|CurrentState.writeData~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|CurrentState.execute~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CurrentState.writeData~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N15
\inst|Selector191~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector191~0_combout\ = ( \inst|CurrentState.initial~q\ & ( ((!\inst|hit~q\ & \inst|CurrentState.requestData~q\)) # (\inst|CurrentState.writeData~DUPLICATE_q\) ) ) # ( !\inst|CurrentState.initial~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_hit~q\,
	datac => \inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\,
	datad => \inst|ALT_INV_CurrentState.requestData~q\,
	dataf => \inst|ALT_INV_CurrentState.initial~q\,
	combout => \inst|Selector191~0_combout\);

-- Location: FF_X11_Y3_N16
\inst|CurrentState.requestData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector191~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CurrentState.requestData~q\);

-- Location: FF_X16_Y3_N49
\inst|wantedAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector190~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|wantedAddress\(0));

-- Location: FF_X16_Y3_N35
\inst|CurrentState.writeData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|CurrentState.execute~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CurrentState.writeData~q\);

-- Location: LABCELL_X16_Y3_N48
\inst|Selector190~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector190~0_combout\ = ( \inst|CurrentState.writeData~q\ ) # ( !\inst|CurrentState.writeData~q\ & ( (\inst|wantedAddress\(0) & ((\inst|CurrentState.execute~q\) # (\inst|CurrentState.requestData~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_CurrentState.requestData~q\,
	datac => \inst|ALT_INV_CurrentState.execute~q\,
	datad => \inst|ALT_INV_wantedAddress\(0),
	dataf => \inst|ALT_INV_CurrentState.writeData~q\,
	combout => \inst|Selector190~0_combout\);

-- Location: FF_X16_Y3_N50
\inst|wantedAddress[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector190~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|wantedAddress[0]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N28
\inst|cpuCacheOperation.write_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector194~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cpuCacheOperation.write_cache~q\);

-- Location: LABCELL_X16_Y3_N27
\inst|Selector194~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector194~0_combout\ = ( \inst|cpuCacheOperation~7_combout\ & ( \inst|CurrentState.writeData~q\ ) ) # ( !\inst|cpuCacheOperation~7_combout\ & ( (\inst|cpuCacheOperation.write_cache~q\) # (\inst|CurrentState.writeData~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_CurrentState.writeData~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation~7_combout\,
	combout => \inst|Selector194~0_combout\);

-- Location: FF_X16_Y3_N29
\inst|cpuCacheOperation.write_cache~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector194~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cpuCacheOperation.write_cache~DUPLICATE_q\);

-- Location: FF_X16_Y3_N17
\inst|cpuCacheOperation.none\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cpuCacheOperation.none~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cpuCacheOperation.none~q\);

-- Location: LABCELL_X16_Y3_N15
\inst|cpuCacheOperation.none~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cpuCacheOperation.none~0_combout\ = ( \inst|cpuCacheOperation~7_combout\ ) # ( !\inst|cpuCacheOperation~7_combout\ & ( \inst|cpuCacheOperation.none~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_cpuCacheOperation.none~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation~7_combout\,
	combout => \inst|cpuCacheOperation.none~0_combout\);

-- Location: FF_X16_Y3_N16
\inst|cpuCacheOperation.none~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cpuCacheOperation.none~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cpuCacheOperation.none~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N0
\inst|emptyCacheIndex[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|emptyCacheIndex[1]~2_combout\ = ( \inst|isInCache~0_combout\ & ( (\inst|cpuCacheOperation.none~DUPLICATE_q\ & (!\reset~input_o\ & ((\inst|sdramState~q\) # (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\)))) ) ) # ( !\inst|isInCache~0_combout\ & ( 
-- (!\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (\inst|sdramState~q\ & (\inst|cpuCacheOperation.none~DUPLICATE_q\ & !\reset~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \inst|ALT_INV_isInCache~0_combout\,
	combout => \inst|emptyCacheIndex[1]~2_combout\);

-- Location: FF_X12_Y3_N38
\inst|emptyCacheIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|emptyCacheIndex~1_combout\,
	ena => \inst|emptyCacheIndex[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|emptyCacheIndex\(1));

-- Location: LABCELL_X12_Y3_N18
\inst|cache[2].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].valid~0_combout\ = ( \inst|cache[2].valid~q\ & ( \inst|sdramState~q\ ) ) # ( !\inst|cache[2].valid~q\ & ( \inst|sdramState~q\ & ( (!\inst|emptyCacheIndex~0_combout\ & (\inst|emptyCacheIndex~1_combout\ & 
-- ((\inst|cpuCacheOperation.read_cache~q\) # (\inst|Selector7~0_combout\)))) ) ) ) # ( \inst|cache[2].valid~q\ & ( !\inst|sdramState~q\ ) ) # ( !\inst|cache[2].valid~q\ & ( !\inst|sdramState~q\ & ( (\inst|Selector7~0_combout\ & 
-- (!\inst|emptyCacheIndex~0_combout\ & (\inst|emptyCacheIndex~1_combout\ & !\inst|cpuCacheOperation.read_cache~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111111111111111100000100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Selector7~0_combout\,
	datab => \inst|ALT_INV_emptyCacheIndex~0_combout\,
	datac => \inst|ALT_INV_emptyCacheIndex~1_combout\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[2].valid~q\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|cache[2].valid~0_combout\);

-- Location: FF_X12_Y3_N19
\inst|cache[2].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].valid~q\);

-- Location: LABCELL_X12_Y3_N36
\inst|emptyCacheIndex~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|emptyCacheIndex~1_combout\ = ( \inst|emptyCacheIndex\(1) & ( \inst|cache[2].valid~q\ & ( (\inst|cache[1].valid~q\ & \inst|cache[0].valid~DUPLICATE_q\) ) ) ) # ( !\inst|emptyCacheIndex\(1) & ( \inst|cache[2].valid~q\ & ( (\inst|cache[1].valid~q\ & 
-- (\inst|cache[0].valid~DUPLICATE_q\ & !\inst|cache[3].valid~q\)) ) ) ) # ( \inst|emptyCacheIndex\(1) & ( !\inst|cache[2].valid~q\ & ( (\inst|cache[1].valid~q\ & \inst|cache[0].valid~DUPLICATE_q\) ) ) ) # ( !\inst|emptyCacheIndex\(1) & ( 
-- !\inst|cache[2].valid~q\ & ( (\inst|cache[1].valid~q\ & \inst|cache[0].valid~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~q\,
	datac => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[3].valid~q\,
	datae => \inst|ALT_INV_emptyCacheIndex\(1),
	dataf => \inst|ALT_INV_cache[2].valid~q\,
	combout => \inst|emptyCacheIndex~1_combout\);

-- Location: LABCELL_X12_Y3_N12
\inst|cache[3].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].valid~0_combout\ = ( \inst|cache[3].valid~q\ & ( \inst|sdramState~q\ ) ) # ( !\inst|cache[3].valid~q\ & ( \inst|sdramState~q\ & ( (\inst|emptyCacheIndex~0_combout\ & (\inst|emptyCacheIndex~1_combout\ & 
-- ((\inst|cpuCacheOperation.read_cache~q\) # (\inst|Selector7~0_combout\)))) ) ) ) # ( \inst|cache[3].valid~q\ & ( !\inst|sdramState~q\ ) ) # ( !\inst|cache[3].valid~q\ & ( !\inst|sdramState~q\ & ( (\inst|Selector7~0_combout\ & 
-- (\inst|emptyCacheIndex~0_combout\ & (\inst|emptyCacheIndex~1_combout\ & !\inst|cpuCacheOperation.read_cache~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111111111111100000001000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Selector7~0_combout\,
	datab => \inst|ALT_INV_emptyCacheIndex~0_combout\,
	datac => \inst|ALT_INV_emptyCacheIndex~1_combout\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[3].valid~q\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|cache[3].valid~0_combout\);

-- Location: FF_X12_Y3_N14
\inst|cache[3].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].valid~q\);

-- Location: FF_X12_Y3_N11
\inst|emptyCacheIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|emptyCacheIndex~0_combout\,
	ena => \inst|emptyCacheIndex[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|emptyCacheIndex\(0));

-- Location: LABCELL_X12_Y3_N9
\inst|emptyCacheIndex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|emptyCacheIndex~0_combout\ = ( \inst|emptyCacheIndex\(0) & ( \inst|cache[2].valid~q\ & ( \inst|cache[0].valid~DUPLICATE_q\ ) ) ) # ( !\inst|emptyCacheIndex\(0) & ( \inst|cache[2].valid~q\ & ( (\inst|cache[0].valid~DUPLICATE_q\ & 
-- ((!\inst|cache[1].valid~q\) # (!\inst|cache[3].valid~q\))) ) ) ) # ( \inst|emptyCacheIndex\(0) & ( !\inst|cache[2].valid~q\ & ( (!\inst|cache[1].valid~q\ & \inst|cache[0].valid~DUPLICATE_q\) ) ) ) # ( !\inst|emptyCacheIndex\(0) & ( 
-- !\inst|cache[2].valid~q\ & ( (!\inst|cache[1].valid~q\ & \inst|cache[0].valid~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000111110100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~q\,
	datac => \inst|ALT_INV_cache[3].valid~q\,
	datad => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datae => \inst|ALT_INV_emptyCacheIndex\(0),
	dataf => \inst|ALT_INV_cache[2].valid~q\,
	combout => \inst|emptyCacheIndex~0_combout\);

-- Location: LABCELL_X12_Y3_N0
\inst|cache[1].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].valid~0_combout\ = ( \inst|sdramState~q\ & ( ((\inst|emptyCacheIndex~0_combout\ & ((\inst|cpuCacheOperation.read_cache~q\) # (\inst|Selector7~0_combout\)))) # (\inst|cache[1].valid~q\) ) ) # ( !\inst|sdramState~q\ & ( 
-- ((\inst|Selector7~0_combout\ & (!\inst|cpuCacheOperation.read_cache~q\ & \inst|emptyCacheIndex~0_combout\))) # (\inst|cache[1].valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Selector7~0_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_emptyCacheIndex~0_combout\,
	datad => \inst|ALT_INV_cache[1].valid~q\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|cache[1].valid~0_combout\);

-- Location: FF_X12_Y3_N2
\inst|cache[1].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].valid~q\);

-- Location: FF_X12_Y3_N4
\inst|cache[0].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].valid~q\);

-- Location: FF_X12_Y3_N13
\inst|cache[3].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].valid~DUPLICATE_q\);

-- Location: FF_X12_Y3_N1
\inst|cache[1].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].valid~DUPLICATE_q\);

-- Location: LABCELL_X13_Y3_N57
\inst|isCacheFull~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|isCacheFull~0_combout\ = ( \inst|cache[1].valid~DUPLICATE_q\ & ( (\inst|cache[2].valid~q\ & (\inst|cache[0].valid~q\ & \inst|cache[3].valid~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datac => \inst|ALT_INV_cache[0].valid~q\,
	datad => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	combout => \inst|isCacheFull~0_combout\);

-- Location: LABCELL_X18_Y3_N54
\inst|evictCounter[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|evictCounter[0]~1_combout\ = ( \inst|evictCounter\(0) & ( \inst|sdramState~q\ & ( (!\inst|isCacheFull~0_combout\) # ((!\inst|cpuCacheOperation.none~DUPLICATE_q\) # ((\inst|cpuCacheOperation.write_cache~q\ & !\inst|isInCache~0_combout\))) ) ) ) # ( 
-- !\inst|evictCounter\(0) & ( \inst|sdramState~q\ & ( (\inst|isCacheFull~0_combout\ & (\inst|cpuCacheOperation.none~DUPLICATE_q\ & ((!\inst|cpuCacheOperation.write_cache~q\) # (\inst|isInCache~0_combout\)))) ) ) ) # ( \inst|evictCounter\(0) & ( 
-- !\inst|sdramState~q\ & ( (!\inst|isCacheFull~0_combout\) # ((!\inst|cpuCacheOperation.write_cache~q\) # ((!\inst|cpuCacheOperation.none~DUPLICATE_q\) # (!\inst|isInCache~0_combout\))) ) ) ) # ( !\inst|evictCounter\(0) & ( !\inst|sdramState~q\ & ( 
-- (\inst|isCacheFull~0_combout\ & (\inst|cpuCacheOperation.write_cache~q\ & (\inst|cpuCacheOperation.none~DUPLICATE_q\ & \inst|isInCache~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000100000001011111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isCacheFull~0_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datac => \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\,
	datad => \inst|ALT_INV_isInCache~0_combout\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|evictCounter[0]~1_combout\);

-- Location: FF_X18_Y3_N55
\inst|evictCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|evictCounter[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|evictCounter\(0));

-- Location: LABCELL_X18_Y3_N48
\inst|evictCounter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|evictCounter[0]~0_combout\ = ( \inst|sdramState~q\ & ( \inst|cpuCacheOperation.none~DUPLICATE_q\ ) ) # ( !\inst|sdramState~q\ & ( (\inst|cpuCacheOperation.write_cache~q\ & \inst|cpuCacheOperation.none~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datac => \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|evictCounter[0]~0_combout\);

-- Location: LABCELL_X18_Y3_N42
\inst|evictCounter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|evictCounter[1]~2_combout\ = ( \inst|evictCounter\(1) & ( \inst|evictCounter\(0) & ( (!\inst|evictCounter[0]~0_combout\) # ((!\inst|isCacheFull~0_combout\) # ((!\inst|isInCache~0_combout\ & \inst|cpuCacheOperation.write_cache~q\))) ) ) ) # ( 
-- !\inst|evictCounter\(1) & ( \inst|evictCounter\(0) & ( (\inst|evictCounter[0]~0_combout\ & (\inst|isCacheFull~0_combout\ & ((!\inst|cpuCacheOperation.write_cache~q\) # (\inst|isInCache~0_combout\)))) ) ) ) # ( \inst|evictCounter\(1) & ( 
-- !\inst|evictCounter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011011111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isInCache~0_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datac => \inst|ALT_INV_evictCounter[0]~0_combout\,
	datad => \inst|ALT_INV_isCacheFull~0_combout\,
	datae => \inst|ALT_INV_evictCounter\(1),
	dataf => \inst|ALT_INV_evictCounter\(0),
	combout => \inst|evictCounter[1]~2_combout\);

-- Location: FF_X18_Y3_N44
\inst|evictCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|evictCounter[1]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|evictCounter\(1));

-- Location: LABCELL_X12_Y3_N54
\inst|address~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address~0_combout\ = ( \inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( (\inst|cache[1].valid~q\ & (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\)) ) ) ) # ( !\inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( 
-- (\inst|cache[1].valid~q\ & (!\inst|cache[3].valid~q\ & (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\))) ) ) ) # ( \inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[1].valid~q\ & (!\inst|cache[3].valid~q\ & 
-- (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\))) ) ) ) # ( !\inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[1].valid~q\ & (!\inst|cache[3].valid~q\ & (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~q\,
	datab => \inst|ALT_INV_cache[3].valid~q\,
	datac => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[2].valid~q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|address~0_combout\);

-- Location: LABCELL_X13_Y3_N33
\inst|cache[3].address[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].address[0]~0_combout\ = ( \inst|cache[3].address\(0) & ( \inst|address~0_combout\ & ( ((!\inst|cpuCacheOperation.read_cache~q\ & ((!\inst|Selector7~0_combout\))) # (\inst|cpuCacheOperation.read_cache~q\ & (!\inst|sdramState~q\))) # 
-- (\inst|cache~0_combout\) ) ) ) # ( !\inst|cache[3].address\(0) & ( \inst|address~0_combout\ & ( (\inst|cache~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\ & ((\inst|Selector7~0_combout\))) # (\inst|cpuCacheOperation.read_cache~q\ & 
-- (\inst|sdramState~q\)))) ) ) ) # ( \inst|cache[3].address\(0) & ( !\inst|address~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000100011111001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cache~0_combout\,
	datac => \inst|ALT_INV_Selector7~0_combout\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[3].address\(0),
	dataf => \inst|ALT_INV_address~0_combout\,
	combout => \inst|cache[3].address[0]~0_combout\);

-- Location: FF_X13_Y3_N35
\inst|cache[3].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].address[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].address\(0));

-- Location: FF_X13_Y3_N49
\inst|cache[0].address[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].address[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].address[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N12
\inst|isInCache~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|isInCache~0_combout\ = ( \inst|wantedAddress[0]~DUPLICATE_q\ & ( (!\inst|cache[1].address\(0) & (!\inst|cache[2].address\(0) & (!\inst|cache[3].address\(0) & !\inst|cache[0].address[0]~DUPLICATE_q\))) ) ) # ( !\inst|wantedAddress[0]~DUPLICATE_q\ & ( 
-- (\inst|cache[1].address\(0) & (\inst|cache[2].address\(0) & (\inst|cache[3].address\(0) & \inst|cache[0].address[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].address\(0),
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address\(0),
	datad => \inst|ALT_INV_cache[0].address[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	combout => \inst|isInCache~0_combout\);

-- Location: LABCELL_X16_Y3_N54
\inst|wantedAddressCache[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|wantedAddressCache[0]~0_combout\ = ( \inst|isInCache~0_combout\ & ( (!\inst|cpuCacheOperation.read_cache~q\ & (((\inst|wantedAddressCache\(0))))) # (\inst|cpuCacheOperation.read_cache~q\ & ((!\inst|sdramState~q\ & 
-- (\inst|wantedAddress[0]~DUPLICATE_q\)) # (\inst|sdramState~q\ & ((\inst|wantedAddressCache\(0)))))) ) ) # ( !\inst|isInCache~0_combout\ & ( \inst|wantedAddressCache\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_wantedAddressCache\(0),
	dataf => \inst|ALT_INV_isInCache~0_combout\,
	combout => \inst|wantedAddressCache[0]~0_combout\);

-- Location: FF_X16_Y3_N55
\inst|wantedAddressCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|wantedAddressCache[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|wantedAddressCache\(0));

-- Location: LABCELL_X16_Y3_N57
\inst|cache~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache~0_combout\ = ( \inst|cpuCacheOperation.read_cache~q\ & ( \inst|wantedAddressCache\(0) ) ) # ( !\inst|cpuCacheOperation.read_cache~q\ & ( \inst|wantedAddress\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_wantedAddressCache\(0),
	datad => \inst|ALT_INV_wantedAddress\(0),
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	combout => \inst|cache~0_combout\);

-- Location: LABCELL_X13_Y3_N6
\inst|address~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address~3_combout\ = ( \inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( \inst|cache[0].valid~q\ ) ) ) # ( !\inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( \inst|cache[0].valid~q\ ) ) ) # ( \inst|evictCounter\(0) & ( 
-- !\inst|evictCounter\(1) & ( \inst|cache[0].valid~q\ ) ) ) # ( !\inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[0].valid~q\ & ((!\inst|cache[3].valid~DUPLICATE_q\) # ((!\inst|cache[1].valid~DUPLICATE_q\) # (!\inst|cache[2].valid~q\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[2].valid~q\,
	datad => \inst|ALT_INV_cache[0].valid~q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|address~3_combout\);

-- Location: LABCELL_X13_Y3_N48
\inst|cache[0].address[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].address[0]~0_combout\ = ( \inst|cache[0].address\(0) & ( \inst|address~3_combout\ ) ) # ( \inst|cache[0].address\(0) & ( !\inst|address~3_combout\ & ( ((!\inst|cpuCacheOperation.read_cache~q\ & ((!\inst|Selector7~0_combout\))) # 
-- (\inst|cpuCacheOperation.read_cache~q\ & (!\inst|sdramState~q\))) # (\inst|cache~0_combout\) ) ) ) # ( !\inst|cache[0].address\(0) & ( !\inst|address~3_combout\ & ( (\inst|cache~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\ & 
-- ((\inst|Selector7~0_combout\))) # (\inst|cpuCacheOperation.read_cache~q\ & (\inst|sdramState~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011111110110111001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_cache~0_combout\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_Selector7~0_combout\,
	datae => \inst|ALT_INV_cache[0].address\(0),
	dataf => \inst|ALT_INV_address~3_combout\,
	combout => \inst|cache[0].address[0]~0_combout\);

-- Location: FF_X13_Y3_N50
\inst|cache[0].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].address[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].address\(0));

-- Location: LABCELL_X13_Y3_N0
\inst|sdramState~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|sdramState~0_combout\ = ( \inst|sdramState~q\ & ( \inst|cache[1].address\(0) ) ) # ( !\inst|sdramState~q\ & ( \inst|cache[1].address\(0) & ( (\inst|cache[0].address\(0) & (\inst|cache[2].address\(0) & (\inst|cache[3].address\(0) & 
-- !\inst|wantedAddress[0]~DUPLICATE_q\))) ) ) ) # ( \inst|sdramState~q\ & ( !\inst|cache[1].address\(0) ) ) # ( !\inst|sdramState~q\ & ( !\inst|cache[1].address\(0) & ( (!\inst|cache[0].address\(0) & (!\inst|cache[2].address\(0) & 
-- (!\inst|cache[3].address\(0) & \inst|wantedAddress[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].address\(0),
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address\(0),
	datad => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_sdramState~q\,
	dataf => \inst|ALT_INV_cache[1].address\(0),
	combout => \inst|sdramState~0_combout\);

-- Location: FF_X13_Y3_N2
\inst|sdramState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|sdramState~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|sdramState~q\,
	ena => \inst|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sdramState~q\);

-- Location: LABCELL_X13_Y3_N36
\inst|address~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address~1_combout\ = ( \inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( (!\inst|cache[1].valid~DUPLICATE_q\ & \inst|cache[0].valid~q\) ) ) ) # ( !\inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( (!\inst|cache[1].valid~DUPLICATE_q\ & 
-- \inst|cache[0].valid~q\) ) ) ) # ( \inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[0].valid~q\ & ((!\inst|cache[1].valid~DUPLICATE_q\) # ((\inst|cache[3].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\)))) ) ) ) # ( 
-- !\inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (!\inst|cache[1].valid~DUPLICATE_q\ & \inst|cache[0].valid~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[2].valid~q\,
	datad => \inst|ALT_INV_cache[0].valid~q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|address~1_combout\);

-- Location: LABCELL_X13_Y3_N30
\inst|cache[1].address[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].address[0]~0_combout\ = ( \inst|cache[1].address\(0) & ( \inst|address~1_combout\ & ( ((!\inst|cpuCacheOperation.read_cache~q\ & ((!\inst|Selector7~0_combout\))) # (\inst|cpuCacheOperation.read_cache~q\ & (!\inst|sdramState~q\))) # 
-- (\inst|cache~0_combout\) ) ) ) # ( !\inst|cache[1].address\(0) & ( \inst|address~1_combout\ & ( (\inst|cache~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\ & ((\inst|Selector7~0_combout\))) # (\inst|cpuCacheOperation.read_cache~q\ & 
-- (\inst|sdramState~q\)))) ) ) ) # ( \inst|cache[1].address\(0) & ( !\inst|address~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001001100011111101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cache~0_combout\,
	datac => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datad => \inst|ALT_INV_Selector7~0_combout\,
	datae => \inst|ALT_INV_cache[1].address\(0),
	dataf => \inst|ALT_INV_address~1_combout\,
	combout => \inst|cache[1].address[0]~0_combout\);

-- Location: FF_X13_Y3_N31
\inst|cache[1].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].address[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].address\(0));

-- Location: LABCELL_X16_Y3_N30
\inst|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = ( \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( \inst|wantedAddress[0]~DUPLICATE_q\ & ( (!\inst|cache[1].address\(0) & (!\inst|cache[2].address\(0) & (!\inst|cache[3].address\(0) & 
-- !\inst|cache[0].address[0]~DUPLICATE_q\))) ) ) ) # ( \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( !\inst|wantedAddress[0]~DUPLICATE_q\ & ( (\inst|cache[1].address\(0) & (\inst|cache[2].address\(0) & (\inst|cache[3].address\(0) & 
-- \inst|cache[0].address[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].address\(0),
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address\(0),
	datad => \inst|ALT_INV_cache[0].address[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	dataf => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	combout => \inst|Selector7~0_combout\);

-- Location: LABCELL_X12_Y3_N3
\inst|cache[0].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].valid~0_combout\ = ( \inst|sdramState~q\ & ( ((\inst|cache[0].valid~q\) # (\inst|cpuCacheOperation.read_cache~q\)) # (\inst|Selector7~0_combout\) ) ) # ( !\inst|sdramState~q\ & ( ((\inst|Selector7~0_combout\ & 
-- !\inst|cpuCacheOperation.read_cache~q\)) # (\inst|cache[0].valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Selector7~0_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datad => \inst|ALT_INV_cache[0].valid~q\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|cache[0].valid~0_combout\);

-- Location: FF_X12_Y3_N5
\inst|cache[0].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].valid~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N24
\inst|address~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address~2_combout\ = ( \inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( (\inst|cache[0].valid~DUPLICATE_q\ & (!\inst|cache[2].valid~q\ & \inst|cache[1].valid~q\)) ) ) ) # ( !\inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( 
-- (\inst|cache[0].valid~DUPLICATE_q\ & (\inst|cache[1].valid~q\ & ((!\inst|cache[2].valid~q\) # (\inst|cache[3].valid~DUPLICATE_q\)))) ) ) ) # ( \inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[0].valid~DUPLICATE_q\ & 
-- (!\inst|cache[2].valid~q\ & \inst|cache[1].valid~q\)) ) ) ) # ( !\inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[0].valid~DUPLICATE_q\ & (!\inst|cache[2].valid~q\ & \inst|cache[1].valid~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001010000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datac => \inst|ALT_INV_cache[1].valid~q\,
	datad => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|address~2_combout\);

-- Location: LABCELL_X16_Y3_N6
\inst|cache[2].address[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].address[0]~0_combout\ = ( \inst|cache[2].address\(0) & ( \inst|Selector7~0_combout\ & ( (!\inst|address~2_combout\) # (((!\inst|sdramState~q\ & \inst|cpuCacheOperation.read_cache~q\)) # (\inst|cache~0_combout\)) ) ) ) # ( 
-- !\inst|cache[2].address\(0) & ( \inst|Selector7~0_combout\ & ( (\inst|address~2_combout\ & (\inst|cache~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\) # (\inst|sdramState~q\)))) ) ) ) # ( \inst|cache[2].address\(0) & ( !\inst|Selector7~0_combout\ 
-- & ( (!\inst|address~2_combout\) # ((!\inst|sdramState~q\) # ((!\inst|cpuCacheOperation.read_cache~q\) # (\inst|cache~0_combout\))) ) ) ) # ( !\inst|cache[2].address\(0) & ( !\inst|Selector7~0_combout\ & ( (\inst|address~2_combout\ & (\inst|sdramState~q\ & 
-- (\inst|cpuCacheOperation.read_cache~q\ & \inst|cache~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111101111111100000000010100011010111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_address~2_combout\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datad => \inst|ALT_INV_cache~0_combout\,
	datae => \inst|ALT_INV_cache[2].address\(0),
	dataf => \inst|ALT_INV_Selector7~0_combout\,
	combout => \inst|cache[2].address[0]~0_combout\);

-- Location: FF_X16_Y3_N8
\inst|cache[2].address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].address[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].address\(0));

-- Location: LABCELL_X16_Y3_N36
\inst|read_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|read_en~0_combout\ = ( \inst|cache[0].address[0]~DUPLICATE_q\ & ( \inst|cache[1].address\(0) & ( (!\inst|wantedAddress[0]~DUPLICATE_q\ & (\inst|cache[2].address\(0) & (\inst|cache[3].address\(0) & !\inst|sdramState~q\))) ) ) ) # ( 
-- !\inst|cache[0].address[0]~DUPLICATE_q\ & ( !\inst|cache[1].address\(0) & ( (\inst|wantedAddress[0]~DUPLICATE_q\ & (!\inst|cache[2].address\(0) & (!\inst|cache[3].address\(0) & !\inst|sdramState~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address\(0),
	datad => \inst|ALT_INV_sdramState~q\,
	datae => \inst|ALT_INV_cache[0].address[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cache[1].address\(0),
	combout => \inst|read_en~0_combout\);

-- Location: LABCELL_X17_Y3_N54
\inst|read_en~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|read_en~feeder_combout\ = ( \inst|read_en~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_read_en~0_combout\,
	combout => \inst|read_en~feeder_combout\);

-- Location: FF_X17_Y3_N56
\inst|read_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|read_en~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_en~q\);

-- Location: LABCELL_X13_Y3_N54
\inst|indexOfCache[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|indexOfCache[0]~2_combout\ = ( !\reset~input_o\ & ( (\inst|cpuCacheOperation.none~q\ & ((!\inst|sdramState~q\) # (!\inst|cpuCacheOperation.read_cache~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.none~q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst|indexOfCache[0]~2_combout\);

-- Location: FF_X13_Y3_N14
\inst|indexOfCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|indexOfCache~0_combout\,
	ena => \inst|indexOfCache[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|indexOfCache\(0));

-- Location: LABCELL_X13_Y3_N12
\inst|indexOfCache~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|indexOfCache~0_combout\ = ( \inst|indexOfCache\(0) & ( \inst|cache[1].address\(0) & ( (!\inst|cache[3].address\(0) & (((!\inst|cache[2].address\(0)) # (!\inst|wantedAddress[0]~DUPLICATE_q\)))) # (\inst|cache[3].address\(0) & 
-- (((\inst|cache[0].address\(0) & \inst|cache[2].address\(0))) # (\inst|wantedAddress[0]~DUPLICATE_q\))) ) ) ) # ( !\inst|indexOfCache\(0) & ( \inst|cache[1].address\(0) & ( (!\inst|cache[3].address\(0) & ((!\inst|cache[2].address\(0)) # 
-- (!\inst|wantedAddress[0]~DUPLICATE_q\))) # (\inst|cache[3].address\(0) & ((\inst|wantedAddress[0]~DUPLICATE_q\))) ) ) ) # ( \inst|indexOfCache\(0) & ( !\inst|cache[1].address\(0) & ( (!\inst|cache[3].address\(0) & ((!\inst|wantedAddress[0]~DUPLICATE_q\) # 
-- ((!\inst|cache[0].address\(0) & !\inst|cache[2].address\(0))))) # (\inst|cache[3].address\(0) & (((\inst|wantedAddress[0]~DUPLICATE_q\) # (\inst|cache[2].address\(0))))) ) ) ) # ( !\inst|indexOfCache\(0) & ( !\inst|cache[1].address\(0) & ( 
-- (!\inst|cache[3].address\(0) & ((!\inst|wantedAddress[0]~DUPLICATE_q\))) # (\inst|cache[3].address\(0) & ((\inst|wantedAddress[0]~DUPLICATE_q\) # (\inst|cache[2].address\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100001111111100111000111111110000110011111111000111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].address\(0),
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address\(0),
	datad => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_indexOfCache\(0),
	dataf => \inst|ALT_INV_cache[1].address\(0),
	combout => \inst|indexOfCache~0_combout\);

-- Location: FF_X13_Y3_N26
\inst|indexOfCache[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|indexOfCache~1_combout\,
	ena => \inst|indexOfCache[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|indexOfCache\(1));

-- Location: LABCELL_X13_Y3_N24
\inst|indexOfCache~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|indexOfCache~1_combout\ = ( \inst|indexOfCache\(1) & ( \inst|cache[1].address\(0) & ( (!\inst|cache[2].address\(0) & (((!\inst|wantedAddress[0]~DUPLICATE_q\) # (\inst|cache[3].address\(0))))) # (\inst|cache[2].address\(0) & 
-- (((!\inst|cache[3].address\(0)) # (\inst|wantedAddress[0]~DUPLICATE_q\)) # (\inst|cache[0].address\(0)))) ) ) ) # ( !\inst|indexOfCache\(1) & ( \inst|cache[1].address\(0) & ( (!\inst|cache[2].address\(0) & ((!\inst|wantedAddress[0]~DUPLICATE_q\) # 
-- (\inst|cache[3].address\(0)))) # (\inst|cache[2].address\(0) & ((!\inst|cache[3].address\(0)) # (\inst|wantedAddress[0]~DUPLICATE_q\))) ) ) ) # ( \inst|indexOfCache\(1) & ( !\inst|cache[1].address\(0) & ( (!\inst|cache[2].address\(0) & 
-- ((!\inst|cache[0].address\(0)) # ((!\inst|wantedAddress[0]~DUPLICATE_q\) # (\inst|cache[3].address\(0))))) # (\inst|cache[2].address\(0) & (((!\inst|cache[3].address\(0)) # (\inst|wantedAddress[0]~DUPLICATE_q\)))) ) ) ) # ( !\inst|indexOfCache\(1) & ( 
-- !\inst|cache[1].address\(0) & ( (!\inst|cache[2].address\(0) & ((!\inst|wantedAddress[0]~DUPLICATE_q\) # (\inst|cache[3].address\(0)))) # (\inst|cache[2].address\(0) & ((!\inst|cache[3].address\(0)) # (\inst|wantedAddress[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000111111111111001011111111111100001111111111110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].address\(0),
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address\(0),
	datad => \inst|ALT_INV_wantedAddress[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_indexOfCache\(1),
	dataf => \inst|ALT_INV_cache[1].address\(0),
	combout => \inst|indexOfCache~1_combout\);

-- Location: MLABCELL_X15_Y3_N45
\inst|Selector144~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector144~0_combout\ = ( \inst|address~0_combout\ & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (((\inst|indexOfCache~0_combout\ & \inst|indexOfCache~1_combout\)) # (\inst|isInCache~0_combout\))) ) ) # ( !\inst|address~0_combout\ & ( 
-- (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (!\inst|isInCache~0_combout\ & (\inst|indexOfCache~0_combout\ & \inst|indexOfCache~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000010001000101010001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_indexOfCache~0_combout\,
	datad => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_address~0_combout\,
	combout => \inst|Selector144~0_combout\);

-- Location: LABCELL_X17_Y3_N12
\inst|cache[3].data[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].data[10]~0_combout\ = ( \inst|cache[3].data\(10) & ( \inst3|data_out\(10) & ( (!\inst|Selector144~0_combout\) # (\inst|cpuCacheOperation.read_cache~q\) ) ) ) # ( !\inst|cache[3].data\(10) & ( \inst3|data_out\(10) & ( (\inst|sdramState~q\ & 
-- (\inst|cpuCacheOperation.read_cache~q\ & \inst|address~0_combout\)) ) ) ) # ( \inst|cache[3].data\(10) & ( !\inst3|data_out\(10) & ( (!\inst|cpuCacheOperation.read_cache~q\ & (((!\inst|Selector144~0_combout\)))) # (\inst|cpuCacheOperation.read_cache~q\ & 
-- ((!\inst|sdramState~q\) # ((!\inst|address~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111110001000000000000100011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_Selector144~0_combout\,
	datad => \inst|ALT_INV_address~0_combout\,
	datae => \inst|ALT_INV_cache[3].data\(10),
	dataf => \inst3|ALT_INV_data_out\(10),
	combout => \inst|cache[3].data[10]~0_combout\);

-- Location: FF_X17_Y3_N13
\inst|cache[3].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].data[10]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].data\(10));

-- Location: MLABCELL_X15_Y3_N24
\inst|Selector70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector70~0_combout\ = ( \inst|indexOfCache~0_combout\ & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ((!\inst|isInCache~0_combout\ & ((!\inst|indexOfCache~1_combout\))) # (\inst|isInCache~0_combout\ & (\inst|address~1_combout\)))) ) ) # ( 
-- !\inst|indexOfCache~0_combout\ & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (\inst|isInCache~0_combout\ & \inst|address~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_address~1_combout\,
	datad => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_indexOfCache~0_combout\,
	combout => \inst|Selector70~0_combout\);

-- Location: LABCELL_X17_Y3_N0
\inst|cache[1].data[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].data[10]~0_combout\ = ( \inst|cache[1].data\(10) & ( \inst3|data_out\(10) & ( (!\inst|Selector70~0_combout\) # (\inst|cpuCacheOperation.read_cache~q\) ) ) ) # ( !\inst|cache[1].data\(10) & ( \inst3|data_out\(10) & ( (\inst|sdramState~q\ & 
-- (\inst|cpuCacheOperation.read_cache~q\ & \inst|address~1_combout\)) ) ) ) # ( \inst|cache[1].data\(10) & ( !\inst3|data_out\(10) & ( (!\inst|cpuCacheOperation.read_cache~q\ & (((!\inst|Selector70~0_combout\)))) # (\inst|cpuCacheOperation.read_cache~q\ & 
-- ((!\inst|sdramState~q\) # ((!\inst|address~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111110001000000000000100011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_Selector70~0_combout\,
	datad => \inst|ALT_INV_address~1_combout\,
	datae => \inst|ALT_INV_cache[1].data\(10),
	dataf => \inst3|ALT_INV_data_out\(10),
	combout => \inst|cache[1].data[10]~0_combout\);

-- Location: FF_X17_Y3_N1
\inst|cache[1].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].data[10]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].data\(10));

-- Location: MLABCELL_X15_Y3_N27
\inst|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = ( \inst|indexOfCache~1_combout\ & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (\inst|isInCache~0_combout\ & !\inst|address~3_combout\)) ) ) # ( !\inst|indexOfCache~1_combout\ & ( 
-- (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ((!\inst|isInCache~0_combout\ & ((!\inst|indexOfCache~0_combout\))) # (\inst|isInCache~0_combout\ & (!\inst|address~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000010000010101000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_address~3_combout\,
	datad => \inst|ALT_INV_indexOfCache~0_combout\,
	dataf => \inst|ALT_INV_indexOfCache~1_combout\,
	combout => \inst|Selector33~0_combout\);

-- Location: LABCELL_X17_Y3_N6
\inst|cache[0].data[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].data[10]~0_combout\ = ( \inst|cache[0].data\(10) & ( \inst3|data_out\(10) & ( (!\inst|Selector33~0_combout\) # (\inst|cpuCacheOperation.read_cache~q\) ) ) ) # ( !\inst|cache[0].data\(10) & ( \inst3|data_out\(10) & ( (\inst|sdramState~q\ & 
-- (\inst|cpuCacheOperation.read_cache~q\ & !\inst|address~3_combout\)) ) ) ) # ( \inst|cache[0].data\(10) & ( !\inst3|data_out\(10) & ( (!\inst|cpuCacheOperation.read_cache~q\ & (((!\inst|Selector33~0_combout\)))) # (\inst|cpuCacheOperation.read_cache~q\ & 
-- ((!\inst|sdramState~q\) # ((\inst|address~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101111001100010001000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_Selector33~0_combout\,
	datad => \inst|ALT_INV_address~3_combout\,
	datae => \inst|ALT_INV_cache[0].data\(10),
	dataf => \inst3|ALT_INV_data_out\(10),
	combout => \inst|cache[0].data[10]~0_combout\);

-- Location: FF_X17_Y3_N7
\inst|cache[0].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].data[10]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].data\(10));

-- Location: MLABCELL_X15_Y3_N42
\inst|Selector107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector107~0_combout\ = ( \inst|address~2_combout\ & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (((\inst|indexOfCache~1_combout\ & !\inst|indexOfCache~0_combout\)) # (\inst|isInCache~0_combout\))) ) ) # ( !\inst|address~2_combout\ & ( 
-- (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (!\inst|isInCache~0_combout\ & (\inst|indexOfCache~1_combout\ & !\inst|indexOfCache~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000010101000100010001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_indexOfCache~1_combout\,
	datad => \inst|ALT_INV_indexOfCache~0_combout\,
	dataf => \inst|ALT_INV_address~2_combout\,
	combout => \inst|Selector107~0_combout\);

-- Location: LABCELL_X17_Y3_N24
\inst|cache[2].data[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].data[10]~0_combout\ = ( \inst|cache[2].data\(10) & ( \inst3|data_out\(10) & ( (!\inst|Selector107~0_combout\) # (\inst|cpuCacheOperation.read_cache~q\) ) ) ) # ( !\inst|cache[2].data\(10) & ( \inst3|data_out\(10) & ( 
-- (\inst|address~2_combout\ & (\inst|cpuCacheOperation.read_cache~q\ & \inst|sdramState~q\)) ) ) ) # ( \inst|cache[2].data\(10) & ( !\inst3|data_out\(10) & ( (!\inst|cpuCacheOperation.read_cache~q\ & (((!\inst|Selector107~0_combout\)))) # 
-- (\inst|cpuCacheOperation.read_cache~q\ & ((!\inst|address~2_combout\) # ((!\inst|sdramState~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100011001000000001000000011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_address~2_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_Selector107~0_combout\,
	datae => \inst|ALT_INV_cache[2].data\(10),
	dataf => \inst3|ALT_INV_data_out\(10),
	combout => \inst|cache[2].data[10]~0_combout\);

-- Location: FF_X17_Y3_N25
\inst|cache[2].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].data[10]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].data\(10));

-- Location: LABCELL_X18_Y3_N0
\inst|Selector177~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector177~0_combout\ = ( \inst|cache[0].data\(10) & ( \inst|cache[2].data\(10) & ( (!\inst|evictCounter\(0)) # ((!\inst|evictCounter\(1) & ((\inst|cache[1].data\(10)))) # (\inst|evictCounter\(1) & (\inst|cache[3].data\(10)))) ) ) ) # ( 
-- !\inst|cache[0].data\(10) & ( \inst|cache[2].data\(10) & ( (!\inst|evictCounter\(0) & (\inst|evictCounter\(1))) # (\inst|evictCounter\(0) & ((!\inst|evictCounter\(1) & ((\inst|cache[1].data\(10)))) # (\inst|evictCounter\(1) & (\inst|cache[3].data\(10))))) 
-- ) ) ) # ( \inst|cache[0].data\(10) & ( !\inst|cache[2].data\(10) & ( (!\inst|evictCounter\(0) & (!\inst|evictCounter\(1))) # (\inst|evictCounter\(0) & ((!\inst|evictCounter\(1) & ((\inst|cache[1].data\(10)))) # (\inst|evictCounter\(1) & 
-- (\inst|cache[3].data\(10))))) ) ) ) # ( !\inst|cache[0].data\(10) & ( !\inst|cache[2].data\(10) & ( (\inst|evictCounter\(0) & ((!\inst|evictCounter\(1) & ((\inst|cache[1].data\(10)))) # (\inst|evictCounter\(1) & (\inst|cache[3].data\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_evictCounter\(0),
	datab => \inst|ALT_INV_evictCounter\(1),
	datac => \inst|ALT_INV_cache[3].data\(10),
	datad => \inst|ALT_INV_cache[1].data\(10),
	datae => \inst|ALT_INV_cache[0].data\(10),
	dataf => \inst|ALT_INV_cache[2].data\(10),
	combout => \inst|Selector177~0_combout\);

-- Location: LABCELL_X12_Y3_N51
\inst|cache~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache~2_combout\ = ( \inst|evictCounter\(1) & ( !\inst|evictCounter\(0) & ( (\inst|cache[0].valid~DUPLICATE_q\ & (\inst|cache[2].valid~q\ & (\inst|cache[3].valid~DUPLICATE_q\ & \inst|cache[1].valid~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datac => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[1].valid~q\,
	datae => \inst|ALT_INV_evictCounter\(1),
	dataf => \inst|ALT_INV_evictCounter\(0),
	combout => \inst|cache~2_combout\);

-- Location: MLABCELL_X15_Y3_N12
\inst|cache[0].dirtyBit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].dirtyBit~1_combout\ = (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & !\inst|cpuCacheOperation.read_cache~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	combout => \inst|cache[0].dirtyBit~1_combout\);

-- Location: MLABCELL_X15_Y3_N0
\inst|cache[2].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].dirtyBit~0_combout\ = ( \inst|indexOfCache~1_combout\ & ( \inst|cache~2_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ & ((!\inst|indexOfCache~0_combout\) # (\inst|isInCache~0_combout\))) ) ) ) # ( !\inst|indexOfCache~1_combout\ & ( 
-- \inst|cache~2_combout\ & ( (\inst|isInCache~0_combout\ & \inst|cache[0].dirtyBit~1_combout\) ) ) ) # ( \inst|indexOfCache~1_combout\ & ( !\inst|cache~2_combout\ & ( (!\inst|isInCache~0_combout\ & (!\inst|indexOfCache~0_combout\ & 
-- \inst|cache[0].dirtyBit~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000000000000001100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_indexOfCache~0_combout\,
	datad => \inst|ALT_INV_cache[0].dirtyBit~1_combout\,
	datae => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_cache~2_combout\,
	combout => \inst|cache[2].dirtyBit~0_combout\);

-- Location: LABCELL_X11_Y3_N6
\inst|cache[2].dirtyBit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].dirtyBit~1_combout\ = ( \inst|cache[2].dirtyBit~0_combout\ ) # ( !\inst|cache[2].dirtyBit~0_combout\ & ( (\inst|cache[2].dirtyBit~q\ & ((!\inst|cpuCacheOperation.read_cache~q\) # ((!\inst|sdramState~q\) # (!\inst|cache~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cache~2_combout\,
	datad => \inst|ALT_INV_cache[2].dirtyBit~q\,
	dataf => \inst|ALT_INV_cache[2].dirtyBit~0_combout\,
	combout => \inst|cache[2].dirtyBit~1_combout\);

-- Location: FF_X11_Y3_N7
\inst|cache[2].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].dirtyBit~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].dirtyBit~q\);

-- Location: LABCELL_X12_Y3_N30
\inst|cache[3].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].dirtyBit~0_combout\ = ( \inst|evictCounter\(0) & ( \inst|evictCounter\(1) & ( (\inst|cache[1].valid~q\ & (\inst|cache[3].valid~DUPLICATE_q\ & (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~q\,
	datab => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[2].valid~q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|cache[3].dirtyBit~0_combout\);

-- Location: MLABCELL_X15_Y3_N33
\inst|cache[3].dirtyBit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].dirtyBit~1_combout\ = ( \inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ & ((!\inst|isInCache~0_combout\) # (\inst|cache[3].dirtyBit~0_combout\))) ) ) ) # ( 
-- !\inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (\inst|isInCache~0_combout\ & (\inst|cache[0].dirtyBit~1_combout\ & \inst|cache[3].dirtyBit~0_combout\)) ) ) ) # ( \inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( 
-- (\inst|isInCache~0_combout\ & (\inst|cache[0].dirtyBit~1_combout\ & \inst|cache[3].dirtyBit~0_combout\)) ) ) ) # ( !\inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (\inst|isInCache~0_combout\ & (\inst|cache[0].dirtyBit~1_combout\ & 
-- \inst|cache[3].dirtyBit~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_cache[0].dirtyBit~1_combout\,
	datad => \inst|ALT_INV_cache[3].dirtyBit~0_combout\,
	datae => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_indexOfCache~0_combout\,
	combout => \inst|cache[3].dirtyBit~1_combout\);

-- Location: LABCELL_X11_Y3_N39
\inst|cache[3].dirtyBit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].dirtyBit~2_combout\ = ( \inst|cache[3].dirtyBit~1_combout\ ) # ( !\inst|cache[3].dirtyBit~1_combout\ & ( (\inst|cache[3].dirtyBit~q\ & ((!\inst|cpuCacheOperation.read_cache~q\) # ((!\inst|sdramState~q\) # 
-- (!\inst|cache[3].dirtyBit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cache[3].dirtyBit~0_combout\,
	datad => \inst|ALT_INV_cache[3].dirtyBit~q\,
	dataf => \inst|ALT_INV_cache[3].dirtyBit~1_combout\,
	combout => \inst|cache[3].dirtyBit~2_combout\);

-- Location: FF_X11_Y3_N41
\inst|cache[3].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].dirtyBit~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].dirtyBit~q\);

-- Location: LABCELL_X12_Y3_N42
\inst|cache[0].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].dirtyBit~0_combout\ = ( !\inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[1].valid~q\ & (\inst|cache[3].valid~DUPLICATE_q\ & (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[2].valid~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~q\,
	datab => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[2].valid~q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|cache[0].dirtyBit~0_combout\);

-- Location: MLABCELL_X15_Y3_N18
\inst|cache[0].dirtyBit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].dirtyBit~2_combout\ = ( \inst|indexOfCache~0_combout\ & ( \inst|indexOfCache~1_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ & (\inst|cache[0].dirtyBit~0_combout\ & \inst|isInCache~0_combout\)) ) ) ) # ( !\inst|indexOfCache~0_combout\ & 
-- ( \inst|indexOfCache~1_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ & (\inst|cache[0].dirtyBit~0_combout\ & \inst|isInCache~0_combout\)) ) ) ) # ( \inst|indexOfCache~0_combout\ & ( !\inst|indexOfCache~1_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ 
-- & (\inst|cache[0].dirtyBit~0_combout\ & \inst|isInCache~0_combout\)) ) ) ) # ( !\inst|indexOfCache~0_combout\ & ( !\inst|indexOfCache~1_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ & ((!\inst|isInCache~0_combout\) # 
-- (\inst|cache[0].dirtyBit~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cache[0].dirtyBit~1_combout\,
	datac => \inst|ALT_INV_cache[0].dirtyBit~0_combout\,
	datad => \inst|ALT_INV_isInCache~0_combout\,
	datae => \inst|ALT_INV_indexOfCache~0_combout\,
	dataf => \inst|ALT_INV_indexOfCache~1_combout\,
	combout => \inst|cache[0].dirtyBit~2_combout\);

-- Location: LABCELL_X11_Y3_N36
\inst|cache[0].dirtyBit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].dirtyBit~3_combout\ = ( \inst|cache[0].dirtyBit~2_combout\ ) # ( !\inst|cache[0].dirtyBit~2_combout\ & ( (\inst|cache[0].dirtyBit~q\ & ((!\inst|cpuCacheOperation.read_cache~q\) # ((!\inst|sdramState~q\) # 
-- (!\inst|cache[0].dirtyBit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cache[0].dirtyBit~0_combout\,
	datad => \inst|ALT_INV_cache[0].dirtyBit~q\,
	dataf => \inst|ALT_INV_cache[0].dirtyBit~2_combout\,
	combout => \inst|cache[0].dirtyBit~3_combout\);

-- Location: FF_X11_Y3_N38
\inst|cache[0].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].dirtyBit~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].dirtyBit~q\);

-- Location: LABCELL_X12_Y3_N48
\inst|cache~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache~1_combout\ = ( \inst|evictCounter\(0) & ( !\inst|evictCounter\(1) & ( (\inst|cache[0].valid~DUPLICATE_q\ & (\inst|cache[2].valid~q\ & (\inst|cache[1].valid~q\ & \inst|cache[3].valid~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datac => \inst|ALT_INV_cache[1].valid~q\,
	datad => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datae => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_evictCounter\(1),
	combout => \inst|cache~1_combout\);

-- Location: MLABCELL_X15_Y3_N15
\inst|cache[1].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].dirtyBit~0_combout\ = ( \inst|indexOfCache~1_combout\ & ( (\inst|cache~1_combout\ & (\inst|isInCache~0_combout\ & \inst|cache[0].dirtyBit~1_combout\)) ) ) # ( !\inst|indexOfCache~1_combout\ & ( (\inst|cache[0].dirtyBit~1_combout\ & 
-- ((!\inst|isInCache~0_combout\ & ((\inst|indexOfCache~0_combout\))) # (\inst|isInCache~0_combout\ & (\inst|cache~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache~1_combout\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_cache[0].dirtyBit~1_combout\,
	datad => \inst|ALT_INV_indexOfCache~0_combout\,
	dataf => \inst|ALT_INV_indexOfCache~1_combout\,
	combout => \inst|cache[1].dirtyBit~0_combout\);

-- Location: LABCELL_X11_Y3_N9
\inst|cache[1].dirtyBit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].dirtyBit~1_combout\ = ( \inst|cache[1].dirtyBit~0_combout\ ) # ( !\inst|cache[1].dirtyBit~0_combout\ & ( (\inst|cache[1].dirtyBit~q\ & ((!\inst|cpuCacheOperation.read_cache~q\) # ((!\inst|sdramState~q\) # (!\inst|cache~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cache~1_combout\,
	datad => \inst|ALT_INV_cache[1].dirtyBit~q\,
	dataf => \inst|ALT_INV_cache[1].dirtyBit~0_combout\,
	combout => \inst|cache[1].dirtyBit~1_combout\);

-- Location: FF_X11_Y3_N11
\inst|cache[1].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].dirtyBit~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].dirtyBit~q\);

-- Location: LABCELL_X11_Y3_N0
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst|evictCounter\(1) & ( \inst|evictCounter\(0) & ( \inst|cache[3].dirtyBit~q\ ) ) ) # ( !\inst|evictCounter\(1) & ( \inst|evictCounter\(0) & ( \inst|cache[1].dirtyBit~q\ ) ) ) # ( \inst|evictCounter\(1) & ( 
-- !\inst|evictCounter\(0) & ( \inst|cache[2].dirtyBit~q\ ) ) ) # ( !\inst|evictCounter\(1) & ( !\inst|evictCounter\(0) & ( \inst|cache[0].dirtyBit~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[2].dirtyBit~q\,
	datab => \inst|ALT_INV_cache[3].dirtyBit~q\,
	datac => \inst|ALT_INV_cache[0].dirtyBit~q\,
	datad => \inst|ALT_INV_cache[1].dirtyBit~q\,
	datae => \inst|ALT_INV_evictCounter\(1),
	dataf => \inst|ALT_INV_evictCounter\(0),
	combout => \inst|Mux3~0_combout\);

-- Location: LABCELL_X18_Y3_N6
\inst|Sdram_data_out[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Sdram_data_out[10]~0_combout\ = ( \inst|isInCache~0_combout\ & ( \inst|Mux3~0_combout\ & ( (\inst|evictCounter[0]~0_combout\ & (\inst|isCacheFull~0_combout\ & !\reset~input_o\)) ) ) ) # ( !\inst|isInCache~0_combout\ & ( \inst|Mux3~0_combout\ & ( 
-- (\inst|evictCounter[0]~0_combout\ & (!\inst|cpuCacheOperation.write_cache~q\ & (\inst|isCacheFull~0_combout\ & !\reset~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_evictCounter[0]~0_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datac => \inst|ALT_INV_isCacheFull~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \inst|ALT_INV_isInCache~0_combout\,
	dataf => \inst|ALT_INV_Mux3~0_combout\,
	combout => \inst|Sdram_data_out[10]~0_combout\);

-- Location: FF_X18_Y3_N2
\inst|Sdram_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector177~0_combout\,
	ena => \inst|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Sdram_data_out\(10));

-- Location: LABCELL_X18_Y3_N24
\inst|Sdram_addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Sdram_addr[0]~0_combout\ = ( \inst|cpuCacheOperation.write_cache~q\ & ( \inst|Mux3~0_combout\ & ( (!\inst|cpuCacheOperation.read_cache~q\ & (((\inst|isInCache~0_combout\ & \inst|isCacheFull~0_combout\)))) # (\inst|cpuCacheOperation.read_cache~q\ & 
-- ((!\inst|sdramState~q\ & (\inst|isInCache~0_combout\)) # (\inst|sdramState~q\ & ((\inst|isCacheFull~0_combout\))))) ) ) ) # ( !\inst|cpuCacheOperation.write_cache~q\ & ( \inst|Mux3~0_combout\ & ( (\inst|cpuCacheOperation.read_cache~q\ & 
-- ((!\inst|sdramState~q\ & (\inst|isInCache~0_combout\)) # (\inst|sdramState~q\ & ((\inst|isCacheFull~0_combout\))))) ) ) ) # ( \inst|cpuCacheOperation.write_cache~q\ & ( !\inst|Mux3~0_combout\ & ( (!\inst|sdramState~q\ & 
-- (\inst|cpuCacheOperation.read_cache~q\ & \inst|isInCache~0_combout\)) ) ) ) # ( !\inst|cpuCacheOperation.write_cache~q\ & ( !\inst|Mux3~0_combout\ & ( (!\inst|sdramState~q\ & (\inst|cpuCacheOperation.read_cache~q\ & \inst|isInCache~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000100110000001000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_isInCache~0_combout\,
	datad => \inst|ALT_INV_isCacheFull~0_combout\,
	datae => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst|ALT_INV_Mux3~0_combout\,
	combout => \inst|Sdram_addr[0]~0_combout\);

-- Location: FF_X13_Y3_N34
\inst|cache[3].address[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].address[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].address[0]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y3_N21
\inst|Sdram_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Sdram_addr[0]~1_combout\ = ( \inst|indexOfCache~0_combout\ & ( ((!\inst|cpuCacheOperation.write_cache~q\ & !\inst|sdramState~q\)) # (\inst|evictCounter\(0)) ) ) # ( !\inst|indexOfCache~0_combout\ & ( (\inst|evictCounter\(0) & ((\inst|sdramState~q\) 
-- # (\inst|cpuCacheOperation.write_cache~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datac => \inst|ALT_INV_evictCounter\(0),
	datad => \inst|ALT_INV_sdramState~q\,
	dataf => \inst|ALT_INV_indexOfCache~0_combout\,
	combout => \inst|Sdram_addr[0]~1_combout\);

-- Location: LABCELL_X13_Y3_N18
\inst|Sdram_addr[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Sdram_addr[0]~2_combout\ = ( \inst|indexOfCache~1_combout\ & ( ((!\inst|cpuCacheOperation.write_cache~q\ & !\inst|sdramState~q\)) # (\inst|evictCounter\(1)) ) ) # ( !\inst|indexOfCache~1_combout\ & ( (\inst|evictCounter\(1) & ((\inst|sdramState~q\) 
-- # (\inst|cpuCacheOperation.write_cache~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datac => \inst|ALT_INV_evictCounter\(1),
	datad => \inst|ALT_INV_sdramState~q\,
	dataf => \inst|ALT_INV_indexOfCache~1_combout\,
	combout => \inst|Sdram_addr[0]~2_combout\);

-- Location: LABCELL_X13_Y3_N45
\inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = ( \inst|Sdram_addr[0]~1_combout\ & ( \inst|Sdram_addr[0]~2_combout\ & ( \inst|cache[3].address[0]~DUPLICATE_q\ ) ) ) # ( !\inst|Sdram_addr[0]~1_combout\ & ( \inst|Sdram_addr[0]~2_combout\ & ( \inst|cache[2].address\(0) ) ) ) # 
-- ( \inst|Sdram_addr[0]~1_combout\ & ( !\inst|Sdram_addr[0]~2_combout\ & ( \inst|cache[1].address\(0) ) ) ) # ( !\inst|Sdram_addr[0]~1_combout\ & ( !\inst|Sdram_addr[0]~2_combout\ & ( \inst|cache[0].address\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].address\(0),
	datab => \inst|ALT_INV_cache[2].address\(0),
	datac => \inst|ALT_INV_cache[3].address[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[1].address\(0),
	datae => \inst|ALT_INV_Sdram_addr[0]~1_combout\,
	dataf => \inst|ALT_INV_Sdram_addr[0]~2_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LABCELL_X18_Y3_N30
\inst|Sdram_addr[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Sdram_addr[0]~3_combout\ = ( \inst|Sdram_addr\(0) & ( \inst|Selector4~0_combout\ ) ) # ( !\inst|Sdram_addr\(0) & ( \inst|Selector4~0_combout\ & ( (!\reset~input_o\ & \inst|Sdram_addr[0]~0_combout\) ) ) ) # ( \inst|Sdram_addr\(0) & ( 
-- !\inst|Selector4~0_combout\ & ( (!\inst|Sdram_addr[0]~0_combout\) # (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100001100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \inst|ALT_INV_Sdram_addr[0]~0_combout\,
	datae => \inst|ALT_INV_Sdram_addr\(0),
	dataf => \inst|ALT_INV_Selector4~0_combout\,
	combout => \inst|Sdram_addr[0]~3_combout\);

-- Location: FF_X18_Y3_N32
\inst|Sdram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Sdram_addr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Sdram_addr\(0));

-- Location: LABCELL_X18_Y3_N39
\inst|Selector155~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector155~0_combout\ = ( \inst|sdramState~q\ & ( (\inst|isCacheFull~0_combout\ & (\inst|Mux3~0_combout\ & ((\inst|Selector7~0_combout\) # (\inst|cpuCacheOperation.read_cache~q\)))) ) ) # ( !\inst|sdramState~q\ & ( (\inst|isCacheFull~0_combout\ & 
-- (\inst|Mux3~0_combout\ & \inst|Selector7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isCacheFull~0_combout\,
	datab => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datac => \inst|ALT_INV_Mux3~0_combout\,
	datad => \inst|ALT_INV_Selector7~0_combout\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|Selector155~0_combout\);

-- Location: FF_X18_Y3_N41
\inst|write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector155~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|write_en~q\);

-- Location: LABCELL_X17_Y3_N36
\inst3|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~1_combout\ = ( \inst|write_en~q\ & ( !\inst|Sdram_addr\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Sdram_addr\(0),
	dataf => \inst|ALT_INV_write_en~q\,
	combout => \inst3|Decoder0~1_combout\);

-- Location: FF_X17_Y3_N50
\inst3|memory[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Sdram_data_out\(10),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][10]~q\);

-- Location: LABCELL_X18_Y3_N51
\inst3|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~0_combout\ = ( \inst|Sdram_addr\(0) & ( \inst|write_en~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_write_en~q\,
	dataf => \inst|ALT_INV_Sdram_addr\(0),
	combout => \inst3|Decoder0~0_combout\);

-- Location: FF_X18_Y3_N53
\inst3|memory[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Sdram_data_out\(10),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][10]~q\);

-- Location: LABCELL_X17_Y3_N18
\inst3|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~0_combout\ = ( \inst3|memory[1][10]~q\ & ( (\inst|Sdram_addr\(0)) # (\inst3|memory[0][10]~q\) ) ) # ( !\inst3|memory[1][10]~q\ & ( (\inst3|memory[0][10]~q\ & !\inst|Sdram_addr\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_memory[0][10]~q\,
	datac => \inst|ALT_INV_Sdram_addr\(0),
	dataf => \inst3|ALT_INV_memory[1][10]~q\,
	combout => \inst3|Mux21~0_combout\);

-- Location: LABCELL_X17_Y3_N21
\inst3|data_out[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|data_out[10]~0_combout\ = ( !\inst|write_en~q\ & ( (!\reset~input_o\ & \inst|read_en~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \inst|ALT_INV_read_en~q\,
	dataf => \inst|ALT_INV_write_en~q\,
	combout => \inst3|data_out[10]~0_combout\);

-- Location: FF_X17_Y3_N20
\inst3|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|Mux21~0_combout\,
	ena => \inst3|data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out\(10));

-- Location: LABCELL_X16_Y3_N24
\inst|dataToSendToCache[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|dataToSendToCache[2]~0_combout\ = ( \inst|CurrentState.writeData~q\ ) # ( !\inst|CurrentState.writeData~q\ & ( \inst|dataToSendToCache\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_dataToSendToCache\(2),
	dataf => \inst|ALT_INV_CurrentState.writeData~q\,
	combout => \inst|dataToSendToCache[2]~0_combout\);

-- Location: FF_X16_Y3_N25
\inst|dataToSendToCache[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|dataToSendToCache[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataToSendToCache\(2));

-- Location: LABCELL_X16_Y3_N51
\inst|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = ( \inst3|data_out\(1) & ( (!\inst|cpuCacheOperation.write_cache~DUPLICATE_q\) # (\inst|dataToSendToCache\(2)) ) ) # ( !\inst3|data_out\(1) & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|dataToSendToCache\(2)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datac => \inst|ALT_INV_dataToSendToCache\(2),
	dataf => \inst3|ALT_INV_data_out\(1),
	combout => \inst|Selector42~0_combout\);

-- Location: LABCELL_X16_Y3_N21
\inst|Selector155~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector155~1_combout\ = ( \inst|sdramState~q\ & ( \inst|cpuCacheOperation.read_cache~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	dataf => \inst|ALT_INV_sdramState~q\,
	combout => \inst|Selector155~1_combout\);

-- Location: MLABCELL_X15_Y3_N54
\inst|cache[1].data[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].data[2]~1_combout\ = ( \inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (\inst|address~1_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\))) ) ) 
-- ) # ( !\inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (!\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (\inst|address~1_combout\ & (\inst|Selector155~1_combout\))) # (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & 
-- (((!\inst|isInCache~0_combout\)) # (\inst|address~1_combout\))) ) ) ) # ( \inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (\inst|address~1_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # 
-- (\inst|Selector155~1_combout\))) ) ) ) # ( !\inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (\inst|address~1_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # 
-- (\inst|Selector155~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001101010111000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_address~1_combout\,
	datac => \inst|ALT_INV_Selector155~1_combout\,
	datad => \inst|ALT_INV_isInCache~0_combout\,
	datae => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_indexOfCache~0_combout\,
	combout => \inst|cache[1].data[2]~1_combout\);

-- Location: FF_X15_Y3_N55
\inst|cache[1].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector42~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[1].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].data\(1));

-- Location: MLABCELL_X15_Y3_N36
\inst|cache[2].data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].data[1]~1_combout\ = ( \inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (\inst|address~2_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\))) ) ) 
-- ) # ( !\inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (\inst|address~2_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\))) ) ) ) # ( 
-- \inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (!\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (((\inst|Selector155~1_combout\ & \inst|address~2_combout\)))) # (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & 
-- ((!\inst|isInCache~0_combout\) # ((\inst|address~2_combout\)))) ) ) ) # ( !\inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (\inst|address~2_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) 
-- # (\inst|Selector155~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111010001000101111100000000000111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_Selector155~1_combout\,
	datad => \inst|ALT_INV_address~2_combout\,
	datae => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_indexOfCache~0_combout\,
	combout => \inst|cache[2].data[1]~1_combout\);

-- Location: FF_X16_Y3_N43
\inst|cache[2].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector42~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[2].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].data\(1));

-- Location: MLABCELL_X15_Y3_N6
\inst|cache[3].data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].data[1]~1_combout\ = ( \inst|indexOfCache~1_combout\ & ( \inst|address~0_combout\ & ( ((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ((\inst|indexOfCache~0_combout\) # (\inst|isInCache~0_combout\)))) # (\inst|Selector155~1_combout\) ) 
-- ) ) # ( !\inst|indexOfCache~1_combout\ & ( \inst|address~0_combout\ & ( ((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\) ) ) ) # ( \inst|indexOfCache~1_combout\ & ( 
-- !\inst|address~0_combout\ & ( (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (!\inst|isInCache~0_combout\ & \inst|indexOfCache~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000011111000111110001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_isInCache~0_combout\,
	datac => \inst|ALT_INV_Selector155~1_combout\,
	datad => \inst|ALT_INV_indexOfCache~0_combout\,
	datae => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_address~0_combout\,
	combout => \inst|cache[3].data[1]~1_combout\);

-- Location: FF_X16_Y3_N1
\inst|cache[3].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector42~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[3].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].data\(1));

-- Location: MLABCELL_X15_Y3_N48
\inst|cache[0].data[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].data[2]~1_combout\ = ( \inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (!\inst|address~3_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\))) ) 
-- ) ) # ( !\inst|indexOfCache~1_combout\ & ( \inst|indexOfCache~0_combout\ & ( (!\inst|address~3_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\))) ) ) ) # ( 
-- \inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (!\inst|address~3_combout\ & (((\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & \inst|isInCache~0_combout\)) # (\inst|Selector155~1_combout\))) ) ) ) # ( 
-- !\inst|indexOfCache~1_combout\ & ( !\inst|indexOfCache~0_combout\ & ( (!\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (!\inst|address~3_combout\ & (\inst|Selector155~1_combout\))) # (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & 
-- ((!\inst|address~3_combout\) # ((!\inst|isInCache~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101001100000011000100110000001100010011000000110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datab => \inst|ALT_INV_address~3_combout\,
	datac => \inst|ALT_INV_Selector155~1_combout\,
	datad => \inst|ALT_INV_isInCache~0_combout\,
	datae => \inst|ALT_INV_indexOfCache~1_combout\,
	dataf => \inst|ALT_INV_indexOfCache~0_combout\,
	combout => \inst|cache[0].data[2]~1_combout\);

-- Location: FF_X15_Y3_N49
\inst|cache[0].data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector42~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[0].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].data\(1));

-- Location: LABCELL_X17_Y3_N42
\inst|Selector186~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector186~0_combout\ = ( \inst|evictCounter\(1) & ( \inst|cache[0].data\(1) & ( (!\inst|evictCounter\(0) & (\inst|cache[2].data\(1))) # (\inst|evictCounter\(0) & ((\inst|cache[3].data\(1)))) ) ) ) # ( !\inst|evictCounter\(1) & ( 
-- \inst|cache[0].data\(1) & ( (!\inst|evictCounter\(0)) # (\inst|cache[1].data\(1)) ) ) ) # ( \inst|evictCounter\(1) & ( !\inst|cache[0].data\(1) & ( (!\inst|evictCounter\(0) & (\inst|cache[2].data\(1))) # (\inst|evictCounter\(0) & 
-- ((\inst|cache[3].data\(1)))) ) ) ) # ( !\inst|evictCounter\(1) & ( !\inst|cache[0].data\(1) & ( (\inst|cache[1].data\(1) & \inst|evictCounter\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].data\(1),
	datab => \inst|ALT_INV_cache[2].data\(1),
	datac => \inst|ALT_INV_evictCounter\(0),
	datad => \inst|ALT_INV_cache[3].data\(1),
	datae => \inst|ALT_INV_evictCounter\(1),
	dataf => \inst|ALT_INV_cache[0].data\(1),
	combout => \inst|Selector186~0_combout\);

-- Location: FF_X18_Y3_N26
\inst|Sdram_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector186~0_combout\,
	sload => VCC,
	ena => \inst|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Sdram_data_out\(1));

-- Location: FF_X17_Y3_N38
\inst3|memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Sdram_data_out\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][1]~q\);

-- Location: LABCELL_X18_Y3_N18
\inst3|memory[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|memory[1][1]~feeder_combout\ = ( \inst|Sdram_data_out\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Sdram_data_out\(1),
	combout => \inst3|memory[1][1]~feeder_combout\);

-- Location: FF_X18_Y3_N19
\inst3|memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|memory[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][1]~q\);

-- Location: LABCELL_X17_Y3_N30
\inst3|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~0_combout\ = ( \inst3|memory[1][1]~q\ & ( (\inst3|memory[0][1]~q\) # (\inst|Sdram_addr\(0)) ) ) # ( !\inst3|memory[1][1]~q\ & ( (!\inst|Sdram_addr\(0) & \inst3|memory[0][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Sdram_addr\(0),
	datad => \inst3|ALT_INV_memory[0][1]~q\,
	dataf => \inst3|ALT_INV_memory[1][1]~q\,
	combout => \inst3|Mux30~0_combout\);

-- Location: FF_X17_Y3_N32
\inst3|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|Mux30~0_combout\,
	ena => \inst3|data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out\(1));

-- Location: LABCELL_X16_Y3_N3
\inst|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = (!\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ((\inst3|data_out\(0)))) # (\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & (\inst|dataToSendToCache\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	datac => \inst|ALT_INV_dataToSendToCache\(2),
	datad => \inst3|ALT_INV_data_out\(0),
	combout => \inst|Selector43~0_combout\);

-- Location: FF_X16_Y3_N40
\inst|cache[2].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[2].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].data\(0));

-- Location: FF_X16_Y3_N4
\inst|cache[3].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|cache[3].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].data\(0));

-- Location: FF_X15_Y3_N58
\inst|cache[1].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[1].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].data\(0));

-- Location: FF_X15_Y3_N52
\inst|cache[0].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[0].data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].data\(0));

-- Location: LABCELL_X16_Y3_N45
\inst|Selector187~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector187~0_combout\ = ( \inst|cache[0].data\(0) & ( \inst|evictCounter\(0) & ( (!\inst|evictCounter\(1) & ((\inst|cache[1].data\(0)))) # (\inst|evictCounter\(1) & (\inst|cache[3].data\(0))) ) ) ) # ( !\inst|cache[0].data\(0) & ( 
-- \inst|evictCounter\(0) & ( (!\inst|evictCounter\(1) & ((\inst|cache[1].data\(0)))) # (\inst|evictCounter\(1) & (\inst|cache[3].data\(0))) ) ) ) # ( \inst|cache[0].data\(0) & ( !\inst|evictCounter\(0) & ( (!\inst|evictCounter\(1)) # 
-- (\inst|cache[2].data\(0)) ) ) ) # ( !\inst|cache[0].data\(0) & ( !\inst|evictCounter\(0) & ( (\inst|cache[2].data\(0) & \inst|evictCounter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[2].data\(0),
	datab => \inst|ALT_INV_cache[3].data\(0),
	datac => \inst|ALT_INV_cache[1].data\(0),
	datad => \inst|ALT_INV_evictCounter\(1),
	datae => \inst|ALT_INV_cache[0].data\(0),
	dataf => \inst|ALT_INV_evictCounter\(0),
	combout => \inst|Selector187~0_combout\);

-- Location: FF_X18_Y3_N8
\inst|Sdram_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector187~0_combout\,
	sload => VCC,
	ena => \inst|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Sdram_data_out\(0));

-- Location: FF_X17_Y3_N41
\inst3|memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Sdram_data_out\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][0]~q\);

-- Location: LABCELL_X18_Y3_N36
\inst3|memory[1][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|memory[1][0]~0_combout\ = ( !\inst|Sdram_data_out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Sdram_data_out\(0),
	combout => \inst3|memory[1][0]~0_combout\);

-- Location: FF_X18_Y3_N49
\inst3|memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst3|memory[1][0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[1][0]~q\);

-- Location: LABCELL_X17_Y3_N33
\inst3|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~0_combout\ = ( \inst3|memory[1][0]~q\ & ( (\inst3|memory[0][0]~q\ & !\inst|Sdram_addr\(0)) ) ) # ( !\inst3|memory[1][0]~q\ & ( (\inst|Sdram_addr\(0)) # (\inst3|memory[0][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_memory[0][0]~q\,
	datad => \inst|ALT_INV_Sdram_addr\(0),
	dataf => \inst3|ALT_INV_memory[1][0]~q\,
	combout => \inst3|Mux31~0_combout\);

-- Location: FF_X17_Y3_N35
\inst3|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|Mux31~0_combout\,
	ena => \inst3|data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out\(0));

-- Location: FF_X18_Y3_N40
\inst|write_en~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector155~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|write_en~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N51
\inst|currentState_output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|currentState_output~0_combout\ = ( \inst|CurrentState.initial~q\ & ( !\inst|CurrentState.requestData~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_CurrentState.initial~q\,
	dataf => \inst|ALT_INV_CurrentState.requestData~q\,
	combout => \inst|currentState_output~0_combout\);

-- Location: FF_X11_Y3_N52
\inst|currentState_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|currentState_output~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|currentState_output\(1));

-- Location: FF_X11_Y3_N55
\inst|currentState_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|cpuCacheOperation~7_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|currentState_output\(0));

-- Location: LABCELL_X45_Y38_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


