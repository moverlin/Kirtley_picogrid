# Software Tips
Programming with TI's code composer studio is certainly not intuitive.
One often has to follow a very specific set of sequential steps, that are not at all obvious.
This is a collection of tips we have learned along the way.

## How to create a Target Configuration file
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
			TMS320F28377D
-  Lastly, we can actually test our config file
	- Double click the name of the ".ccxml" file
	- Click "Test Connection" Button
A window will appear and will tell us whether we succeed