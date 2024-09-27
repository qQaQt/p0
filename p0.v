///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFire> <Die::MPF100T> <Package::FCVG484>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module p0(
input clk,

output rr,
output clk2

);



reg clk22 = 0;

reg [20:0] cnt = 0;

//assign clk2 = (cnt > 2600); // 2 ^ (X - 2) 

reg r = 1'b0;

always @(posedge clk) begin
		if (cnt == 400000)		// 2 ^ (X - 1) + 1
		begin
		
			cnt <= 0;
			clk22 <= 0;
		end
		else begin
			cnt <= cnt + 1;
			if (cnt == 200000) clk22 <= 1;
		end
end
assign clk2 = clk22;
reg c = 1;
reg rrr;
reg [7:0] i = 0;
always @(posedge clk2) begin
     
    if (i < 9) begin
        c <= ~c;
        i <= i + 1;
        rrr <= 0;
    end
    else if (i < 29) begin
        i <= i + 1;
        rrr <= 1;
    end
    else
        i <= 0;
end
assign rr = rrr;
endmodule

