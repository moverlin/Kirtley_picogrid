# 3 Inverter Demo
The 3-inverter demo shares power among three-phase inverters using droop control.

It should be noted that this project uses updated versions of Uniflash, CCS and Labview:
- Uniflash version 4.5.0.2056
- CCS version 8.3.0.00009
- Labview 2018 version 18.0 (32-bit)

## How to run the demo

### 1. Hardware Setup
This section just lists the main hardware, other than the microcontrollers and inverter PCBS.
Do not power anything on yet.

RS485 Wiring
- Make sure that the 2 PCBs at either end of the RS485 bus have the 120Ohm termination resistors
	- Matt and Colm spent 2 days trying to figure out why the RS485 communication was so terrible.
- The labelling for RS485 pins is incorrect on Board
	- From top to bottom the pins are: GND, A, B, A, B and NOT GND, A, A, B, B

Power Supply 6010A (1KW power supply)
- This is the main power supply.
- This supplies each three-phase inverter with DC voltage.

30V Power Supplies
- Our Inverter Controller PCBs and Central controller PCBs all use 30V.
- We use 2 of them, because the current required exceeds that of a single power supply.
	- 1 connected to Central Controller (which is also connected to the relay drivers)
	- 1 Connected to everything else (inverters etc.)

### 2. Software Setup
There are 3 software tasks:

1. Program Central Controller:
- Import Central Controller Project located at location below into Code Composer Studio
	- Kirtley_picogrid\Software\3_INV_DEMO_MIKE_DONT_TOUCH_new_CCS - Copy\Central_Control
	- NOTE: Original Location on picogrid laptop is /c/git/MIT-Picogrid/Project/NEW_MG/Firmware/Central_Controller
- Build in Code Composer Studio
- Flash CPU1 of Central Controller using Uniflash (see README.md in software folder located at Kirtley_picogrid\Software for detailed steps)
	- Use targetconfig file for CPU1 in Central Controller code.
	- We do not need to flash CPU2 of the Central Controller

2. Program 3 Inverter Controllers:
- Import both CPU1 & CPU2 projects located at location below into Code Composer Studio
	- Kirtley_picogrid\Software\3_INV_DEMO_MIKE_DONT_TOUCH_new_CCS - Copy\Inveter_RS485
	- Note: Original Location on picogrid laptop is /c/git/MIT-Picogrid/Project/NEW_MG/Firmware/Inveter_RS485
- Select Board Version: CPU1
	- In the CPU1 folder, locate a file named Test_setting.h
	- Change the define variable called 'VERSION' to 0 or 1 depending on PCB version
		- VERSION 0 (corresponds to green board)
		- VERSION 1 (corresponds to blue board)
- Select RS485 Address: CPU2
	- In the CPU2 folder, located a file named RS485.h
	- Change the define variable called ADDR_DEVICE  to 100, 101 or 102 as per physical labelling written on Inverters
- Build Project in Code Composer Studio
- Flash CPU1 & CPU2 using Uniflash
	- Order of flashing doesn't matter
		- see README.md in software folder located at Kirtley_picogrid\Software for detailed steps
		- Use the targetconfig file for CPU1 when flashing with either CPU1 or CPU2
- Repeat the previous steps (building & flashing code) for the 2 remaining inverter controllers, taking care to change the variables VERSION and ADDR_DEVICE.
- Note that when making new demos, we should mainly be changing the CPU1 code of the inverter controllers. Mike wrote his code with the intention that once communication is set up, inverter controller CPU2 code & central controller code do not need to be updated.

3. Open Labview VI
- Open the LabView project located at:  Kirtley_picogrid\Software\3_INV_DEMO_MIKE_DONT_TOUCH_new_CCS-Copy\Inveter_RS485\Labview\Multiple_Inverter_v5_RS485_3invs.vi

### 3. Running the Demo

1. Test Communication

Make sure all microcontrollers are flashed and that the appropriate LabView VI is open (see above).

- Check relay communication:
	- Power On 30V power supply that powers the Central Controller & Relays
	- In the LabView VI, click on the buttons labelled "Relay1, 2, 3"
	- Keep relays 1 and 2 closed.
	- Relay 3 is connected to the constant power load. We keep this closed as sometimes this has issues. I believe it's related to inrush current causing inverters to trip. We can fix these issues if we decide to use it.

- Check RS485 communication:
	- Complete Relay communication test above, and leave 30V supply on. LabView can remain in the same state as after relay communication test.
	- Power On 30V power supply that powers the 3 inverter controllers. There should now be two 30V power supplies on.
	- At this point all microcontrollers should be powered on
	- Check if RS485 communication is 'synchronized':
		- Basically, it can take a few tries for the communication to be stable
			- Supposedly the "polling" the problem
			- The central controller talks to each of the three devices one by one
			- It needs to start in the sequence 1,2,3,1,2,3 etc not 2,3,1 etc
			- So we turn off and on repeatedly until this works.
		- Keep resetting one of the 30V power supplies (usually we reset the one connected to the inverter controllers).
		- We know RS485 communication is stable if we see the following:
			- The yellow LED 2 lights on each inverter controller PCB and on the Central Controller PCB
			- The 14 element array in Labview has the following entries: 111, 0, 100, 100, 100, 0, 100, 100, 100, 0, 100, 100, 100, 222
				- The middle 12 elements/bytes, correspond to 4 bytes received from each of the three inverter controllers:
					- Receive[1-4]: Device 100
					- Receive[5-8]: Device 101
					- Receive[9-12]: Device 102

2. Turn on the inverters correctly
First, we need to setup a few things in Labview:
- In LabView:
	- Make sure Relay 1 and 2 buttons are turned on. Relay 3 is off.
	- Set global Vref to 30
		- I believe this corresponds to the phase to neutral peak-voltage.
	- Set global Si to 100
		- Click "Sn update" button. This button triggers whenever we click or unclick
	- Set Global kp, kq, Xm, Rm to 40, 40, 50, 50
- (1kW) power supply
	- Turn on bench supply, so that outlets are live.
	- Turn on both power supply switches
		- 1kW power supply has 2 switches: one on back and one on front.
	- Ramp up voltage to 80V
		- Note that each inverter has an LED which lights up when the DC link voltage exceeds about 75V.
- In LabView: Presses On button (The one in top left called "All on/off")
Now, all inverters should be on, and synchronized. The setup makes some interesting high frequency noises.

Question: Why do we increase power supply first, before increasing global vref?
- Increasing power first increases amount of voltage inverter can generate
- If we increase voltage ref first, then we could get overmodulation: Ie inverter generates square wave

3. Increase Inverter voltage
We increase the DC link voltage and the LabView command "global Vref" step-by-step.
- Ramp up 1kW power supply voltage to 100V
- In LabView, set Global vref to 45
- Ramp up 1kW power supply voltage to 130V
- In LabView, set Global vref to 58
Now, our system is at the voltage level Mike did his experiments at.

4. Play with Droop Ratios
- Now we are free to play around with the droop values
- In LabView, set S1 = 33, S2 = 66, S3 = 100. Then click "Sn update" button
	- Note how the values of P1, P2 & P3 change
