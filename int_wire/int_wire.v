//Module for intermediate wire - Ex. 2
module int_wire(
    in1, in2, in3,
    out1, out2
);

//declare inputs and outputs
input in1, in2, in3;
output out1, out2;

//Combinatorial Logic
wire temp;
assign temp = in1 & in2;
assign out1 = temp & in3;
assign out2 = temp | in3;

endmodule
