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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Thu Oct 03 14:38:56 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TransactionsBetweenCPU IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		cpu0_prio :  IN  STD_LOGIC;
		cpu1_prio1 :  IN  STD_LOGIC;
		cpu0_wantedAddr :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		cpu1_wantedAddr :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END TransactionsBetweenCPU;

ARCHITECTURE bdf_type OF TransactionsBetweenCPU IS 

COMPONENT cpu0
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 priority : IN STD_LOGIC;
		 cpu_wr_req_in : IN STD_LOGIC;
		 cpu_rd_req_in : IN STD_LOGIC;
		 cache_to_cache_resp_in_ready : IN STD_LOGIC;
		 cache_to_cache_resp_in : IN STD_LOGIC;
		 cache_to_cache_req_in : IN STD_LOGIC;
		 cache_to_cache_req_address_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 cache_to_cache_resp_in_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cpu_req_addr_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 Sdram_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 wantedAddress : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 read_en : OUT STD_LOGIC;
		 write_en : OUT STD_LOGIC;
		 cpu_wr_req_out : OUT STD_LOGIC;
		 cpu_rd_req_out : OUT STD_LOGIC;
		 cache_to_cache_resp_out_ready : OUT STD_LOGIC;
		 cache_to_cache_resp_out : OUT STD_LOGIC;
		 cache_to_cache_req_out : OUT STD_LOGIC;
		 cache_to_cache_req_address_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 cache_to_cache_resp_out_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cpu_req_addr_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 Sdram_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 Sdram_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sdram
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 operation1 : IN STD_LOGIC;
		 operation2 : IN STD_LOGIC;
		 ready1 : IN STD_LOGIC;
		 ready2 : IN STD_LOGIC;
		 addr1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 addr2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 data_in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_out1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_out2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	cpu0_cache_to_cache_req :  STD_LOGIC;
SIGNAL	cpu0_cache_to_cache_req_addr :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	cpu0_cache_to_cache_resp_data :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	cpu0_cache_to_cache_response :  STD_LOGIC;
SIGNAL	cpu0_cache_to_cache_response_out_rdy :  STD_LOGIC;
SIGNAL	cpu0_rd_req_out :  STD_LOGIC;
SIGNAL	cpu0_req_addr_out :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	cpu0_wr_req_out :  STD_LOGIC;
SIGNAL	cpu1_cache_to_cache_req :  STD_LOGIC;
SIGNAL	cpu1_cache_to_cache_req_addr :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	cpu1_cache_to_cache_resp_data :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	cpu1_cache_to_cache_response :  STD_LOGIC;
SIGNAL	cpu1_cache_to_cache_response_out_ready :  STD_LOGIC;
SIGNAL	cpu1_rd_req_out :  STD_LOGIC;
SIGNAL	cpu1_req_addr_out :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	cpu1_wr_req_out :  STD_LOGIC;
SIGNAL	r_en1 :  STD_LOGIC;
SIGNAL	r_en2 :  STD_LOGIC;
SIGNAL	ready1 :  STD_LOGIC;
SIGNAL	ready2 :  STD_LOGIC;
SIGNAL	sdram_addr1 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	sdram_addr2 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	sdram_data_out1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	sdram_data_out2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	sdramDataOut1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	sdramDataOut2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	wr_en1 :  STD_LOGIC;
SIGNAL	wr_en2 :  STD_LOGIC;


BEGIN 



ready1 <= wr_en1 OR r_en1;


b2v_inst0 : cpu0
PORT MAP(clk => clk,
		 reset => rst,
		 priority => cpu0_prio,
		 cpu_wr_req_in => cpu1_wr_req_out,
		 cpu_rd_req_in => cpu1_rd_req_out,
		 cache_to_cache_resp_in_ready => cpu1_cache_to_cache_response_out_ready,
		 cache_to_cache_resp_in => cpu1_cache_to_cache_response,
		 cache_to_cache_req_in => cpu1_cache_to_cache_req,
		 cache_to_cache_req_address_in => cpu1_cache_to_cache_req_addr,
		 cache_to_cache_resp_in_data => cpu1_cache_to_cache_resp_data,
		 cpu_req_addr_in => cpu1_req_addr_out,
		 Sdram_data_in => sdramDataOut1,
		 wantedAddress => cpu0_wantedAddr,
		 read_en => r_en1,
		 write_en => wr_en1,
		 cpu_wr_req_out => cpu0_wr_req_out,
		 cpu_rd_req_out => cpu0_rd_req_out,
		 cache_to_cache_resp_out_ready => cpu0_cache_to_cache_response_out_rdy,
		 cache_to_cache_resp_out => cpu0_cache_to_cache_response,
		 cache_to_cache_req_out => cpu0_cache_to_cache_req,
		 cache_to_cache_req_address_out => cpu0_cache_to_cache_req_addr,
		 cache_to_cache_resp_out_data => cpu0_cache_to_cache_resp_data,
		 cpu_req_addr_out => cpu0_req_addr_out,
		 Sdram_addr => sdram_addr1,
		 Sdram_data_out => sdram_data_out1);


b2v_inst1 : cpu0
PORT MAP(clk => clk,
		 reset => rst,
		 priority => cpu1_prio1,
		 cpu_wr_req_in => cpu0_wr_req_out,
		 cpu_rd_req_in => cpu0_rd_req_out,
		 cache_to_cache_resp_in_ready => cpu0_cache_to_cache_response_out_rdy,
		 cache_to_cache_resp_in => cpu0_cache_to_cache_response,
		 cache_to_cache_req_in => cpu0_cache_to_cache_req,
		 cache_to_cache_req_address_in => cpu0_cache_to_cache_req_addr,
		 cache_to_cache_resp_in_data => cpu0_cache_to_cache_resp_data,
		 cpu_req_addr_in => cpu0_req_addr_out,
		 Sdram_data_in => sdramDataOut2,
		 wantedAddress => cpu1_wantedAddr,
		 read_en => r_en2,
		 write_en => wr_en2,
		 cpu_wr_req_out => cpu1_wr_req_out,
		 cpu_rd_req_out => cpu1_rd_req_out,
		 cache_to_cache_resp_out_ready => cpu1_cache_to_cache_response_out_ready,
		 cache_to_cache_resp_out => cpu1_cache_to_cache_response,
		 cache_to_cache_req_out => cpu1_cache_to_cache_req,
		 cache_to_cache_req_address_out => cpu1_cache_to_cache_req_addr,
		 cache_to_cache_resp_out_data => cpu1_cache_to_cache_resp_data,
		 cpu_req_addr_out => cpu1_req_addr_out,
		 Sdram_addr => sdram_addr2,
		 Sdram_data_out => sdram_data_out2);


b2v_inst3 : sdram
PORT MAP(clk => clk,
		 reset => rst,
		 operation1 => wr_en1,
		 operation2 => wr_en2,
		 ready1 => ready1,
		 ready2 => ready2,
		 addr1 => sdram_addr1,
		 addr2 => sdram_addr2,
		 data_in1 => sdram_data_out1,
		 data_in2 => sdram_data_out2,
		 data_out1 => sdramDataOut1,
		 data_out2 => sdramDataOut2);


ready2 <= wr_en2 OR r_en2;


END bdf_type;