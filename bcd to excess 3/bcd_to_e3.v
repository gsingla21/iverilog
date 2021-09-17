module bcd_to_e3(
input a,b,c,d,
output x,y,z,w
);
assign x=(b&c) | (b&d) | a;
assign y=(!b&c) | (!b&d) | (b&!c&!d);
assign z=(c&d) | (!c&!d);
assign w=!d;
endmodule
