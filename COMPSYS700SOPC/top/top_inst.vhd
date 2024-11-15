-- Top level


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity top_inst is
	port (CLOCK_50 : in std_logic;
		  KEY : in std_logic_vector(1 downto 0);  
		  DRAM_DQ : inout std_logic_vector(31 downto 0);
		  DRAM_ADDR : out std_logic_vector(12 downto 0);
		  DRAM_BA : out std_logic_vector(1 downto 0);
		  DRAM_CAS_N, DRAM_RAS_N : out std_logic;
		  DRAM_CKE, DRAM_CS_N, DRAM_WE_N, DRAM_CLK : out std_logic;
		  DRAM_DQM: out std_logic_vector(3 downto 0);
		  SW: in std_logic_vector(7 downto 0));
end entity top_inst;

architecture Structure of top_inst is
	component top is
		port (
			sdram_wire_addr  : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n : out   std_logic;                                        -- cas_n
			sdram_wire_cke   : out   std_logic;                                        -- cke
			sdram_wire_cs_n  : out   std_logic;                                        -- cs_n
			sdram_wire_dq    : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm   : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_wire_ras_n : out   std_logic;                                        -- ras_n
			sdram_wire_we_n  : out   std_logic;                                        -- we_n
			clk_clk          : in    std_logic:= 'X';             -- clk
			reset_reset      : in    std_logic:= 'X';             -- reset
			sdram_clk_clk    : out   std_logic;             -- clk
			switches_external_connection_export : in std_logic_vector(7 downto 0)        		
		);
	end component top;
begin
	u0 : component top
		port map (
			sdram_wire_addr   => DRAM_ADDR,  -- sdram_wire.addr
			sdram_wire_ba     => DRAM_BA,    --           .ba
			sdram_wire_cas_n  => DRAM_CAS_N, --           .cas_n
			sdram_wire_cke    => DRAM_CKE,   --           .cke
			sdram_wire_cs_n   => DRAM_CS_N,  --           .cs_n
			sdram_wire_dq     => DRAM_DQ,    --           .dq
			sdram_wire_dqm => DRAM_DQM,                    --                            .dqm
			sdram_wire_ras_n  => DRAM_RAS_N, --           .ras_n
			sdram_wire_we_n   => DRAM_WE_N,  --           .we_n
			clk_clk           => CLOCK_50,          --        clk.clk
			reset_reset       => NOT KEY(0),      --      reset.reset
			sdram_clk_clk     => DRAM_CLK,     --  sdram_clk.clk
			switches_external_connection_export => SW
		);
end architecture structure;
