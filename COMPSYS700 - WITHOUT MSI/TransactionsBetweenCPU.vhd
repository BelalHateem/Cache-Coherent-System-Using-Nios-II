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
-- CREATED		"Sat Oct 12 15:40:50 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TransactionsBetweenCPU IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		wantedaddr0 :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		wantedaddr1 :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		cpu0_wr_en :  OUT  STD_LOGIC;
		ready1 :  OUT  STD_LOGIC;
		ready2 :  OUT  STD_LOGIC;
		cpu1_wr_en :  OUT  STD_LOGIC;
		cpu1_rd_en :  OUT  STD_LOGIC;
		cpu0_rd_en :  OUT  STD_LOGIC;
		cpu0_sdram_addr :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		cpu0_sdram_data_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		cpu1_sdram_addr2 :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		cpu1_sdram_data_out1 :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		dataout1 :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		dataout2 :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END TransactionsBetweenCPU;

ARCHITECTURE bdf_type OF TransactionsBetweenCPU IS 

COMPONENT cpu0
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 Sdram_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 wantedAddress : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 read_en : OUT STD_LOGIC;
		 write_en : OUT STD_LOGIC;
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

SIGNAL	cpu0_rd_en_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	cpu0_sdram_addr_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	cpu0_sdram_data_out_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	cpu0_wr_en_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	cpu1_rd_en_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	cpu1_sdram_addr_ALTERA_SYNTHESIZED2 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	cpu1_sdram_data_out_ALTERA_SYNTHESIZED1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	cpu1_wr_en_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	dataout_ALTERA_SYNTHESIZED1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	dataout_ALTERA_SYNTHESIZED2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ready_ALTERA_SYNTHESIZED1 :  STD_LOGIC;
SIGNAL	ready_ALTERA_SYNTHESIZED2 :  STD_LOGIC;


BEGIN 



ready_ALTERA_SYNTHESIZED1 <= cpu0_wr_en_ALTERA_SYNTHESIZED OR cpu0_rd_en_ALTERA_SYNTHESIZED;


b2v_inst0 : cpu0
PORT MAP(clk => clk,
		 reset => rst,
		 Sdram_data_in => dataout_ALTERA_SYNTHESIZED1,
		 wantedAddress => wantedaddr0,
		 read_en => cpu0_rd_en_ALTERA_SYNTHESIZED,
		 write_en => cpu0_wr_en_ALTERA_SYNTHESIZED,
		 Sdram_addr => cpu0_sdram_addr_ALTERA_SYNTHESIZED,
		 Sdram_data_out => cpu0_sdram_data_out_ALTERA_SYNTHESIZED);


b2v_inst1 : cpu0
PORT MAP(clk => clk,
		 reset => rst,
		 Sdram_data_in => dataout_ALTERA_SYNTHESIZED2,
		 wantedAddress => wantedaddr1,
		 read_en => cpu1_rd_en_ALTERA_SYNTHESIZED,
		 write_en => cpu1_wr_en_ALTERA_SYNTHESIZED,
		 Sdram_addr => cpu1_sdram_addr_ALTERA_SYNTHESIZED2,
		 Sdram_data_out => cpu1_sdram_data_out_ALTERA_SYNTHESIZED1);


b2v_inst3 : sdram
PORT MAP(clk => clk,
		 reset => rst,
		 operation1 => cpu0_wr_en_ALTERA_SYNTHESIZED,
		 operation2 => cpu1_wr_en_ALTERA_SYNTHESIZED,
		 ready1 => ready_ALTERA_SYNTHESIZED1,
		 ready2 => ready_ALTERA_SYNTHESIZED2,
		 addr1 => cpu0_sdram_addr_ALTERA_SYNTHESIZED,
		 addr2 => cpu1_sdram_addr_ALTERA_SYNTHESIZED2,
		 data_in1 => cpu0_sdram_data_out_ALTERA_SYNTHESIZED,
		 data_in2 => cpu1_sdram_data_out_ALTERA_SYNTHESIZED1,
		 data_out1 => dataout_ALTERA_SYNTHESIZED1,
		 data_out2 => dataout_ALTERA_SYNTHESIZED2);


ready_ALTERA_SYNTHESIZED2 <= cpu1_wr_en_ALTERA_SYNTHESIZED OR cpu1_rd_en_ALTERA_SYNTHESIZED;

cpu0_wr_en <= cpu0_wr_en_ALTERA_SYNTHESIZED;
ready1 <= ready_ALTERA_SYNTHESIZED1;
ready2 <= ready_ALTERA_SYNTHESIZED2;
cpu1_wr_en <= cpu1_wr_en_ALTERA_SYNTHESIZED;
cpu1_rd_en <= cpu1_rd_en_ALTERA_SYNTHESIZED;
cpu0_rd_en <= cpu0_rd_en_ALTERA_SYNTHESIZED;
cpu0_sdram_addr <= cpu0_sdram_addr_ALTERA_SYNTHESIZED;
cpu0_sdram_data_out <= cpu0_sdram_data_out_ALTERA_SYNTHESIZED;
cpu1_sdram_addr2 <= cpu1_sdram_addr_ALTERA_SYNTHESIZED2;
cpu1_sdram_data_out1 <= cpu1_sdram_data_out_ALTERA_SYNTHESIZED1;
dataout1 <= dataout_ALTERA_SYNTHESIZED1;
dataout2 <= dataout_ALTERA_SYNTHESIZED2;

END bdf_type;