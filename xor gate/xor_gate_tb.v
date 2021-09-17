module xorgate_tb;
reg t_x,t_y;
wire t_z;
xorgate mygate(.x(t_x),.y(t_y),.z(t_z));

initial 
begin
$display("X XOR Y => Z");
$monitor(t_x," XOR ",t_y," => ",t_z);

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