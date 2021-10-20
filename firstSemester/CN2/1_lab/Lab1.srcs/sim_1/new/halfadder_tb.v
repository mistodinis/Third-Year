`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 01:11:14 PM
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb();

    reg x , y;
//    wire s , cOut;
//    Merge si fara

    halfadder instance1(x , y , s , cOut );
    
    initial begin
        #0 x = 0; y = 0;
        #20 x = 0; y = 1;
        #20 x = 1; y = 0;
        #20 x = 1; y = 1;
        #40 $finish;
//        #40 x = unsigned; y = unsigned;
    
    end

endmodule
