module half_subtractor(
input x,y,
output d,
output b
);
assign d=(x & !y) | (!x & y);
assign b=!x&y;
endmodule
