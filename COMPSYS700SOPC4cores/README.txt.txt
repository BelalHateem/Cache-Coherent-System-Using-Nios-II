-SOFTWARE VERSION OF MATRIX MULTIPLICATION SYSTEM UTILIZING 4 CORES:

STEPS TO RUN THE PROGRAM:
-> Open multiprocessor.qpf
-> Goto Assignments->Settings->EDA Tool Settings and ensure that Simulation is set to "none"
->Go to the drop down menu near the project navigator and go to hierarchy
-> Ensure you are using the Cyclon IV E: EP4CE115F29C7 board
-> Goto Assignmetns->PinPlanner and ensure pins are already assigned, if not go to assignments->Import Assignments-> Navigate to De2_115_Pin_assingments.
->Next hit the compilation and ensure that top_inst is set as the top level design.
->Plug the usb port into the board
->Once compilation is done goto tools->programmer->Hardware Setup and connect the board and click start, you should see a successfully connected message
->Navigate to tools->Nios II software build tools for eclipse and navigate to the COMPSYS700SOPC4cores folder
->Once in the folder goto file->import->General->Existing Projects Into Workspace and navigate to COMPSYS700SOPC4cores/software folder
->If the projects are already imported close the import.
->Next step is crucial, begin by right clicking each bsp folder and navigate to Nios II->Generate BSP
-> Once each BSP has been generated clean the entire project by navigating to project->clean->Clean projects selected below->and select all projects
->Once done, individually build each bsp first by right clicking on them and navigating to build
->Next build each folder and it should be ready to run.

->Before running we need to ensure that the linker script has the correct addresses. Right click on any BSP folder->Nios II->BSP editor->Linker Script
->In the Linker Script ensure that each linker region name is set to sdram, this is so we are referencing the correct addresses.
->Close this and click run->Run Configurations->Launch Group-> Ensure each core is ticked by hitting the GroupCode-> Run

->Program should successfully be running and will be awaiting for switches sw[0] - sw[3] to be on, these would typically be corresponding to each core being ready, please ensure that each jtag consoles have opened for each cores and are showing the message "waiting for switches"

->Once the messages are there flick the switches of sw[0]-sw[3] and you should see that cpu0 has initialized the matrices for A and B and also finished its computation of the 1/4 of the matrix and cpu1 should be computing the other quarter and so on. Cpu3 should be printing the resulting matrix C. 