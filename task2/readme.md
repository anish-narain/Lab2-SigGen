# Task 2 #
**Firstly I had to create a new structure using a dual port ROM.**

<insert changes to code and rough drawing of new sinegen model>

**Creating a phase difference using a constant (offsetting the X-Values)**\
To implement this, we want to be outputting an address "further down" the sinusoid on the same cycle. According to the instructions, offsetting the address by 64 meant the two waveforms will be 90 degrees apart. Why? Because 256 addresses represents 360 degrees. Dividing both by 4 gives 64 addresses represents 90 degrees. I made this change in the rom.sv file:

<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198568188-54e6bebf-97f4-4fa6-aa7a-c0a358cbbdc1.png">

This produced the following waveform:
  
<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198567994-a75e288c-585d-4c81-901b-73a0947133ad.png">

**Creating a phase difference using vbdValue()**\
First I changed the counter module because I want it to increment using a constant rather than the incr parameter. This is because I will be using the incr parameter to offset the address and I don't want to change the frequency while offsetting the address as it would be difficult to view the phase difference. I set the incr to 3 as this produces a nice waveform to view.

<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198572841-d744e030-9e0a-4ad9-ae8e-ab182136c0b3.png">

Then I changed the sinegen module so that the addr1 is offsetted by incr. Since top->incr = vbdValue() in the testbench function, this means the addr1 is offsetted by the vbdValue(). 

<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198573252-24f2ba75-d5ae-4316-81d1-68c13f36e54d.png">

This allowed me to change the phase using the toggle button:

V13:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198573669-ebb434cc-481c-4e3b-9f8f-79f630842c4e.png">

V70:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198573739-d5d0f2ea-53f0-4837-ad53-a691f65ad0aa.png">

V100:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198573770-bfb70c3e-b640-476d-a2bc-112200edaa6b.png">

NOTE: I could have also implemented this by adding an additional parameter in ROM and setting it = vbdValue() in the testbench function and then offsetting one of the addresses by this parameter.
  
**Offsetting Y-Values**\
To implement this I did not make any changes between addr1 and addr2. However I offsetted the dout generated for dout1 when it gets plotted in the testbench code.
  
<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198567459-03f05ecf-f9e0-4ef6-b6cf-b2705c6a1913.png">

This produced the following waveform:
  
<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198567207-0dfbff97-166e-4f1d-bb92-d6c758d16111.png">
