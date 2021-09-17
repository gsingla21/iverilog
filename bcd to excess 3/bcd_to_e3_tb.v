module bcd_to_e3_tb;
reg t_a,t_b,t_c,t_d;
wire t_x,t_y,t_z,t_w;
bcd_to_e3 mygate(.a(t_a),.b(t_b),.c(t_c),.d(t_d),.x(t_x),.y(t_y),.z(t_z),.w(t_w));

initial 
begin
$display("\nBCD to Excess 3 =>\n X=(b&c) | (b&d) | a\n Y=(!b&c) | (!b&d) | (b&!c&!d)\n Z=(c&d) | (!c&!d)\n W=!d\n");
$display("A  B  C  D => X: Y: Z: W:\n");
$monitor(t_a,"  ",t_b,"  ",t_c,"  ",t_d," => ",t_x,"  ",t_y,"  ",t_z,"  ",t_w);

t_a=1'b0;
t_b=1'b0;
t_c=1'b0;
t_d=1'b0;

#5
t_a=1'b0;
t_b=1'b0;
t_c=1'b0;
t_d=1'b1;

#5
t_a=1'b0;
t_b=1'b0;
t_c=1'b1;
t_d=1'b0;

#5
t_a=1'b0;
t_b=1'b0;
t_c=1'b1;
t_d=1'b1;

#5
t_a=1'b0;
t_b=1'b1;
t_c=1'b0;
t_d=1'b0;

#5
t_a=1'b0;
t_b=1'b1;
t_c=1'b0;
t_d=1'b1;

#5
t_a=1'b0;
t_b=1'b1;
t_c=1'b1;
t_d=1'b0;

#5
t_a=1'b0;
t_b=1'b1;
t_c=1'b1;
t_d=1'b1;

#5
t_a=1'b1;
t_b=1'b0;
t_c=1'b0;
t_d=1'b0;

#5
t_a=1'b1;
t_b=1'b0;
t_c=1'b0;
t_d=1'b1;

end
endmodule