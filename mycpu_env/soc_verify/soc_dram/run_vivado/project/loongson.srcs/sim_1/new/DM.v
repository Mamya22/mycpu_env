`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/10 20:44:33
// Design Name: 
// Module Name: DM
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


module DM(

    );
    reg clk,we;
    reg [31:0] data;
    reg [31:0] addr;
    wire [31:0] spo;
    initial begin
         clk = 0;
         # 55 begin
         data = 4;
         addr = 3;
         we =1;
         end
         # 10
         data = 6;
         # 10
         we =0;
    end
    data_ram dataass(
    .a(addr),
    .spo(spo),
    .d(data),
    .clk(clk),
    .we(we));
    always #5 clk=~clk;
endmodule
