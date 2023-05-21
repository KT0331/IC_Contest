
`timescale 1ns/10ps  //This code is written by ting

module  CONV(
	input		  clk,		//postive trigger
	input		  reset,	//active high asynchronous
	output	reg	  busy, 	//start=>high, end=>low	
	input  		  ready,	//if high it can transmission
			
	output reg [11:0] iaddr,	//demand address
	input  [19:0] idata,		//data
	//---------------------------------------------------------------
	output reg	   cwr,
	output reg [11:0] caddr_wr,
	output reg [19:0] cdata_wr,
	
	output	reg 	  crd,
	output  reg [11:0] caddr_rd,
	input  [19:0] cdata_rd,
	
	output reg [2:0]  csel
	);
	
	reg [1:0]  L0_active;		//0=>reset, 1=>active, 2=>end
	reg [1:0]  L1_active;		//0=>reset, 1=>active, 2=>end
	reg [11:0] counter1 ;		//convolution center
	reg [3:0]  counter2 ;		//what step at each counter1
	reg [11:0] L1 ;				//assign L1 output address
	reg [11:0] L1_counter1 ;	//MAX-pooling first input data
	reg [2:0]  L1_counter2 ;	//what step at each L1_counter1
	reg [39:0] multip ;
	reg [39:0] conv_result ;	//before approximate
	reg [19:0] pre_relu ;		//after approximate
	reg [19:0] MAX ;			//MAX in each step
	wire [19:0] kernel [0:8] ;
		
	//kernel
	assign kernel[0] = 'h0a89e ;
	assign kernel[1] = 'h092d5 ;
	assign kernel[2] = 'h06d43 ;
	assign kernel[3] = 'h01004 ;
	assign kernel[4] = ~('hf8f71) + 'd1 ;
	assign kernel[5] = ~('hf6e54) + 'd1 ;
	assign kernel[6] = ~('hfa6d7) + 'd1 ;
	assign kernel[7] = ~('hfc834) + 'd1 ;
	assign kernel[8] = ~('hfac19) + 'd1 ;
	
	//control busy signal
	always @ (posedge clk, posedge reset)
		begin
			if(reset == 'b1)
				busy <= 'b0 ;
			else if(ready == 'b1)
				busy <= 'b1 ;
			else if(L1_active == 'd2)
				busy <= 'b0 ;
			else
				busy <= busy ;
		end
	
//---Layer0---
	
	//counter clock
	always @ (posedge clk, posedge reset)
		begin
			if (reset)
				begin
					counter1 <= 'b0 ;
					counter2 <= 'b0 ;
					L0_active <= 'b0 ;
				end
			else if(counter2 == 'd15)
				if(counter1 == 'd4095)
					begin
						counter1 <= counter1 ;
						counter2 <= counter2 ;
						L0_active <= 'd2 ;
					end
				else
					begin
						counter1 <= counter1 + 'b1 ;
						counter2 <= 'b0;
						L0_active <= L0_active ;
					end
			else
				begin
					counter1 <= counter1 ;
					counter2 <= counter2 + 'b1 ;
					L0_active <= 'b1 ;
				end
		end
	
		
	
	//data address
	always @ (posedge clk, posedge reset)
		begin
			if (reset)
				iaddr <= 'b0 ;
			else
				if(counter1 == 'b0)
					case(counter2)
						'd1 : iaddr <= 'd0 ;
						'd2 : iaddr <= 'd1 ;
						'd3 : iaddr <= 'd64 ;
						default : iaddr <= 'd65 ;	//clock3
					endcase
				else if(counter1 == 'd4032)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd64 ;
						'd2 : iaddr <= counter1 - 'd63 ;
						'd3 : iaddr <= counter1 ;
						default : iaddr <= counter1 + 'd1 ;	//clock3
					endcase
				else if(counter1 == 'd63)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd1 ;
						'd2 : iaddr <= counter1 ;
						'd3 : iaddr <= counter1 + 'd63 ;
						default : iaddr <= counter1 + 'd64 ;	//clock3
					endcase
				else if(counter1 == 'd4095)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd65 ;
						'd2 : iaddr <= counter1 - 'd64 ;
						'd3 : iaddr <= counter1 - 'd1 ;
						default : iaddr <= counter1 ;	//clock3
					endcase
				else if(counter1 <= 'd63)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd1 ;
						'd2 : iaddr <= counter1 ;
						'd3 : iaddr <= counter1 + 'd1 ;
						'd4 : iaddr <= counter1 + 'd63 ;
						'd5 : iaddr <= counter1 + 'd64 ;
						default : iaddr <= counter1 + 'd65 ;	//clock5
					endcase
				else if((counter1 % 'd64) == 'b0)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd64 ;
						'd2 : iaddr <= counter1 - 'd63 ;
						'd3 : iaddr <= counter1 ;
						'd4 : iaddr <= counter1 + 'd1 ;
						'd5 : iaddr <= counter1 + 'd64 ;
						default : iaddr <= counter1 + 'd65 ;	//clock5
					endcase
				else if((counter1 % 'd64) == 'd63)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd65 ;
						'd2 : iaddr <= counter1 - 'd64 ;
						'd3 : iaddr <= counter1 - 'd1 ;
						'd4 : iaddr <= counter1 ;
						'd5 : iaddr <= counter1 + 'd63 ;
						default : iaddr <= counter1 + 'd64 ;	//clock5
					endcase
				else if(counter1 >= 'd4032)
					case(counter2)
						'd1 : iaddr <= counter1 - 'd65 ;
						'd2 : iaddr <= counter1 - 'd64 ;
						'd3 : iaddr <= counter1 - 'd63 ;
						'd4 : iaddr <= counter1 - 'd1 ;
						'd5 : iaddr <= counter1 ;
						default : iaddr <= counter1 + 'd1 ;	//clock5
					endcase
				else
					case(counter2)
						'd1 : iaddr <= counter1 - 'd65 ;
						'd2 : iaddr <= counter1 - 'd64 ;
						'd3 : iaddr <= counter1 - 'd63 ;
						'd4 : iaddr <= counter1 - 'd1 ;
						'd5 : iaddr <= counter1 ;
						'd6 : iaddr <= counter1 + 'd1 ;
						'd7 : iaddr <= counter1 + 'd63 ;
						'd8 : iaddr <= counter1 + 'd64 ;
						default : iaddr <= counter1 + 'd65 ;	//clock8
					endcase
		end
	
	//convolution
	always @ (posedge clk, posedge reset)
		begin
			if(reset)
				multip <= 'd0 ;
			else
				if(counter1 == 'b0)
					case(counter2)
						'd2 : multip <= idata * kernel[4] ;
						'd3 : multip <= idata * kernel[5] ;
						'd4 : multip <= idata * kernel[7] ;
						'd5 : multip <= idata * kernel[8] ;
						default : multip <= multip ;
					endcase
				else if(counter1 == 'd4032)
					case(counter2)
						'd2 : multip <= idata * kernel[1] ;
						'd3 : multip <= idata * kernel[2] ;
						'd4 : multip <= idata * kernel[4] ;
						'd5 : multip <= idata * kernel[5] ;
						default : multip <= conv_result ;
					endcase
				else if(counter1 == 'd63)
					case(counter2)
						'd2 : multip <= idata * kernel[3] ;
						'd3 : multip <= idata * kernel[4] ;
						'd4 : multip <= idata * kernel[6] ;
						'd5 : multip <= idata * kernel[7] ;
						default : multip <= conv_result ;
					endcase
				else if(counter1 == 'd4095)
					case(counter2)
						'd2 : multip <= idata * kernel[0] ;
						'd3 : multip <= idata * kernel[1] ;
						'd4 : multip <= idata * kernel[3] ;
						'd5 : multip <= idata * kernel[4] ;
						default : multip <= conv_result ;
					endcase
				else if(counter1 <= 'd63)
					case(counter2)
						'd2 : multip <= idata * kernel[3] ;
						'd3 : multip <= idata * kernel[4] ;
						'd4 : multip <= idata * kernel[5] ;
						'd5 : multip <= idata * kernel[6] ;
						'd6 : multip <= idata * kernel[7] ;
						'd7 : multip <= idata * kernel[8] ;
						default : multip <= conv_result ;
					endcase
				else if((counter1 % 'd64) == 'b0)
					case(counter2)
						'd2 : multip <= idata * kernel[1] ;
						'd3 : multip <= idata * kernel[2] ;
						'd4 : multip <= idata * kernel[4] ;
						'd5 : multip <= idata * kernel[5] ;
						'd6 : multip <= idata * kernel[7] ;
						'd7 : multip <= idata * kernel[8] ;
						default : multip <= conv_result ;
					endcase
				else if((counter1 % 'd64) == 'd63)
					case(counter2)
						'd2 : multip <= idata * kernel[0] ;
						'd3 : multip <= idata * kernel[1] ;
						'd4 : multip <= idata * kernel[3] ;
						'd5 : multip <= idata * kernel[4] ;
						'd6 : multip <= idata * kernel[6] ;
						'd7 : multip <= idata * kernel[7] ;
						default : multip <= conv_result ;
					endcase
				else if(counter1 >= 'd4032)
					case(counter2)
						'd2 : multip <= idata * kernel[0] ;
						'd3 : multip <= idata * kernel[1] ;
						'd4 : multip <= idata * kernel[2] ;
						'd5 : multip <= idata * kernel[3] ;
						'd6 : multip <= idata * kernel[4] ;
						'd7 : multip <= idata * kernel[5] ;
						default : multip <= conv_result ;
					endcase
				else
					case(counter2)
						'd2 :  multip <= idata * kernel[0] ;
						'd3 :  multip <= idata * kernel[1] ;
						'd4 :  multip <= idata * kernel[2] ;
						'd5 :  multip <= idata * kernel[3] ;
						'd6 :  multip <= idata * kernel[4] ;
						'd7 :  multip <= idata * kernel[5] ;
						'd8 :  multip <= idata * kernel[6] ;
						'd9 :  multip <= idata * kernel[7] ;
						'd10 : multip <= idata * kernel[8] ;
						default : multip <= conv_result ;
					endcase
		end
		
	always @ (posedge clk, posedge reset)
		begin
			if(reset)
				conv_result <= 'd0 ;
			else
				if(counter1 == 'b0)
					case(counter2)
						'd3 : conv_result <= ~multip + 'b1 ;
						'd4 : conv_result <= conv_result + (~multip + 'b1) ;
						'd5 : conv_result <= conv_result + (~multip + 'b1) ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if(counter1 == 'd4032)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + multip ;
						'd5 : conv_result <= conv_result + (~multip + 'b1) ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if(counter1 == 'd63)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + (~multip + 'b1) ;
						'd5 : conv_result <= conv_result + (~multip + 'b1) ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if(counter1 == 'd4095)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + multip ;
						'd5 : conv_result <= conv_result + multip ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if(counter1 <= 'd63)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + (~multip + 'b1) ;
						'd5 : conv_result <= conv_result + (~multip + 'b1) ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						'd7 : conv_result <= conv_result + (~multip + 'b1) ;
						'd8 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if((counter1 % 'd64) == 'b0)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + multip ;
						'd5 : conv_result <= conv_result + (~multip + 'b1) ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						'd7 : conv_result <= conv_result + (~multip + 'b1) ;
						'd8 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if((counter1 % 'd64) == 'd63)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + multip ;
						'd5 : conv_result <= conv_result + multip ;
						'd6 : conv_result <= conv_result + (~multip + 'b1) ;
						'd7 : conv_result <= conv_result + (~multip + 'b1) ;
						'd8 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else if(counter1 >= 'd4032)
					case(counter2)
						'd3 : conv_result <= multip ;
						'd4 : conv_result <= conv_result + multip ;
						'd5 : conv_result <= conv_result + multip ;
						'd6 : conv_result <= conv_result + multip ;
						'd7 : conv_result <= conv_result + (~multip + 'b1) ;
						'd8 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
				else
					case(counter2)
						'd3 :  conv_result <= multip ;
						'd4 :  conv_result <= conv_result + multip ;
						'd5 :  conv_result <= conv_result + multip ;
						'd6 :  conv_result <= conv_result + multip ;
						'd7 :  conv_result <= conv_result + (~multip + 'b1) ;
						'd8 :  conv_result <= conv_result + (~multip + 'b1) ;
						'd9 :  conv_result <= conv_result + (~multip + 'b1) ;
						'd10 :  conv_result <= conv_result + (~multip + 'b1) ;
						'd11 : conv_result <= conv_result + (~multip + 'b1) ;
						default : conv_result <= conv_result ;
					endcase
		end
	
	//add bias
	always @ (posedge clk, posedge reset)
		begin
			if(reset)
				begin
					pre_relu <= 'd0 ;
				end
			else
				if(counter2 == 'd13)
					pre_relu <= {conv_result[39], conv_result[34:32], conv_result[31:16]} + conv_result[15] + 'h01310 ;
				else
					pre_relu <= pre_relu ;
		end
		
	//relu and output to memory L0 and input to do Layer1
	always @ (posedge clk, posedge reset)
		begin
			if(reset)
				begin
					csel <= 'd0 ;
					cwr <= 'd0 ;
					caddr_wr <= 'd0 ;
					cdata_wr <= 'd0 ;
				end
			else if(L0_active == 'b1)
			begin
			if(counter2 == 'd14)
				begin
					csel <= 'b1 ;
					cwr <= 'd1 ;
					caddr_wr <= counter1 ;
					cdata_wr <= (pre_relu[19] ==  0) ? pre_relu : 'b0 ;
				end
			else
				begin
					csel <= 'd0 ;
					cwr <= 'd0 ;
					caddr_wr <= 'd0 ;
					cdata_wr <= 'd0 ;
				end
			end
			else if((L1_active == 'b1) && (L0_active == 'd2))
			begin
			if(L1_counter2 < 'd6)
				begin
					csel <= 'd1 ;
					cwr <= 'd0 ;
					caddr_wr <= 'd0 ;
					cdata_wr <= 'd0 ;
				end
			else if(L1_counter2 == 'd6)
				begin
					csel <= 'd3 ;
					cwr <= 'd1 ;
					caddr_wr <= L1 ;
					cdata_wr <= MAX ;
				end
			else
				begin
					csel <= 'd0 ;
					cwr <= 'd0 ;
					caddr_wr <= 'd0 ;
					cdata_wr <= 'd0 ;
				end
			end
		else
			begin
				csel <= 'd0 ;
				cwr <= 'd0 ;
				caddr_wr <= 'd0 ;
				cdata_wr <= 'd0 ;
			end
		end
				
//---Layer1---
	
	always @ (posedge clk, posedge reset)
			begin
			if (reset)
				begin
					L1_active <= 'b0 ;
					L1_counter1 <= 'b0 ;
					L1_counter2 <= 'b0 ;
					L1 <= 'b0 ;
				end
			else if(L0_active == 'd2)
			begin
				if((L1_counter1 == 'd4030) && (L1_counter2 == 'd7))
					begin
						L1_active <= L1_active  + 'b1 ;
						L1_counter1 <= L1_counter1 ;
						L1_counter2 <= L1_counter2 ;
						L1 <= L1 ;
					end
				else if(L1_counter2 == 'd7)
					case(L1_counter1%64)
						'd62 : begin
								L1_active <= 'b1 ;
								L1_counter1 <= L1_counter1 + 'd66 ;
								L1_counter2 <= 'b0 ;
								L1 <= L1 + 'd1 ;
							   end
						default : begin
									L1_active <= 'b1 ;
									L1_counter1 <= L1_counter1 + 'd2 ;
									L1_counter2 <= 'b0 ;
									L1 <= L1 + 'd1 ;
								  end
					endcase
				
				else
					begin
						L1_active <= 'b1 ; 
						L1_counter1 <= L1_counter1 ;
						L1_counter2 <= L1_counter2 + 'b1 ;
						L1 <= L1 ;
					end
			end
			else
				begin
					L1_active <= L1_active ;
					L1_counter1 <= L1_counter1 ;
					L1_counter2 <= L1_counter2 ;
					L1 <= L1 ;
				end
			end
	
	//data address
	always @ (posedge clk, posedge reset)
		begin
			if(reset)
				begin
					crd <= 'b0 ;
					caddr_rd <= 'b0 ;
				end
			else if((L1_active == 'b1) && (L0_active == 'd2))
				begin
					crd <= 'b1 ;
					case(L1_counter2)
						'd1 : caddr_rd <= L1_counter1 ;
						'd2 : caddr_rd <= L1_counter1 + 'd1 ;
						'd3 : caddr_rd <= L1_counter1 + 'd64 ;
						'd4 : caddr_rd <= L1_counter1 + 'd65 ;
					endcase
				end
			else
				begin
					crd <= 'b0 ;
					caddr_rd <= 'b0 ;
				end 
		end
	
	//MAX-pooling
	always @ (posedge clk, posedge reset)
		begin
			if(reset)
				begin
					MAX <= 'b0 ;
				end
			else
				case(L1_counter2)
					'd2 : MAX <= (cdata_rd > MAX) ? cdata_rd : MAX ;
					'd3 : MAX <= (cdata_rd > MAX) ? cdata_rd : MAX ;
					'd4 : MAX <= (cdata_rd > MAX) ? cdata_rd : MAX ;
					'd5 : MAX <= (cdata_rd > MAX) ? cdata_rd : MAX ;
					default: MAX <= 'd0;
				endcase
		end
	

endmodule