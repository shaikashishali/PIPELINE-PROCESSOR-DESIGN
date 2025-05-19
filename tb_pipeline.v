// tb_pipeline.v
module tb_pipeline;
    reg clk = 0;
    reg reset = 1;

    pipeline_processor uut (.clk(clk), .reset(reset));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_pipeline);

        #10 reset = 0;
        #100 
        $finish;
    end
endmodule
