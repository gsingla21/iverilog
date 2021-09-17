module MUX_4_1_tb;
	reg[1:0] select_lines;
	reg[3:0] input_lines;
	wire z;
	MUX_4_1 my_mux(input_lines,select_lines,z);
	integer i;
	initial 
	begin
		$display("\n4:1 MUX\n Z=(!a&!b)&d0 | (!a&b)&d1 | (a&!b)&d2 | (a&b)&d3\n");
		for(i=0;i<4;i=i+1) begin
			select_lines=i;
			for(input_lines=0;input_lines<16;input_lines=input_lines+1) begin
				$monitor(select_lines,"  ",input_lines," => ",z);
				#10;
			end
			#10;
		end
	end
endmodule