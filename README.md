# LED Driver

The following design is implemented on Arty Z7-20 FPGA board in Vivado 2019.1.

<img src="LED_Driver.jpg" width=600>

The mem module is initially an 4-bit wide ROM with 8 words. This submodule will be created using a two-dimensional array of a Verilog reg data type and procedural assignment statements.

I/O constraints file for the board is included, and uncommented the required resources for this project. 

![ArtyZ7-20_gif1](https://user-images.githubusercontent.com/74507096/166290742-8dd45218-4872-4b94-9825-34aeb3af1b6f.gif)
