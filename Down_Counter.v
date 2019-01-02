`timescale 100ns / 10ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2018 01:21:53 PM
// Design Name: 
// Module Name: Down_Counter
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

module Down_Counter(clk, load, data, cout, done);
parameter N = 4;
input clk, load;
input [N-1:0] data;
output reg [N-1:0] cout;
output reg done;
always@(posedge clk)
    if(load == 1'b1) begin 
    cout <= data;
    end
always@(posedge clk)
    if (cout != 4'b0000)begin    
    cout = cout - 4'b0001; end
always@(posedge clk)
    if(cout == 4'b0001)begin
        #1 done = 1'b1;
        #1 done = 1'b0;end
    else done = 1'b0;
endmodule
