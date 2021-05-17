module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    reg temp;
    always @(*) begin
        temp=cin;
        for(int i=0;i<100;i++) begin
            sum[i]=a[i]^b[i]^temp;
            cout[i]=(a[i]&b[i]) | (a[i]&temp) | (b[i]&temp);
            temp=cout[i];
        end
    end
    
endmodule
