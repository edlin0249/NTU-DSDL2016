module binary_adder(a, b, sum);
input [5:0] a;
input [5:0] b;
output [5:0] sum;

wire [5:0] c_out;

full_adder fa1(a[0], b[0], sum[0], 0, c_out[0]);
full_adder fa2(a[1], b[1], sum[1], c_out[0], c_out[1]);
full_adder fa3(a[2], b[2], sum[2], c_out[1], c_out[2]);
full_adder fa4(a[3], b[3], sum[3], c_out[2], c_out[3]);
full_adder fa5(a[4], b[4], sum[4], c_out[3], c_out[4]);
full_adder fa6(a[5], b[5], sum[5], c_out[4], c_out[5]);

endmodule
