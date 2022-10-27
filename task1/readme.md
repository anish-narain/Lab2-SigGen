# Task 1 #

## Step 1 ##
In this step I had to create the rom.sv component:
<img width="720" alt="image" src="https://user-images.githubusercontent.com/69715492/198234970-feee656b-5643-4f28-9d59-657c69658909.png">

Structure of Code:
* define parameters (ADDRESS_WIDTH and DATA_WIDTH). The reason we use parameters (which are like variables) is so that when we instantiate the module in code [rom sineRom(clk, 10, 12)] this would mean the ADDRESS_WIDTH and DATA_WIDTH would get overwritten with new values 10 and 12 respectively. This allows reusablity of modules (as opposed to using 8 and 8 throughout the code). 
* define input and output (INPUTS: clock signal, address of ROM; OUTPUTS: data-value in ROM address). The notation [(ADDRESS_WIDTH-1):0] means the input should be in the form [(8-1):0] or [7:0].
* (logic) used to define a binary signal (logic signal) which is a signal type (rather than datatype like int)

<img width="720" alt="image" src="https://user-images.githubusercontent.com/69715492/198246790-f83e7f1c-627e-4ecf-9666-67acc7f96f0a.png">

The $readmemh(.) function allows ROM to be loaded with contents stored in file "sinerom.mem". Thus the ROM is now filled with the following Hexadecimal numbers:

<img width="400" alt="image" src="https://user-images.githubusercontent.com/69715492/198247560-c6c38718-7008-49e1-aef2-843babaa99e7.png">

The code is generated using sinegen.py

<img width="800" alt="image" src="https://user-images.githubusercontent.com/69715492/198248009-4bb817bb-fd06-4ca7-902a-4bc554b688d2.png">

Analysing the python code:

<img width="800" alt="image" src="https://user-images.githubusercontent.com/69715492/198250772-b6f88b8d-76f4-441a-82f4-a685964e96aa.png">


## Step 2 ##
In this step I created the sinegen.sv module:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198255686-a3d31f3f-cdbe-4a21-a903-a7fa1343ac10.png">

Which produces the following module:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198255894-6018ed82-1af5-4b69-ba98-56f43dc90a88.png">

## Step 3 ##
