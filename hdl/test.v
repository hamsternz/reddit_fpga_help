module Test( 
    input clk, 
    input rst, 
    output locked, 
    output reg q 
); 

wire clk_1; clk_wiz_0 instance_name ( 
    // Clock out ports 
    .clk_out1(clk_1), // output clk_out1 
    // Status and control signals 
    .reset(rst),      // input reset
    .locked(locked),  // output locked 
    // Clock in ports 
    .clk_in1(clk));   // input clk_in1

always@(posedge clk_1) 
    begin
        if(rst)
            q<=0;
        else
            q<=q+1;
    end
    
endmodule