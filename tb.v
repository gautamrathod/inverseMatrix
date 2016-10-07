`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//Name : Gautam Rathod M.
//Roll : 201501086
//			
//////////////////////////////////////////////////////////////////////////////////
module InverseA(ram1,start,clk,write);
module tb;

	// Inputs
	reg start;
	reg clk;

	// Outputs
	wire [31:0] ram1;
	wire [31:0] write;

	// Instantiate the Unit Under Test (UUT)
	InverseMatrix uut (
		.ram1(ram1), 
		.start(start), 
		.clk(clk), 
		.write(write)
	);

	initial begin
		// Initialize Inputs
		start = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always
	begin
		#1 clk = ~clk; 
	end
    
endmodule

