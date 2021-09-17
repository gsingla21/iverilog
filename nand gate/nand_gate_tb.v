module nandgate_tb;
reg t_x,t_y;
wire t_z;
nandgate mygate(.x(t_x),.y(t_y),.z(t_z));

initial 
begin
$display("X NAND Y => Z");
$monitor(t_x," NAND ",t_y," => ",t_z);

t_x=1'b0;
t_y=1'b0;

#5
t_x=1'b0;
t_y=1'b1;

#5
t_x=1'b1;
t_y=1'b0;

#5
t_x=1'b1;
t_y=1'b1;

end
endmodule