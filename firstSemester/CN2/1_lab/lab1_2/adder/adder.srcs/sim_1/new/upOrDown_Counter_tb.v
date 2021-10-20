`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 01:29:31 PM
// Design Name: 
// Module Name: upOrDown_Counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module upOrDown_Counter_tb();

    reg clk,reset,up_down;
    wire [3:0] count;
    
    upOrDown_Counter counter(clk,reset,up_down,count);
    
    initial begin
    
        clk = 0;
        forever #5 clk = ~clk;
        
    end
    
    initial begin
    
        #0 reset = 0; up_down = 1;
        #10 reset = 0; up_down = 1;
        #10 reset = 0; up_down = 1;
        #10 reset = 1; up_down = 0;
        #10 reset = 0; up_down = 1;
        #10 reset = 0; up_down = 1;
        #50 reset = 0; up_down = 1;
        #50 reset = 0; up_down = 0;
        
        #50 $finish;

    end
endmodule
