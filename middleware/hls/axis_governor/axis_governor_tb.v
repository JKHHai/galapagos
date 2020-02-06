`timescale 1ns / 1ps

/*
testbench_template.v

Replace innards with desired logic
*/

`include "axis_governor.v"

module testbench_template;
	reg clk;
    //Other variables connected to your instance
    
    integer fd, dummy;
    
    initial begin
        $dumpfile("axis_governor.vcd");
        $dumpvars;
        $dumplimit(512000);
        
        clk <= 0;
        //Initial values for your other variables
        
        fd = $fopen("axis_governor_drivers.mem", "r");
        if (fd == 0) begin
            $display("Could not open file");
            $finish;
        end
        
        while ($fgetc(fd) != "\n") begin
            if ($feof(fd)) begin
                $display("Error: file is in incorrect format");
                $finish;
            end
        end
    end
    
    always #5 clk <= ~clk;
    
    always @(posedge clk) begin
        if ($feof(fd)) begin
            $display("Reached end of drivers file");
            #20
            $finish;
        end
        
        #0.01
        dummy = $fscanf(fd, "%F%O%R%M%A%T", /* list of variables */);
    end

    axis_governor DUT (
        .clk(clk),
        ...
    );


endmodule
