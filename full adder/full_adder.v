module full_adder(
input x,y,z,
output s,
output c
);
assign s=(!x & !y & z) | (!x & y & !z) | (x & !y & !z) | (x & y & z);
assign c=x&y | y&z | x&z;
endmodule
