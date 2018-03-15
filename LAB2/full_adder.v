module full_adder(a, b, sum, cin, cout);

input a;
input b;
input cin;
output sum;
output cout;

wire sum1;
wire c_in1;
wire c_out1;

xor(sum1, a, b);
and (c_in1, a, b);
xor (sum, sum1, cin);
and (c_out1, sum1, cin);
or(cout, c_out1, c_in1);

endmodule
