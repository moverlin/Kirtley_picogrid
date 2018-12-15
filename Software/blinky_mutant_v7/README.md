# About BlinkyMutant_v7
- The goal of blinky mutant is to blink an LED on the Central controller via clicking a button on a LabView VI.
- Blinky Mutant is a modified version of Pohsu's Central Controller code.
- Originally, Matt Overlin & Colm were trying to modify the TI blinky example, to achieve our goal above.
- It proved to be easier, to simply modify Pohsu's code - the generation of blinky code created this way are now labelled "mutant".

## How to Flash the code?
To flash the code we use CCS Uniflash, as opposed to the debug mode in CCS.
Steps to use Uniflash:
1. Build Code in CCS.
	- This generates a .OUT file located in CPU1_flash folder.
2. Open Uniflash
	- Open Target Configuration-->Browse-->find location of .ccxml file
		- targetConfigs folder, file ending in 79D.ccxml
	- A Window will appear
		- Ignore all of the options - no need to change anything
		- Click Program-->Load Program-->Browse--> go to .OUT file located in CPU1_flash folder
