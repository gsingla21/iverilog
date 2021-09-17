module half_adder(
input x,y,
output s,
output c
);
assign s=(x | y) & (!x | !y);
assign c=x&y;
endmodule
