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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/17/2024 23:17:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TransactionsBetweenCPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TransactionsBetweenCPU_vhd_vec_tst IS
END TransactionsBetweenCPU_vhd_vec_tst;
ARCHITECTURE TransactionsBetweenCPU_arch OF TransactionsBetweenCPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL CurrentState : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL data_out_sdram : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL readfromCPU : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sdram_addr_fromCPU : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sdram_data_fromCPU : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL writefromCPU : STD_LOGIC;
COMPONENT TransactionsBetweenCPU
	PORT (
	clk : IN STD_LOGIC;
	CurrentState : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	data_out_sdram : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	readfromCPU : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	sdram_addr_fromCPU : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	sdram_data_fromCPU : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	writefromCPU : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TransactionsBetweenCPU
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	CurrentState => CurrentState,
	data_out_sdram => data_out_sdram,
	readfromCPU => readfromCPU,
	reset => reset,
	sdram_addr_fromCPU => sdram_addr_fromCPU,
	sdram_data_fromCPU => sdram_data_fromCPU,
	writefromCPU => writefromCPU
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END TransactionsBetweenCPU_arch;
