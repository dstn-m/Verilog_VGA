`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 05:11:26 PM
// Design Name: 
// Module Name: VGA_TEST
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


module VGA_TEST(
    input clk_i,
    input disp_active,
    input [10:0] xcol_o, yrow_o, 
    output reg[11:0] color_o
    );

reg[11:0] black = 12'h000;
reg[11:0] red = 12'hF00, blu = 12'h00F, grn = 12'h0F0;

always @(posedge clk_i)
begin
    if(disp_active == 1) begin
        color_o <= blu;
    end
    else begin
        color_o <= black;
    end                 
end    
    
endmodule
