module top_module( 
    input [99:0] in,
    output [99:0] out
);

    int i;
    always @(*) begin
    	for(i=0;i<100;i=i+1) begin
        	out[99-i]=in[i];
    	end
    end
    
    /*always @(*) begin
		for (int i=0;i<$bits(out);i++)		// $bits() is a system function that returns the width of a signal.
			out[i] = in[$bits(out)-i-1];	// $bits(out) is 100 because out is 100 bits wide.
	end*/
    
endmodule
