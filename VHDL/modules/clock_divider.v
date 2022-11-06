`timescale 1ns / 1ps

/* include in main file:
`timescale 1ns / 1ps

module top(
    input clk, 
    output led
    );
    
clock_divider wrapper (
.clk(clk),
.divided_clk(led)
);

endmodule
*/


module clock_divider(
    input clk,
    output reg divided_clk = 0
    );
    
localparam div_value = 999999;

integer counter_value = 0;

always@ (posedge clk)
begin
    if(counter_value == div_value)
        counter_value <= 0;
    else
        counter_value <= counter_value+1;
end

always@ (posedge clk)
begin
    if(counter_value == div_value)
        divided_clk <= ~divided_clk;
    else
        divided_clk <= divided_clk;
end

endmodule
