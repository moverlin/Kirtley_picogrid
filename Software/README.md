# Software Tips
Programming with TI's code composer studio (CCS) is certainly not intuitive.
One often has to follow a very specific set of sequential steps, that are not at all obvious.
This is a collection of tips we have learned along the way.

## How to safely run & edit blinky on the Delfino?
Suppose you wanted to use the Blinkey example that TI provide in CCS.
How can you copy this project, and modify it, without modifying the original?
Make sure these steps are already done:
- Correctly copied file  to workspace (see full details below)
- Target Configuration file setup (see full details below)  
Next, follow these steps:
- Right click project name
	- Build Project
- Right click on project name
	- Debug As--> Code Composer Debug Session
		- Click green triangle  
Enjoy LED blinkage!!

### How to Copy TI CCS projects?
This description is aimed at guiding those who want to copy and edit the TI example code. However, the steps used are the same for copying TI projects in general.

TI provide examples when you download CCS:
- C: ti/ControlSuite/device_support/F2837xD/v210/F2837xD_examples_Cpu1
- Or C: ti/ControlSuite/device_support/F2837xD/v210/F2837xD_examples_Dual

There are 2 methods to correctly copy:
1. Copy & Paste in CCS Environment
- Steps:
	- Open the project you wish to copy in CCS
	- Right click on project name, and then click copy.  
	- Then, paste project into the workspace
- Initially, Matt & Colm spent 4+ hours attempting this method but couldn't get it to work, because all of the C files were "linked files"
- However, the original files we are copying need to be a "C Source" file
	- NOTE: right click on file and check properties to see if it's a linked file or not.
- So, we initially followed method 2 described below to keep the properties of the main.c file etc as C source files, and then used method 1 (copy & paste in CCS) thereafter.

2. Copy & Paste In Windows Explorer

### How to create a Target Configuration file
The target configuration file contains information on the DSP we're using, what programmer hardware we're using etc.
The steps to create this file are as follows:
- Open the project in CCS
- Right click project name
- New --> Target Config File
	- We need to provide 2 pieces of info:
		1. Connection:
			Check product number of device connecting USB to programmer.
			Ie "Texas Instruments XDS2XX USB Debug Probe"
		2. Board or Device:
			For us this is the TMS320F28377D
-  Lastly, we can actually test our config file
	- Double click the name of the ".ccxml" file
	- Click "Test Connection" Button
	- A window will appear and will tell us whether we succeed