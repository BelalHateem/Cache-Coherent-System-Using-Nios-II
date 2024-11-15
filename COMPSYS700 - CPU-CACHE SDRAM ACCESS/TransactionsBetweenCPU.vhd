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
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
-- CREATED		"Tue Sep 17 15:28:30 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TransactionsBetweenCPU IS 
	PORT
	(
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		wantedAddress: IN std_logic_vector(2 downto 0)
	);
END TransactionsBetweenCPU;

ARCHITECTURE bdf_type OF TransactionsBetweenCPU IS 

COMPONENT cpu0
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 Sdram_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_en : OUT STD_LOGIC;
		 write_en : OUT STD_LOGIC;
		 Sdram_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 Sdram_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 wantedAddress : in std_logic_vector(2 downto 0)
	);
END COMPONENT;

COMPONENT sdram
	PORT(clk : IN STD_LOGIC;
		 read_en : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 write_en : IN STD_LOGIC;
		 addr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	read_en :  STD_LOGIC;
SIGNAL	write_en :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst : cpu0
PORT MAP(clk => clk,
		 reset=> reset,
		 Sdram_data_in => SYNTHESIZED_WIRE_0,
		 read_en => read_en,
		 write_en => write_en,
		 Sdram_addr => SYNTHESIZED_WIRE_1,
		 Sdram_data_out => SYNTHESIZED_WIRE_2,
		 wantedAddress=> wantedAddress);


b2v_inst3 : sdram
PORT MAP(clk => clk,
		 reset=> reset,
		 read_en => read_en,
		 write_en => write_en,
		 addr => SYNTHESIZED_WIRE_1,
		 data_in => SYNTHESIZED_WIRE_2,
		 data_out => SYNTHESIZED_WIRE_0);


END bdf_type;