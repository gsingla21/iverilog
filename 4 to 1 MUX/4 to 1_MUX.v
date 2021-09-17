module MUX_4_1(
input[3:0] input_lines,
input[1:0] select_lines,
output z
);
reg z;
wire[1:0] select_lines;
wire[3:0] input_lines;
always @(input_lines or select_lines)
case(select_lines)
2'b00: z=input_lines[0];
2'b01: z=input_lines[1];
2'b10: z=input_lines[2];
2'b11: z=input_lines[3];

endcase
endmodule
