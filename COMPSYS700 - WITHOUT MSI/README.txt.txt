RUNNING THE PROGRAM USING MODELSIM AND QUARTUS.

-> Begin by navigating to the COMPSYS700 - WITHOUT MSI folder and opening the TransactionsBetweenCPU.qpf file
-> Once Open navigate to Assignments->Settings->EDA Tool Settings and ensure that under simulation, you have modelsim in the tool name and VHDL in the format
-> Goto tools->options->EDA tool Options and under modelsim navigate to the intel folder where you will find a folder called win32aloem, for instance C:\intelFPGA\20.1\modelsim_ase\win32aloem
-> Ensure that the TransactionsBetweenCPU.bdf file is the top level by going to hierarchy, if it isn't right click the file and select set as top level hierarchy.
->Compile the program
-> Once compiled goto Tools->Run Simulation Tool-> RTL Simulation and Modelsim should open.
->Once open, Navigate to the :\COMPSYS700 - WITHOUT MSI folder and compile the following vhd files.
	->cpu0
	->sdram
	->transactionsBetweenCPU
	->testbench
->All should compile without error, once compiled right click testbench->Simulate
->In the instances there should be a drop down called b2v_inst, click the Plus and you should be seeing b2v_inst0, b2v_inst1 and b2v_inst3
->Click the b2v_inst0, this will be corresponding to cpu0.
->On the right you should see a bunch of object signals
->The signals that we care about are
	->clk
	->reset
	->read_en
	->write_en
	->sdram_addr
	->wantedAddressLatch
	->cache
	->hit
	->CurrentState
	->cpuCacheOperation
	->sdramState
->click the b2v_inst1, this will be corresponding to cpu1
-> the signals we care about with this component is:
	>read_en
	->write_en
	->sdram_addr
	->wantedAddressLatch
	->cache
	->hit
	->CurrentState
	->cpuCacheOperation
	->sdramState

add these signals by right clicking on them and clicking add to wave
->Now head to the b2v_inst3 by clicking on it and only add the following signals, this corresponds to the sdram
	->data_in1
	->data_in2
	->data_out1
	->data_out2
	->operation1
	->operation2
	->ready1
	->ready2
	->memory

-> after the signals have been added in the top you should see a default simulation time value of 100 ps, change this to 1 u and click
run

->A bunch of signals should appear and to make better sense of them, I would recommend right clicking on the signals, going to radix and clicking hexadecimal.

->The program should show you basic transactions between two CPU's cache and SDRAM