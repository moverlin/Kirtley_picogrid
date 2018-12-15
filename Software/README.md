# Software Tips
Programming with TI's code composer studio (CCS) is certainly not intuitive.
One often has to follow a very specific set of sequential steps, that are not at all obvious.
This is a collection of tips we have learned along the way.

Here is the list of topics we discuss:

## The Example
Here's an exmpale of a link.

## How to safely run & edit blinky on the Delfino?
Suppose you wanted to use the Blinkey example that TI provide in CCS.
How can you copy this project, and modify it, without modifying the original?  
Make sure these first 2 steps are already done:
1. Correctly copy file  to workspace (see full details below)
2. Target Configuration file setup (see full details below)  

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

There are 2 methods to correctly copy. We reccommend method 1, but we may need to resort to method 2 at times:
1. Copy & Paste in CCS Environment
- Steps:
	- Open the project you wish to copy in CCS
	- Right click on project name, and then click copy.  
	- Then, paste project into the workspace
- *WARNING*:  When setting up CCS for the very first time, this method may not work.
	- Initially, Matt & Colm spent 4+ hours attempting this method when simply trying to get the basic blinky working, but couldn't get it to work.
	- We had an issue where all of the C files in the copied project were "linked files" as apposed to "C Source" files.
		- *NOTE:* Right click on main file in project and check properties to see if it's a linked file or not.
	- This meant that when we made changes to our copied project, the orignal project also changed.
- To solve this issue we were forced to initially follow method 2 described below.
	- This kept the properties of the main.c file etc as C source files
	- For every subsequent copy of the latest project, we were able to use the simple method 1 (copy & paste in CCS).

2. Copy & Paste In Windows Explorer
- Steps:
	- Open windows explorer:
		- Copy the project you wish to duplicate.
		- Paste this project in the desired windows explorer location.
	- Open CCS:
		- Best practise is to change name of original project in CCS.
			- If the original project is open in CCS, and has the same name as the one we are about to import to our workspace, then we will get an error.
		- In CCS: File-->Switch Workspace-->Other…
			- Browse to whatever folder in Windows you want to use. Eg MIT-Pico-Grid/Software
		- In CCS: File-->Import-->C/C++ --> CCS Projects. Click Next
			- A new window appears
			- Click Browse in order to select search directory 
			- Select folder where the project we wish to copy (eg TI example) is located
				- Recall  For TI examples:
					- C: ti/ControlSuite/device_support/F2837xD/v210/F2837xD_examples_Cpu1
					- Or C: ti/ControlSuite/device_support/F2837xD/v210/F2837xD_examples_Dual
			- Once you select either of above folders, a bunch of "discovered projects" will appear
			 	- Select the discovered project folder you wish to use
				- *NOTE:* Check boxes as follows (this may not matter that much...)
					- [x] Automatically import referenced projects found in search directory
					- [ ] Copy projects into workspace
Finish

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
	- [Example linko](##the-example)
