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

-- DATE "10/11/2024 20:24:06"

-- 
-- Device: Altera 5CSEMA6U23C8 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
	sdram_data_fromCPU : OUT std_logic_vector(31 DOWNTO 0)
	);
END TransactionsBetweenCPU;

-- Design Ports Information
-- readfromCPU	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[31]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[30]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[29]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[28]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[27]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[26]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[25]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[24]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[23]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[22]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[21]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[20]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[19]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[18]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[17]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[16]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[15]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[14]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[12]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[11]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[10]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[9]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[8]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[7]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[4]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[3]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_sdram[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writefromCPU	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr_fromCPU[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr_fromCPU[1]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_addr_fromCPU[0]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[31]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[30]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[29]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[28]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[27]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[26]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[25]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[24]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[23]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[22]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[21]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[20]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[19]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[18]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[17]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[16]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[15]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[11]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[10]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[9]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[8]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[7]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdram_data_fromCPU[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|CurrentState.initial~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|CurrentState.initial~q\ : std_logic;
SIGNAL \inst|cache[2].valid~q\ : std_logic;
SIGNAL \inst|Selector193~0_combout\ : std_logic;
SIGNAL \inst|cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst|cache[0].valid~q\ : std_logic;
SIGNAL \inst|cache[1].valid~q\ : std_logic;
SIGNAL \inst|cache[1].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[1].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|sdramState~0_combout\ : std_logic;
SIGNAL \inst|sdramState~q\ : std_logic;
SIGNAL \inst|cache[3].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cache[0].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[0].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|hit~0_combout\ : std_logic;
SIGNAL \inst|hit~q\ : std_logic;
SIGNAL \inst|Selector191~0_combout\ : std_logic;
SIGNAL \inst|CurrentState.writeData~q\ : std_logic;
SIGNAL \inst|Selector190~0_combout\ : std_logic;
SIGNAL \inst|CurrentState.requestData~q\ : std_logic;
SIGNAL \inst|CurrentState.writeData~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Selector192~0_combout\ : std_logic;
SIGNAL \inst|cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst|cache[2].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[2].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cache[3].valid~0_combout\ : std_logic;
SIGNAL \inst|cache[3].valid~q\ : std_logic;
SIGNAL \inst|read_en~0_combout\ : std_logic;
SIGNAL \inst|read_en~q\ : std_logic;
SIGNAL \inst|cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst|cpuCacheOperation.none~0_combout\ : std_logic;
SIGNAL \inst|cpuCacheOperation.none~DUPLICATE_q\ : std_logic;
SIGNAL \inst|isCacheFull~0_combout\ : std_logic;
SIGNAL \inst|evictCounter[0]~0_combout\ : std_logic;
SIGNAL \inst|evictCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|evictCounter[1]~1_combout\ : std_logic;
SIGNAL \inst|evictCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cache[1].data[1]~1_combout\ : std_logic;
SIGNAL \inst|cache[1].data[1]~0_combout\ : std_logic;
SIGNAL \inst|cache[0].data[1]~1_combout\ : std_logic;
SIGNAL \inst|cache[0].data[1]~0_combout\ : std_logic;
SIGNAL \inst|address~0_combout\ : std_logic;
SIGNAL \inst|Selector155~0_combout\ : std_logic;
SIGNAL \inst|cache[3].data[10]~0_combout\ : std_logic;
SIGNAL \inst|cache[2].data[1]~0_combout\ : std_logic;
SIGNAL \inst|Selector82~0_combout\ : std_logic;
SIGNAL \inst|cache[2].data[1]~1_combout\ : std_logic;
SIGNAL \inst|Selector177~0_combout\ : std_logic;
SIGNAL \inst|cache[2].dirtyBit~DUPLICATE_q\ : std_logic;
SIGNAL \inst|cache[2].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[2].dirtyBit~q\ : std_logic;
SIGNAL \inst|Selector45~0_combout\ : std_logic;
SIGNAL \inst|cache[1].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[1].dirtyBit~q\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[0].dirtyBit~q\ : std_logic;
SIGNAL \inst|cache[3].dirtyBit~0_combout\ : std_logic;
SIGNAL \inst|cache[3].dirtyBit~q\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Sdram_data_out[10]~0_combout\ : std_logic;
SIGNAL \inst3|memory[0][10]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector155~1_combout\ : std_logic;
SIGNAL \inst|write_en~q\ : std_logic;
SIGNAL \inst3|memory[0][10]~q\ : std_logic;
SIGNAL \inst3|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|data_out[10]~0_combout\ : std_logic;
SIGNAL \inst|dataToSendToCache[0]~0_combout\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|Selector187~0_combout\ : std_logic;
SIGNAL \inst3|memory[0][0]~feeder_combout\ : std_logic;
SIGNAL \inst3|memory[0][0]~q\ : std_logic;
SIGNAL \inst|cache[0].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|Sdram_data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|cache[1].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|cache[2].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|cache[3].data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|dataToSendToCache\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].dirtyBit~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].dirtyBit~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].valid~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].valid~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].data[1]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].data[1]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_dataToSendToCache\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_CurrentState.initial~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].data[1]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_address~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector82~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.writeData~q\ : std_logic;
SIGNAL \inst|ALT_INV_CurrentState.requestData~q\ : std_logic;
SIGNAL \inst|ALT_INV_hit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[2].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[1].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[0].data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_isCacheFull~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.write_cache~q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.none~q\ : std_logic;
SIGNAL \inst|ALT_INV_Selector155~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_evictCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_cache[3].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].dirtyBit~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].dirtyBit~q\ : std_logic;
SIGNAL \inst3|ALT_INV_memory[0][10]~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[3].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[2].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[1].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cache[0].valid~q\ : std_logic;
SIGNAL \inst|ALT_INV_cpuCacheOperation.read_cache~q\ : std_logic;
SIGNAL \inst|ALT_INV_Sdram_data_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_write_en~q\ : std_logic;
SIGNAL \inst3|ALT_INV_data_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ALT_INV_read_en~q\ : std_logic;
SIGNAL \inst|ALT_INV_sdramState~q\ : std_logic;

BEGIN

readfromCPU <= ww_readfromCPU;
ww_clk <= clk;
ww_reset <= reset;
data_out_sdram <= ww_data_out_sdram;
writefromCPU <= ww_writefromCPU;
sdram_addr_fromCPU <= ww_sdram_addr_fromCPU;
sdram_data_fromCPU <= ww_sdram_data_fromCPU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\ <= NOT \inst|CurrentState.writeData~DUPLICATE_q\;
\inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\ <= NOT \inst|cpuCacheOperation.write_cache~DUPLICATE_q\;
\inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\ <= NOT \inst|cpuCacheOperation.none~DUPLICATE_q\;
\inst|ALT_INV_evictCounter[1]~DUPLICATE_q\ <= NOT \inst|evictCounter[1]~DUPLICATE_q\;
\inst|ALT_INV_evictCounter[0]~DUPLICATE_q\ <= NOT \inst|evictCounter[0]~DUPLICATE_q\;
\inst|ALT_INV_cache[2].dirtyBit~DUPLICATE_q\ <= NOT \inst|cache[2].dirtyBit~DUPLICATE_q\;
\inst|ALT_INV_cache[0].dirtyBit~DUPLICATE_q\ <= NOT \inst|cache[0].dirtyBit~DUPLICATE_q\;
\inst|ALT_INV_cache[3].valid~DUPLICATE_q\ <= NOT \inst|cache[3].valid~DUPLICATE_q\;
\inst|ALT_INV_cache[2].valid~DUPLICATE_q\ <= NOT \inst|cache[2].valid~DUPLICATE_q\;
\inst|ALT_INV_cache[1].valid~DUPLICATE_q\ <= NOT \inst|cache[1].valid~DUPLICATE_q\;
\inst|ALT_INV_cache[0].valid~DUPLICATE_q\ <= NOT \inst|cache[0].valid~DUPLICATE_q\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst|ALT_INV_cache[1].data[1]~1_combout\ <= NOT \inst|cache[1].data[1]~1_combout\;
\inst|ALT_INV_cache[0].data[1]~1_combout\ <= NOT \inst|cache[0].data[1]~1_combout\;
\inst|ALT_INV_dataToSendToCache\(0) <= NOT \inst|dataToSendToCache\(0);
\inst|ALT_INV_CurrentState.initial~q\ <= NOT \inst|CurrentState.initial~q\;
\inst|ALT_INV_cache[2].data[1]~0_combout\ <= NOT \inst|cache[2].data[1]~0_combout\;
\inst|ALT_INV_address~0_combout\ <= NOT \inst|address~0_combout\;
\inst|ALT_INV_Selector82~0_combout\ <= NOT \inst|Selector82~0_combout\;
\inst|ALT_INV_Selector45~0_combout\ <= NOT \inst|Selector45~0_combout\;
\inst|ALT_INV_Selector8~0_combout\ <= NOT \inst|Selector8~0_combout\;
\inst|ALT_INV_CurrentState.writeData~q\ <= NOT \inst|CurrentState.writeData~q\;
\inst|ALT_INV_CurrentState.requestData~q\ <= NOT \inst|CurrentState.requestData~q\;
\inst|ALT_INV_hit~q\ <= NOT \inst|hit~q\;
\inst|ALT_INV_cache[3].data\(0) <= NOT \inst|cache[3].data\(0);
\inst|ALT_INV_cache[2].data\(0) <= NOT \inst|cache[2].data\(0);
\inst|ALT_INV_cache[1].data\(0) <= NOT \inst|cache[1].data\(0);
\inst|ALT_INV_cache[0].data\(0) <= NOT \inst|cache[0].data\(0);
\inst|ALT_INV_isCacheFull~0_combout\ <= NOT \inst|isCacheFull~0_combout\;
\inst|ALT_INV_cpuCacheOperation.write_cache~q\ <= NOT \inst|cpuCacheOperation.write_cache~q\;
\inst|ALT_INV_cpuCacheOperation.none~q\ <= NOT \inst|cpuCacheOperation.none~q\;
\inst|ALT_INV_cache[3].data\(10) <= NOT \inst|cache[3].data\(10);
\inst|ALT_INV_cache[2].data\(10) <= NOT \inst|cache[2].data\(10);
\inst|ALT_INV_cache[1].data\(10) <= NOT \inst|cache[1].data\(10);
\inst|ALT_INV_cache[0].data\(10) <= NOT \inst|cache[0].data\(10);
\inst|ALT_INV_Selector155~0_combout\ <= NOT \inst|Selector155~0_combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst|ALT_INV_evictCounter\(1) <= NOT \inst|evictCounter\(1);
\inst|ALT_INV_evictCounter\(0) <= NOT \inst|evictCounter\(0);
\inst|ALT_INV_cache[3].dirtyBit~q\ <= NOT \inst|cache[3].dirtyBit~q\;
\inst|ALT_INV_cache[2].dirtyBit~q\ <= NOT \inst|cache[2].dirtyBit~q\;
\inst|ALT_INV_cache[1].dirtyBit~q\ <= NOT \inst|cache[1].dirtyBit~q\;
\inst|ALT_INV_cache[0].dirtyBit~q\ <= NOT \inst|cache[0].dirtyBit~q\;
\inst3|ALT_INV_memory[0][10]~q\ <= NOT \inst3|memory[0][10]~q\;
\inst|ALT_INV_cache[3].valid~q\ <= NOT \inst|cache[3].valid~q\;
\inst|ALT_INV_cache[2].valid~q\ <= NOT \inst|cache[2].valid~q\;
\inst|ALT_INV_cache[1].valid~q\ <= NOT \inst|cache[1].valid~q\;
\inst|ALT_INV_cache[0].valid~q\ <= NOT \inst|cache[0].valid~q\;
\inst|ALT_INV_cpuCacheOperation.read_cache~q\ <= NOT \inst|cpuCacheOperation.read_cache~q\;
\inst|ALT_INV_Sdram_data_out\(0) <= NOT \inst|Sdram_data_out\(0);
\inst|ALT_INV_Sdram_data_out\(10) <= NOT \inst|Sdram_data_out\(10);
\inst|ALT_INV_write_en~q\ <= NOT \inst|write_en~q\;
\inst3|ALT_INV_data_out\(0) <= NOT \inst3|data_out\(0);
\inst3|ALT_INV_data_out\(10) <= NOT \inst3|data_out\(10);
\inst|ALT_INV_read_en~q\ <= NOT \inst|read_en~q\;
\inst|ALT_INV_sdramState~q\ <= NOT \inst|sdramState~q\;

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N42
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

-- Location: IOOBUF_X80_Y0_N53
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

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X76_Y0_N2
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X82_Y0_N76
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X50_Y0_N59
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X86_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X74_Y0_N76
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

-- Location: IOOBUF_X89_Y4_N62
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X76_Y0_N53
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

-- Location: IOOBUF_X86_Y0_N2
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

-- Location: IOOBUF_X80_Y0_N36
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

-- Location: IOOBUF_X86_Y0_N53
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

-- Location: IOOBUF_X34_Y0_N59
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

-- Location: IOOBUF_X86_Y0_N19
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X32_Y0_N36
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

-- Location: IOOBUF_X2_Y0_N76
\data_out_sdram[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(0),
	devoe => ww_devoe,
	o => ww_data_out_sdram(2));

-- Location: IOOBUF_X4_Y0_N53
\data_out_sdram[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|data_out\(0),
	devoe => ww_devoe,
	o => ww_data_out_sdram(1));

-- Location: IOOBUF_X2_Y0_N59
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

-- Location: IOOBUF_X8_Y0_N2
\writefromCPU~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|write_en~q\,
	devoe => ww_devoe,
	o => ww_writefromCPU);

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X89_Y25_N5
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

-- Location: IOOBUF_X89_Y6_N39
\sdram_addr_fromCPU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sdram_addr_fromCPU(0));

-- Location: IOOBUF_X56_Y0_N36
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X34_Y0_N93
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

-- Location: IOOBUF_X56_Y0_N19
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N53
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N76
\sdram_data_fromCPU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(0),
	devoe => ww_devoe,
	o => ww_sdram_data_fromCPU(2));

-- Location: IOOBUF_X26_Y0_N59
\sdram_data_fromCPU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sdram_data_out\(0),
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

-- Location: FF_X11_Y3_N26
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

-- Location: FF_X9_Y3_N19
\inst|cache[2].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].valid~q\);

-- Location: LABCELL_X11_Y3_N27
\inst|Selector193~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector193~0_combout\ = ( \inst|hit~q\ & ( (!\inst|CurrentState.initial~q\) # (\inst|CurrentState.requestData~q\) ) ) # ( !\inst|hit~q\ & ( (!\inst|CurrentState.initial~q\) # ((\inst|CurrentState.requestData~q\ & 
-- \inst|cpuCacheOperation.write_cache~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_CurrentState.initial~q\,
	datac => \inst|ALT_INV_CurrentState.requestData~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst|ALT_INV_hit~q\,
	combout => \inst|Selector193~0_combout\);

-- Location: FF_X11_Y3_N29
\inst|cpuCacheOperation.write_cache\ : dffeas
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
	q => \inst|cpuCacheOperation.write_cache~q\);

-- Location: FF_X10_Y3_N58
\inst|cache[0].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].valid~q\);

-- Location: FF_X10_Y3_N2
\inst|cache[1].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].valid~q\);

-- Location: LABCELL_X10_Y3_N0
\inst|cache[1].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].valid~0_combout\ = ( \inst|cache[1].valid~q\ & ( \inst|cpuCacheOperation.read_cache~q\ ) ) # ( !\inst|cache[1].valid~q\ & ( \inst|cpuCacheOperation.read_cache~q\ & ( (\inst|cache[0].valid~DUPLICATE_q\ & \inst|sdramState~q\) ) ) ) # ( 
-- \inst|cache[1].valid~q\ & ( !\inst|cpuCacheOperation.read_cache~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datae => \inst|ALT_INV_cache[1].valid~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	combout => \inst|cache[1].valid~0_combout\);

-- Location: FF_X10_Y3_N1
\inst|cache[1].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].valid~DUPLICATE_q\);

-- Location: LABCELL_X9_Y3_N39
\inst|sdramState~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|sdramState~0_combout\ = ( \inst|sdramState~q\ & ( \inst|cache[1].valid~DUPLICATE_q\ ) ) # ( \inst|sdramState~q\ & ( !\inst|cache[1].valid~DUPLICATE_q\ ) ) # ( !\inst|sdramState~q\ & ( !\inst|cache[1].valid~DUPLICATE_q\ & ( (!\inst|cache[3].valid~q\ 
-- & (!\inst|cache[2].valid~q\ & !\inst|cache[0].valid~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~q\,
	datac => \inst|ALT_INV_cache[2].valid~q\,
	datad => \inst|ALT_INV_cache[0].valid~q\,
	datae => \inst|ALT_INV_sdramState~q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	combout => \inst|sdramState~0_combout\);

-- Location: FF_X9_Y3_N41
\inst|sdramState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|sdramState~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|sdramState~q\,
	ena => \inst|cpuCacheOperation.read_cache~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sdramState~q\);

-- Location: FF_X9_Y3_N49
\inst|cache[3].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].valid~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N57
\inst|cache[0].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].valid~0_combout\ = ( !\inst|cpuCacheOperation.read_cache~q\ & ( ((\inst|cpuCacheOperation.write_cache~q\ & (!\inst|cache[2].valid~q\ & (!\inst|cache[3].valid~DUPLICATE_q\ & !\inst|cache[1].valid~DUPLICATE_q\)))) # (\inst|cache[0].valid~q\) 
-- ) ) # ( \inst|cpuCacheOperation.read_cache~q\ & ( ((((\inst|cache[0].valid~q\)) # (\inst|sdramState~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100000011111111000011111111111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_cache[0].valid~q\,
	datae => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	datag => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	combout => \inst|cache[0].valid~0_combout\);

-- Location: FF_X10_Y3_N59
\inst|cache[0].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].valid~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N24
\inst|hit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|hit~0_combout\ = ( \inst|cpuCacheOperation.read_cache~q\ & ( \inst|cache[1].valid~DUPLICATE_q\ ) ) # ( \inst|cpuCacheOperation.read_cache~q\ & ( !\inst|cache[1].valid~DUPLICATE_q\ & ( (((\inst|sdramState~q\) # (\inst|cache[3].valid~q\)) # 
-- (\inst|cache[0].valid~DUPLICATE_q\)) # (\inst|cache[2].valid~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[2].valid~q\,
	datab => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[3].valid~q\,
	datad => \inst|ALT_INV_sdramState~q\,
	datae => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	combout => \inst|hit~0_combout\);

-- Location: FF_X10_Y3_N25
\inst|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|hit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|hit~q\);

-- Location: LABCELL_X11_Y3_N30
\inst|Selector191~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector191~0_combout\ = ( \inst|hit~q\ & ( (!\inst|CurrentState.initial~q\) # (\inst|CurrentState.requestData~q\) ) ) # ( !\inst|hit~q\ & ( !\inst|CurrentState.initial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_CurrentState.requestData~q\,
	datac => \inst|ALT_INV_CurrentState.initial~q\,
	dataf => \inst|ALT_INV_hit~q\,
	combout => \inst|Selector191~0_combout\);

-- Location: FF_X11_Y3_N31
\inst|CurrentState.writeData\ : dffeas
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
	q => \inst|CurrentState.writeData~q\);

-- Location: LABCELL_X11_Y3_N6
\inst|Selector190~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector190~0_combout\ = ( \inst|hit~q\ & ( \inst|CurrentState.writeData~q\ ) ) # ( !\inst|hit~q\ & ( (\inst|CurrentState.requestData~q\) # (\inst|CurrentState.writeData~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_CurrentState.writeData~q\,
	datad => \inst|ALT_INV_CurrentState.requestData~q\,
	dataf => \inst|ALT_INV_hit~q\,
	combout => \inst|Selector190~0_combout\);

-- Location: FF_X11_Y3_N8
\inst|CurrentState.requestData\ : dffeas
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
	q => \inst|CurrentState.requestData~q\);

-- Location: FF_X11_Y3_N32
\inst|CurrentState.writeData~DUPLICATE\ : dffeas
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
	q => \inst|CurrentState.writeData~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N33
\inst|Selector192~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector192~0_combout\ = ( \inst|hit~q\ & ( \inst|CurrentState.writeData~DUPLICATE_q\ ) ) # ( !\inst|hit~q\ & ( ((\inst|CurrentState.requestData~q\ & \inst|cpuCacheOperation.read_cache~q\)) # (\inst|CurrentState.writeData~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_CurrentState.requestData~q\,
	datac => \inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	dataf => \inst|ALT_INV_hit~q\,
	combout => \inst|Selector192~0_combout\);

-- Location: FF_X11_Y3_N35
\inst|cpuCacheOperation.read_cache\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Selector192~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cpuCacheOperation.read_cache~q\);

-- Location: LABCELL_X9_Y3_N18
\inst|cache[2].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].valid~0_combout\ = ( \inst|cache[2].valid~q\ & ( \inst|cache[1].valid~DUPLICATE_q\ ) ) # ( !\inst|cache[2].valid~q\ & ( \inst|cache[1].valid~DUPLICATE_q\ & ( (\inst|cpuCacheOperation.read_cache~q\ & (\inst|sdramState~q\ & 
-- \inst|cache[0].valid~q\)) ) ) ) # ( \inst|cache[2].valid~q\ & ( !\inst|cache[1].valid~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cache[0].valid~q\,
	datae => \inst|ALT_INV_cache[2].valid~q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	combout => \inst|cache[2].valid~0_combout\);

-- Location: FF_X9_Y3_N20
\inst|cache[2].valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].valid~DUPLICATE_q\);

-- Location: LABCELL_X9_Y3_N48
\inst|cache[3].valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].valid~0_combout\ = ( \inst|cache[3].valid~q\ & ( \inst|cache[1].valid~DUPLICATE_q\ ) ) # ( !\inst|cache[3].valid~q\ & ( \inst|cache[1].valid~DUPLICATE_q\ & ( (\inst|cache[2].valid~DUPLICATE_q\ & (\inst|sdramState~q\ & 
-- (\inst|cache[0].valid~q\ & \inst|cpuCacheOperation.read_cache~q\))) ) ) ) # ( \inst|cache[3].valid~q\ & ( !\inst|cache[1].valid~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[2].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cache[0].valid~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[3].valid~q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	combout => \inst|cache[3].valid~0_combout\);

-- Location: FF_X9_Y3_N50
\inst|cache[3].valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].valid~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].valid~q\);

-- Location: LABCELL_X9_Y3_N57
\inst|read_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|read_en~0_combout\ = ( !\inst|cache[0].valid~q\ & ( !\inst|cache[1].valid~DUPLICATE_q\ & ( (!\inst|cache[3].valid~q\ & (!\inst|cache[2].valid~q\ & (!\inst|sdramState~q\ & \inst|cpuCacheOperation.read_cache~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~q\,
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[0].valid~q\,
	dataf => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	combout => \inst|read_en~0_combout\);

-- Location: FF_X9_Y3_N59
\inst|read_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|read_en~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_en~q\);

-- Location: FF_X11_Y3_N58
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

-- Location: LABCELL_X11_Y3_N57
\inst|cpuCacheOperation.none~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cpuCacheOperation.none~0_combout\ = ( \inst|hit~q\ ) # ( !\inst|hit~q\ & ( (!\inst|CurrentState.requestData~q\) # (\inst|cpuCacheOperation.none~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_CurrentState.requestData~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.none~q\,
	dataf => \inst|ALT_INV_hit~q\,
	combout => \inst|cpuCacheOperation.none~0_combout\);

-- Location: FF_X11_Y3_N59
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

-- Location: FF_X10_Y3_N23
\inst|evictCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|evictCounter[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|evictCounter\(0));

-- Location: LABCELL_X9_Y3_N45
\inst|isCacheFull~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|isCacheFull~0_combout\ = ( \inst|cache[2].valid~DUPLICATE_q\ & ( (\inst|cache[3].valid~q\ & (\inst|cache[0].valid~DUPLICATE_q\ & \inst|cache[1].valid~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~q\,
	datab => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cache[2].valid~DUPLICATE_q\,
	combout => \inst|isCacheFull~0_combout\);

-- Location: LABCELL_X10_Y3_N21
\inst|evictCounter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|evictCounter[0]~0_combout\ = ( \inst|isCacheFull~0_combout\ & ( !\inst|evictCounter\(0) $ ((((!\inst|sdramState~q\) # (!\inst|cpuCacheOperation.none~DUPLICATE_q\)) # (\inst|cpuCacheOperation.write_cache~q\))) ) ) # ( !\inst|isCacheFull~0_combout\ & 
-- ( \inst|evictCounter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111111010000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datab => \inst|ALT_INV_sdramState~q\,
	datac => \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\,
	datad => \inst|ALT_INV_evictCounter\(0),
	dataf => \inst|ALT_INV_isCacheFull~0_combout\,
	combout => \inst|evictCounter[0]~0_combout\);

-- Location: FF_X10_Y3_N22
\inst|evictCounter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|evictCounter[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|evictCounter[0]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N48
\inst|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = ( \inst3|data_out\(10) & ( !\inst|cpuCacheOperation.write_cache~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst3|ALT_INV_data_out\(10),
	combout => \inst|Selector33~0_combout\);

-- Location: FF_X10_Y3_N44
\inst|evictCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|evictCounter[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|evictCounter\(1));

-- Location: LABCELL_X10_Y3_N42
\inst|evictCounter[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|evictCounter[1]~1_combout\ = ( \inst|evictCounter\(1) & ( \inst|isCacheFull~0_combout\ & ( ((!\inst|evictCounter[0]~DUPLICATE_q\) # ((!\inst|sdramState~q\) # (!\inst|cpuCacheOperation.none~DUPLICATE_q\))) # (\inst|cpuCacheOperation.write_cache~q\) ) 
-- ) ) # ( !\inst|evictCounter\(1) & ( \inst|isCacheFull~0_combout\ & ( (!\inst|cpuCacheOperation.write_cache~q\ & (\inst|evictCounter[0]~DUPLICATE_q\ & (\inst|sdramState~q\ & \inst|cpuCacheOperation.none~DUPLICATE_q\))) ) ) ) # ( \inst|evictCounter\(1) & ( 
-- !\inst|isCacheFull~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datab => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.none~DUPLICATE_q\,
	datae => \inst|ALT_INV_evictCounter\(1),
	dataf => \inst|ALT_INV_isCacheFull~0_combout\,
	combout => \inst|evictCounter[1]~1_combout\);

-- Location: FF_X10_Y3_N43
\inst|evictCounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|evictCounter[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|evictCounter[1]~DUPLICATE_q\);

-- Location: FF_X11_Y3_N28
\inst|cpuCacheOperation.write_cache~DUPLICATE\ : dffeas
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
	q => \inst|cpuCacheOperation.write_cache~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N9
\inst|cache[1].data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].data[1]~1_combout\ = ( \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( (!\inst|cache[2].valid~DUPLICATE_q\ & (((!\inst|cache[3].valid~DUPLICATE_q\)))) # (\inst|cache[2].valid~DUPLICATE_q\ & (\inst|evictCounter[0]~DUPLICATE_q\ & 
-- (!\inst|evictCounter[1]~DUPLICATE_q\ & \inst|cache[3].valid~DUPLICATE_q\))) ) ) # ( !\inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( (\inst|evictCounter[0]~DUPLICATE_q\ & (!\inst|evictCounter[1]~DUPLICATE_q\ & (\inst|cache[2].valid~DUPLICATE_q\ & 
-- \inst|cache[3].valid~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011110000000001001111000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[2].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	combout => \inst|cache[1].data[1]~1_combout\);

-- Location: LABCELL_X11_Y3_N3
\inst|cache[1].data[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].data[1]~0_combout\ = ( \inst|cache[2].valid~q\ & ( \inst|cache[1].data[1]~1_combout\ & ( (\inst|cache[0].valid~q\ & (\inst|sdramState~q\ & \inst|cpuCacheOperation.read_cache~q\)) ) ) ) # ( !\inst|cache[2].valid~q\ & ( 
-- \inst|cache[1].data[1]~1_combout\ & ( ((\inst|cache[0].valid~q\ & (\inst|sdramState~q\ & \inst|cpuCacheOperation.read_cache~q\))) # (\inst|cache[1].valid~DUPLICATE_q\) ) ) ) # ( \inst|cache[2].valid~q\ & ( !\inst|cache[1].data[1]~1_combout\ & ( 
-- (!\inst|cache[1].valid~DUPLICATE_q\ & (\inst|cache[0].valid~q\ & (\inst|sdramState~q\ & \inst|cpuCacheOperation.read_cache~q\))) ) ) ) # ( !\inst|cache[2].valid~q\ & ( !\inst|cache[1].data[1]~1_combout\ & ( (!\inst|cache[1].valid~DUPLICATE_q\ & 
-- (\inst|cache[0].valid~q\ & (\inst|sdramState~q\ & \inst|cpuCacheOperation.read_cache~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001001010101010101110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[0].valid~q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[2].valid~q\,
	dataf => \inst|ALT_INV_cache[1].data[1]~1_combout\,
	combout => \inst|cache[1].data[1]~0_combout\);

-- Location: FF_X11_Y3_N4
\inst|cache[1].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector33~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[1].data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].data\(10));

-- Location: LABCELL_X10_Y3_N51
\inst|cache[0].data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].data[1]~1_combout\ = ( \inst|cache[2].valid~q\ & ( (!\inst|evictCounter\(0) & (!\inst|evictCounter\(1) & (\inst|cache[3].valid~DUPLICATE_q\ & \inst|cache[1].valid~q\))) ) ) # ( !\inst|cache[2].valid~q\ & ( 
-- (!\inst|cache[3].valid~DUPLICATE_q\ & !\inst|cache[1].valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_evictCounter\(0),
	datab => \inst|ALT_INV_evictCounter\(1),
	datac => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[1].valid~q\,
	dataf => \inst|ALT_INV_cache[2].valid~q\,
	combout => \inst|cache[0].data[1]~1_combout\);

-- Location: LABCELL_X10_Y3_N33
\inst|cache[0].data[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].data[1]~0_combout\ = ( \inst|cpuCacheOperation.write_cache~q\ & ( \inst|cpuCacheOperation.read_cache~q\ & ( (!\inst|sdramState~q\ & (((!\inst|cache[3].valid~DUPLICATE_q\ & \inst|cache[0].data[1]~1_combout\)))) # (\inst|sdramState~q\ & 
-- ((!\inst|cache[0].valid~DUPLICATE_q\) # ((\inst|cache[0].data[1]~1_combout\)))) ) ) ) # ( !\inst|cpuCacheOperation.write_cache~q\ & ( \inst|cpuCacheOperation.read_cache~q\ & ( (\inst|sdramState~q\ & ((!\inst|cache[0].valid~DUPLICATE_q\) # 
-- ((\inst|cache[3].valid~DUPLICATE_q\ & \inst|cache[0].data[1]~1_combout\)))) ) ) ) # ( \inst|cpuCacheOperation.write_cache~q\ & ( !\inst|cpuCacheOperation.read_cache~q\ & ( (!\inst|cache[3].valid~DUPLICATE_q\ & \inst|cache[0].data[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000001000100010001010100010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_sdramState~q\,
	datab => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[0].data[1]~1_combout\,
	datae => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	combout => \inst|cache[0].data[1]~0_combout\);

-- Location: FF_X10_Y3_N31
\inst|cache[0].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector33~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[0].data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].data\(10));

-- Location: LABCELL_X10_Y3_N39
\inst|address~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|address~0_combout\ = (\inst|evictCounter[0]~DUPLICATE_q\ & \inst|evictCounter[1]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	combout => \inst|address~0_combout\);

-- Location: LABCELL_X10_Y3_N15
\inst|Selector155~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector155~0_combout\ = ( \inst|sdramState~q\ & ( \inst|cpuCacheOperation.read_cache~q\ & ( (\inst|cache[1].valid~q\ & \inst|cache[0].valid~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~q\,
	datac => \inst|ALT_INV_cache[0].valid~DUPLICATE_q\,
	datae => \inst|ALT_INV_sdramState~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	combout => \inst|Selector155~0_combout\);

-- Location: LABCELL_X10_Y3_N36
\inst|cache[3].data[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].data[10]~0_combout\ = ( \inst|Selector155~0_combout\ & ( (!\inst|cache[3].valid~q\ & (((\inst|cache[2].valid~q\)))) # (\inst|cache[3].valid~q\ & (((\inst|address~0_combout\ & \inst|cache[2].valid~q\)) # 
-- (\inst|cpuCacheOperation.write_cache~q\))) ) ) # ( !\inst|Selector155~0_combout\ & ( (\inst|cache[3].valid~q\ & \inst|cpuCacheOperation.write_cache~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001011010111110000101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~q\,
	datab => \inst|ALT_INV_address~0_combout\,
	datac => \inst|ALT_INV_cache[2].valid~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst|ALT_INV_Selector155~0_combout\,
	combout => \inst|cache[3].data[10]~0_combout\);

-- Location: FF_X10_Y3_N50
\inst|cache[3].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|Selector33~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|cache[3].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].data\(10));

-- Location: LABCELL_X11_Y3_N48
\inst|cache[2].data[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].data[1]~0_combout\ = ( \inst|cache[2].valid~DUPLICATE_q\ & ( (!\inst|cache[3].valid~DUPLICATE_q\) # ((!\inst|evictCounter[1]~DUPLICATE_q\) # (\inst|evictCounter[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	datac => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cache[2].valid~DUPLICATE_q\,
	combout => \inst|cache[2].data[1]~0_combout\);

-- Location: LABCELL_X11_Y3_N51
\inst|Selector82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector82~0_combout\ = ( \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( (\inst|cache[2].valid~DUPLICATE_q\ & !\inst|cache[3].valid~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_cache[2].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	combout => \inst|Selector82~0_combout\);

-- Location: LABCELL_X11_Y3_N36
\inst|cache[2].data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].data[1]~1_combout\ = ( \inst|cache[1].valid~DUPLICATE_q\ & ( \inst|Selector82~0_combout\ ) ) # ( !\inst|cache[1].valid~DUPLICATE_q\ & ( \inst|Selector82~0_combout\ ) ) # ( \inst|cache[1].valid~DUPLICATE_q\ & ( !\inst|Selector82~0_combout\ & 
-- ( (!\inst|cache[2].data[1]~0_combout\ & (\inst|cache[0].valid~q\ & (\inst|cpuCacheOperation.read_cache~q\ & \inst|sdramState~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[2].data[1]~0_combout\,
	datab => \inst|ALT_INV_cache[0].valid~q\,
	datac => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datad => \inst|ALT_INV_sdramState~q\,
	datae => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Selector82~0_combout\,
	combout => \inst|cache[2].data[1]~1_combout\);

-- Location: FF_X11_Y3_N40
\inst|cache[2].data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector33~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[2].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].data\(10));

-- Location: LABCELL_X12_Y3_N42
\inst|Selector177~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector177~0_combout\ = ( \inst|cache[3].data\(10) & ( \inst|cache[2].data\(10) & ( ((!\inst|evictCounter[0]~DUPLICATE_q\ & ((\inst|cache[0].data\(10)))) # (\inst|evictCounter[0]~DUPLICATE_q\ & (\inst|cache[1].data\(10)))) # 
-- (\inst|evictCounter[1]~DUPLICATE_q\) ) ) ) # ( !\inst|cache[3].data\(10) & ( \inst|cache[2].data\(10) & ( (!\inst|evictCounter[0]~DUPLICATE_q\ & (((\inst|evictCounter[1]~DUPLICATE_q\) # (\inst|cache[0].data\(10))))) # (\inst|evictCounter[0]~DUPLICATE_q\ & 
-- (\inst|cache[1].data\(10) & ((!\inst|evictCounter[1]~DUPLICATE_q\)))) ) ) ) # ( \inst|cache[3].data\(10) & ( !\inst|cache[2].data\(10) & ( (!\inst|evictCounter[0]~DUPLICATE_q\ & (((\inst|cache[0].data\(10) & !\inst|evictCounter[1]~DUPLICATE_q\)))) # 
-- (\inst|evictCounter[0]~DUPLICATE_q\ & (((\inst|evictCounter[1]~DUPLICATE_q\)) # (\inst|cache[1].data\(10)))) ) ) ) # ( !\inst|cache[3].data\(10) & ( !\inst|cache[2].data\(10) & ( (!\inst|evictCounter[1]~DUPLICATE_q\ & ((!\inst|evictCounter[0]~DUPLICATE_q\ 
-- & ((\inst|cache[0].data\(10)))) # (\inst|evictCounter[0]~DUPLICATE_q\ & (\inst|cache[1].data\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[1].data\(10),
	datac => \inst|ALT_INV_cache[0].data\(10),
	datad => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	datae => \inst|ALT_INV_cache[3].data\(10),
	dataf => \inst|ALT_INV_cache[2].data\(10),
	combout => \inst|Selector177~0_combout\);

-- Location: FF_X12_Y3_N1
\inst|cache[2].dirtyBit~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].dirtyBit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].dirtyBit~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N0
\inst|cache[2].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[2].dirtyBit~0_combout\ = ( !\inst|cache[2].dirtyBit~DUPLICATE_q\ & ( (((\inst|Selector82~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\))))) ) ) # ( \inst|cache[2].dirtyBit~DUPLICATE_q\ & ( (!\inst|isCacheFull~0_combout\) # 
-- (((!\inst|sdramState~q\) # ((!\inst|evictCounter[1]~DUPLICATE_q\) # (!\inst|cpuCacheOperation.read_cache~q\))) # (\inst|evictCounter[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111111111111111100000000000000001111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isCacheFull~0_combout\,
	datab => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	datae => \inst|ALT_INV_cache[2].dirtyBit~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datag => \inst|ALT_INV_Selector82~0_combout\,
	combout => \inst|cache[2].dirtyBit~0_combout\);

-- Location: FF_X12_Y3_N2
\inst|cache[2].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[2].dirtyBit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].dirtyBit~q\);

-- Location: LABCELL_X11_Y3_N42
\inst|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector45~0_combout\ = ( \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( (\inst|cache[1].valid~DUPLICATE_q\ & (!\inst|cache[3].valid~DUPLICATE_q\ & !\inst|cache[2].valid~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[2].valid~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	combout => \inst|Selector45~0_combout\);

-- Location: LABCELL_X12_Y3_N54
\inst|cache[1].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[1].dirtyBit~0_combout\ = ( !\inst|cache[1].dirtyBit~q\ & ( (((\inst|Selector45~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\))))) ) ) # ( \inst|cache[1].dirtyBit~q\ & ( (!\inst|isCacheFull~0_combout\) # 
-- ((!\inst|evictCounter[0]~DUPLICATE_q\) # ((!\inst|sdramState~q\) # ((!\inst|cpuCacheOperation.read_cache~q\) # (\inst|evictCounter[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111111111111111100000000000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isCacheFull~0_combout\,
	datab => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	datae => \inst|ALT_INV_cache[1].dirtyBit~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datag => \inst|ALT_INV_Selector45~0_combout\,
	combout => \inst|cache[1].dirtyBit~0_combout\);

-- Location: FF_X12_Y3_N55
\inst|cache[1].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[1].dirtyBit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].dirtyBit~q\);

-- Location: FF_X12_Y3_N25
\inst|cache[0].dirtyBit~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].dirtyBit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].dirtyBit~DUPLICATE_q\);

-- Location: LABCELL_X11_Y3_N54
\inst|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = ( \inst|cpuCacheOperation.write_cache~DUPLICATE_q\ & ( (!\inst|cache[1].valid~DUPLICATE_q\ & (!\inst|cache[3].valid~DUPLICATE_q\ & !\inst|cache[2].valid~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[1].valid~DUPLICATE_q\,
	datab => \inst|ALT_INV_cache[3].valid~DUPLICATE_q\,
	datac => \inst|ALT_INV_cache[2].valid~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.write_cache~DUPLICATE_q\,
	combout => \inst|Selector8~0_combout\);

-- Location: LABCELL_X12_Y3_N24
\inst|cache[0].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[0].dirtyBit~0_combout\ = ( !\inst|cache[0].dirtyBit~DUPLICATE_q\ & ( (((\inst|Selector8~0_combout\ & ((!\inst|cpuCacheOperation.read_cache~q\))))) ) ) # ( \inst|cache[0].dirtyBit~DUPLICATE_q\ & ( (!\inst|isCacheFull~0_combout\) # 
-- (((!\inst|sdramState~q\) # ((!\inst|cpuCacheOperation.read_cache~q\) # (\inst|evictCounter[1]~DUPLICATE_q\))) # (\inst|evictCounter[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111111111111111100000000000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isCacheFull~0_combout\,
	datab => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	datae => \inst|ALT_INV_cache[0].dirtyBit~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datag => \inst|ALT_INV_Selector8~0_combout\,
	combout => \inst|cache[0].dirtyBit~0_combout\);

-- Location: FF_X12_Y3_N26
\inst|cache[0].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[0].dirtyBit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].dirtyBit~q\);

-- Location: LABCELL_X10_Y3_N6
\inst|cache[3].dirtyBit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|cache[3].dirtyBit~0_combout\ = ( !\inst|cache[3].dirtyBit~q\ & ( (\inst|cpuCacheOperation.write_cache~q\ & (((\inst|cache[3].valid~q\ & (!\inst|cpuCacheOperation.read_cache~q\))))) ) ) # ( \inst|cache[3].dirtyBit~q\ & ( ((!\inst|address~0_combout\) 
-- # ((!\inst|sdramState~q\) # ((!\inst|cpuCacheOperation.read_cache~q\) # (!\inst|isCacheFull~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000000111111111111111100000101000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	datab => \inst|ALT_INV_address~0_combout\,
	datac => \inst|ALT_INV_sdramState~q\,
	datad => \inst|ALT_INV_cpuCacheOperation.read_cache~q\,
	datae => \inst|ALT_INV_cache[3].dirtyBit~q\,
	dataf => \inst|ALT_INV_isCacheFull~0_combout\,
	datag => \inst|ALT_INV_cache[3].valid~q\,
	combout => \inst|cache[3].dirtyBit~0_combout\);

-- Location: FF_X10_Y3_N7
\inst|cache[3].dirtyBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|cache[3].dirtyBit~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].dirtyBit~q\);

-- Location: LABCELL_X12_Y3_N9
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|cache[3].dirtyBit~q\ & ( \inst|evictCounter[1]~DUPLICATE_q\ & ( (\inst|evictCounter[0]~DUPLICATE_q\) # (\inst|cache[2].dirtyBit~q\) ) ) ) # ( !\inst|cache[3].dirtyBit~q\ & ( \inst|evictCounter[1]~DUPLICATE_q\ & ( 
-- (\inst|cache[2].dirtyBit~q\ & !\inst|evictCounter[0]~DUPLICATE_q\) ) ) ) # ( \inst|cache[3].dirtyBit~q\ & ( !\inst|evictCounter[1]~DUPLICATE_q\ & ( (!\inst|evictCounter[0]~DUPLICATE_q\ & ((\inst|cache[0].dirtyBit~q\))) # 
-- (\inst|evictCounter[0]~DUPLICATE_q\ & (\inst|cache[1].dirtyBit~q\)) ) ) ) # ( !\inst|cache[3].dirtyBit~q\ & ( !\inst|evictCounter[1]~DUPLICATE_q\ & ( (!\inst|evictCounter[0]~DUPLICATE_q\ & ((\inst|cache[0].dirtyBit~q\))) # 
-- (\inst|evictCounter[0]~DUPLICATE_q\ & (\inst|cache[1].dirtyBit~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[2].dirtyBit~q\,
	datab => \inst|ALT_INV_cache[1].dirtyBit~q\,
	datac => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_cache[0].dirtyBit~q\,
	datae => \inst|ALT_INV_cache[3].dirtyBit~q\,
	dataf => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	combout => \inst|Mux0~0_combout\);

-- Location: LABCELL_X11_Y3_N12
\inst|Sdram_data_out[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Sdram_data_out[10]~0_combout\ = ( !\inst|cpuCacheOperation.write_cache~q\ & ( \inst|cpuCacheOperation.none~q\ & ( (\inst|isCacheFull~0_combout\ & (!\reset~input_o\ & (\inst|Mux0~0_combout\ & \inst|sdramState~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_isCacheFull~0_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \inst|ALT_INV_Mux0~0_combout\,
	datad => \inst|ALT_INV_sdramState~q\,
	datae => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst|ALT_INV_cpuCacheOperation.none~q\,
	combout => \inst|Sdram_data_out[10]~0_combout\);

-- Location: FF_X12_Y3_N44
\inst|Sdram_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|Selector177~0_combout\,
	ena => \inst|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Sdram_data_out\(10));

-- Location: LABCELL_X12_Y3_N33
\inst3|memory[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|memory[0][10]~feeder_combout\ = ( \inst|Sdram_data_out\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Sdram_data_out\(10),
	combout => \inst3|memory[0][10]~feeder_combout\);

-- Location: LABCELL_X9_Y3_N15
\inst|Selector155~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector155~1_combout\ = ( \inst|Mux0~0_combout\ & ( \inst|Selector155~0_combout\ & ( (\inst|cache[3].valid~q\ & \inst|cache[2].valid~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[3].valid~q\,
	datab => \inst|ALT_INV_cache[2].valid~q\,
	datae => \inst|ALT_INV_Mux0~0_combout\,
	dataf => \inst|ALT_INV_Selector155~0_combout\,
	combout => \inst|Selector155~1_combout\);

-- Location: FF_X9_Y3_N17
\inst|write_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|Selector155~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|write_en~q\);

-- Location: FF_X12_Y3_N34
\inst3|memory[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|memory[0][10]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|write_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][10]~q\);

-- Location: LABCELL_X9_Y3_N24
\inst3|data_out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|data_out[10]~feeder_combout\ = ( \inst3|memory[0][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst3|ALT_INV_memory[0][10]~q\,
	combout => \inst3|data_out[10]~feeder_combout\);

-- Location: LABCELL_X9_Y3_N42
\inst3|data_out[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|data_out[10]~0_combout\ = ( !\inst|write_en~q\ & ( \inst|read_en~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_read_en~q\,
	dataf => \inst|ALT_INV_write_en~q\,
	combout => \inst3|data_out[10]~0_combout\);

-- Location: FF_X9_Y3_N25
\inst3|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|data_out[10]~feeder_combout\,
	ena => \inst3|data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out\(10));

-- Location: LABCELL_X11_Y3_N45
\inst|dataToSendToCache[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|dataToSendToCache[0]~0_combout\ = ( \inst|hit~q\ & ( (!\inst|CurrentState.writeData~DUPLICATE_q\) # (\inst|dataToSendToCache\(0)) ) ) # ( !\inst|hit~q\ & ( ((!\inst|CurrentState.writeData~DUPLICATE_q\ & !\inst|CurrentState.requestData~q\)) # 
-- (\inst|dataToSendToCache\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111111110000001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_CurrentState.writeData~DUPLICATE_q\,
	datac => \inst|ALT_INV_CurrentState.requestData~q\,
	datad => \inst|ALT_INV_dataToSendToCache\(0),
	dataf => \inst|ALT_INV_hit~q\,
	combout => \inst|dataToSendToCache[0]~0_combout\);

-- Location: FF_X11_Y3_N47
\inst|dataToSendToCache[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|dataToSendToCache[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataToSendToCache\(0));

-- Location: LABCELL_X10_Y3_N18
\inst|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = ( \inst3|data_out\(0) & ( (!\inst|cpuCacheOperation.write_cache~q\) # (\inst|dataToSendToCache\(0)) ) ) # ( !\inst3|data_out\(0) & ( (\inst|dataToSendToCache\(0) & \inst|cpuCacheOperation.write_cache~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_dataToSendToCache\(0),
	datad => \inst|ALT_INV_cpuCacheOperation.write_cache~q\,
	dataf => \inst3|ALT_INV_data_out\(0),
	combout => \inst|Selector43~0_combout\);

-- Location: FF_X10_Y3_N34
\inst|cache[0].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[0].data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[0].data\(0));

-- Location: FF_X11_Y3_N37
\inst|cache[2].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[2].data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[2].data\(0));

-- Location: FF_X10_Y3_N37
\inst|cache[3].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[3].data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[3].data\(0));

-- Location: FF_X11_Y3_N49
\inst|cache[1].data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector43~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst|cache[1].data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cache[1].data\(0));

-- Location: LABCELL_X11_Y3_N18
\inst|Selector187~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector187~0_combout\ = ( \inst|evictCounter[1]~DUPLICATE_q\ & ( \inst|cache[1].data\(0) & ( (!\inst|evictCounter[0]~DUPLICATE_q\ & (\inst|cache[2].data\(0))) # (\inst|evictCounter[0]~DUPLICATE_q\ & ((\inst|cache[3].data\(0)))) ) ) ) # ( 
-- !\inst|evictCounter[1]~DUPLICATE_q\ & ( \inst|cache[1].data\(0) & ( (\inst|evictCounter[0]~DUPLICATE_q\) # (\inst|cache[0].data\(0)) ) ) ) # ( \inst|evictCounter[1]~DUPLICATE_q\ & ( !\inst|cache[1].data\(0) & ( (!\inst|evictCounter[0]~DUPLICATE_q\ & 
-- (\inst|cache[2].data\(0))) # (\inst|evictCounter[0]~DUPLICATE_q\ & ((\inst|cache[3].data\(0)))) ) ) ) # ( !\inst|evictCounter[1]~DUPLICATE_q\ & ( !\inst|cache[1].data\(0) & ( (\inst|cache[0].data\(0) & !\inst|evictCounter[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_cache[0].data\(0),
	datab => \inst|ALT_INV_cache[2].data\(0),
	datac => \inst|ALT_INV_cache[3].data\(0),
	datad => \inst|ALT_INV_evictCounter[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_evictCounter[1]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_cache[1].data\(0),
	combout => \inst|Selector187~0_combout\);

-- Location: FF_X12_Y3_N50
\inst|Sdram_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector187~0_combout\,
	sload => VCC,
	ena => \inst|Sdram_data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Sdram_data_out\(0));

-- Location: LABCELL_X12_Y3_N39
\inst3|memory[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|memory[0][0]~feeder_combout\ = ( \inst|Sdram_data_out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Sdram_data_out\(0),
	combout => \inst3|memory[0][0]~feeder_combout\);

-- Location: FF_X12_Y3_N40
\inst3|memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|memory[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \inst|write_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|memory[0][0]~q\);

-- Location: FF_X9_Y3_N47
\inst3|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst3|memory[0][0]~q\,
	sload => VCC,
	ena => \inst3|data_out[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data_out\(0));

-- Location: LABCELL_X40_Y39_N0
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


