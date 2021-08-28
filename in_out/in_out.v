//Module for "In-Out" Circuit
module in_out(
    //inputs
    in1, in2, in3,
    //outputs
    out1, out2
);

//inputs and outputs
input in1, in2, in3;
output out1, out2;

//assign inputs to out
assign out1 = in1 & in2 & in3;
assign out2 = in1 | in2 | in3;  

endmodule
