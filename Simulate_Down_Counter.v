`timescale 100ns / 10ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 02:11:12 PM
// Design Name: 
// Module Name: Simulate_Down_Counter
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


module Simulate_Down_Counter();
reg clk, load;
reg [3:0] data;
wire [3:0]cout;
wire done;
always #0.5 clk = ~clk;
initial
    begin
        clk = 1;
        load = 1;
        data = 4'b0011;
        #1 load = 0;
        data = 0;
        #7.5 $finish;
    end

Down_Counter A(.clk(clk), .load(load), .data(data), .cout(cout), .done(done));
endmodule
