module top_module( 
    input [2:0] in,
    output [1:0] out );

    int ans;
    always @(*) begin 
        ans=0;
        for(int i=0;i<3;i++) begin
            if(in[i]) ans++;
        end
        out=ans;
    end
    
endmodule
