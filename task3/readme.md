# Task 3 #

* In this task the goal is to capture real audio signals using the microphone/amplifier module on VBuddy. 
* The samples are written to a dual-port RAM in successive locations (you start with address 0 + offset)
* At the same time samples from the RAM are read in successive locations (starting from address 0)
* The offset works because we can't be writing and reading simultaneously, therefore there needs to be a delay between writing and reading. Furthermore, it's the writing that should be offsetted not the reading because we can't be reading things that haven't been written on yet.

## Steps to Complete ##

1. Create dual-port RAM *ram2ports.sv*; ensure write address is offsetted from read address. The value of the offset should be set by the rotary encoder using vbdValue()
2. Combine the RAM component with counter using a top-level module, *sigdelay.sv*
3. Copy and paste the testbench, *sigdelay_tb.cpp*. This testbench contains the code to capture the audio signal using two new functions: vbdInitMicIn() and vbdMicValue(). Then use vbdPlot() to display the data as a plotting on the Vbuddy display.

## Step 1 ##
Dual-port Ram:
[Annotate image in OneNote and add]

## Step 2 ##
Top-level module:
[Annotate image in OneNote and add]

## Step 3 ##
Testbench:
[Annotate image in OneNote and add]

## Output ##

**Beginning (no tone produced, just background noise)**

<img width="550" alt="image" src="https://user-images.githubusercontent.com/69715492/198878650-963e4446-366b-4586-802f-bcb346ed3c3f.png">

Delay due to write being offsetted by $33?

**Response when sine wave produced by tone generator**

<img width="550" alt="image" src="https://user-images.githubusercontent.com/69715492/198878727-27cfe10a-de78-419e-aa54-173cb9035a27.png">

**Response when square produced by tone generator**

<img width="550" alt="image" src="https://user-images.githubusercontent.com/69715492/198878757-0bfabaed-842f-466c-adbc-dcc67f36557b.png">
