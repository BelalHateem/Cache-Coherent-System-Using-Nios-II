transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib top
vmap top top
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_timer_0.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_sysid_qsys.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_sys_sdram_pll_0.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_up_avalon_reset_from_locked_signal.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_up_altpll.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_switches.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_sdram.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mutex.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_jtag_uart0.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_cpu_1.v}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_cpu_0.v}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_irq_mapper_001.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_irq_mapper.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_rsp_mux_002.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_rsp_demux_006.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_rsp_demux_001.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_cmd_mux_006.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_cmd_mux_001.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_cmd_demux_002.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_012.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_011.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_010.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_006.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_005.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_004.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_003.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_002.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router_001.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/top_mm_interconnect_0_router.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work top +incdir+C:/COMPSYS700PROJECT/top/synthesis/submodules {C:/COMPSYS700PROJECT/top/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work top {C:/COMPSYS700PROJECT/top/synthesis/top.vhd}
vcom -93 -work top {C:/COMPSYS700PROJECT/top/synthesis/top_rst_controller.vhd}
vcom -93 -work top {C:/COMPSYS700PROJECT/top/synthesis/top_rst_controller_002.vhd}
vcom -93 -work work {C:/COMPSYS700PROJECT/top/top_inst.vhd}

