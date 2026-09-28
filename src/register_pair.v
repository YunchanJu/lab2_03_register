`timescale 1ns/1ps
module register_pair(input wire clk,rst,load,transfer,input wire [3:0] data_in,output reg [3:0] stored,value);
always @(posedge clk) if(rst) begin stored<=0;value<=0;end else begin
if(load) stored<=data_in; if(transfer) value<=stored;end
endmodule