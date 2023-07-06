`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 09:53:04 PM
// Design Name: 
// Module Name: VGA_Test_TB
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


module VGA_Test_TB();

reg clk_i, rst_i;
wire hsync_o, vsync_o;
wire[3:0] red_o, grn_o, blu_o;

VGA_TEST_TOP T1(.clk_i(clk_i), .rst_i(rst_i),
                .hsync_o(hsync_o), .vsync_o(vsync_o),
                .red_o(red_o), .grn_o(grn_o), .blu_o(blu_o));
initial begin
clk_i = 0;
rst_i = 0;

end 

always #5 clk_i <= ~clk_i;

initial begin
#30 
rst_i <= 1;
#30 
rst_i <= 0;
end

initial #100000 $finish;                
endmodule
