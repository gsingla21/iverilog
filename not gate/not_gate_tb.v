module notgate_tb;
wire t_y;
reg t_x;
notgate mygate(.x(t_x),.y(t_y));

initial 
begin
$display("Not X => Y");
$monitor("Not ",t_x," => ",t_y);

t_x=1'b0;

#5
t_x=1'b1;

end
endmodule