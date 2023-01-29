module Program_Rom(
	output logic [13:0] Rom_data_out, 
	input [10:0] Rom_addr_in
);

    logic [13:0] data;
    always_comb
        begin
            case (Rom_addr_in)
                10'h0 : data = 14'h3024;
                10'h1 : data = 14'h00A5;
                10'h2 : data = 14'h3015;
                10'h3 : data = 14'h00A4;
                10'h4 : data = 14'h0103;
                10'h5 : data = 14'h00A2;
                10'h6 : data = 14'h0825;
                10'h7 : data = 14'h00A6;
                10'h8 : data = 14'h0824;
                10'h9 : data = 14'h02A6;
                10'ha : data = 14'h0AA2;
                10'hb : data = 14'h1FA6;
                10'hc : data = 14'h2808;
                10'hd : data = 14'h0826;
                10'he : data = 14'h00A1;
                10'hf : data = 14'h0824;
                10'h10 : data = 14'h07A1;
                10'h11 : data = 14'h0824;
                10'h12 : data = 14'h00A5;
                10'h13 : data = 14'h0821;
                10'h14 : data = 14'h00A4;
                10'h15 : data = 14'h1FA4;
                10'h16 : data = 14'h2818;
                10'h17 : data = 14'h281D;
                10'h18 : data = 14'h0824;
                10'h19 : data = 14'h0099;
                10'h1a : data = 14'h0399;
                10'h1b : data = 14'h1F99;
                10'h1c : data = 14'h2804;
                10'h1d : data = 14'h0825;
                10'h1e : data = 14'h00A3;
                10'h1f : data = 14'h3400;
                10'h20 : data = 14'h3400;
                default: data = 14'h0;   
            endcase
        end

     assign Rom_data_out = data;

endmodule
