`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 01:23:27 PM
// Design Name: 
// Module Name: upOrDown_Counter
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


module upOrDown_Counter(
    clk,
    reset,
    up_down,
    count
    );
    
    input clk,reset,up_down;
    output reg [3:0] count = 0;
    
    always @(posedge (clk) or posedge (reset))
    begin
        if(reset == 1)
            count <= 0;
        else
            if(up_down == 1)
                if(count == 15)
                    count <= 0;
                else
                    count <= count + 1;
            else
                if(count != 0)
                    count <= count - 1;
                    
    end
endmodule
