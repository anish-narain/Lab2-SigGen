# Task 2 #
**Firstly I had to create a new structure using a dual port ROM.**

<insert changes to code and rough drawing of new sinegen model>

**Creating a phase difference using a constant(offsetting the X-Values)**\
To implement this, we want to be outputting an address "further down" the sinusoid on the same cycle. According to the instructions, offsetting the address by 64 meant the two waveforms will be 90 degrees apart. Why? Because 256 addresses represents 360 degrees. Dividing both by 4 gives 64 addresses represents 90 degrees. I made this change in the rom.sv file:

<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198568188-54e6bebf-97f4-4fa6-aa7a-c0a358cbbdc1.png">

This produced the following waveform:
  
<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198567994-a75e288c-585d-4c81-901b-73a0947133ad.png">

**Creating a phase difference using vbdValue()(offsetting the X-Values)**\
 
**Offsetting Y-Values**\
To implement this I did not make any changes between addr1 and addr2. However I offsetted the dout generated for dout1 when it gets plotted in the testbench code.
  
<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198567459-03f05ecf-f9e0-4ef6-b6cf-b2705c6a1913.png">

This produced the following waveform:
  
<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198567207-0dfbff97-166e-4f1d-bb92-d6c758d16111.png">
