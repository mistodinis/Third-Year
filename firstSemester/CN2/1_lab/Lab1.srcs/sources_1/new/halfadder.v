`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 01:03:09 PM
// Design Name: 
// Module Name: halfadder
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


module halfadder(
    x , y , s , cOut
    );
    
    input  x , y;
    output  s , cOut;
    wire s1,s2,s3;
    
    nand NAND_C(s2, s3 , y);
    nand NAND_A(s3,x,y);
    nand NAND_B(s1, x , s3);
    nand NAND_D(s,s1,s2);
    
    assign cOut =  ~s3;
    
//    Tema pentru tura viitoare 
//    Implementare mux 4:1
   
    
    
endmodule
