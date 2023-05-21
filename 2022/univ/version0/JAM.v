////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR:    KT		March 30, 2022
// VERSION:   Verilog Simulation Architecture
//
////////////////////////////////////////////////////////////////////////////////
//
// ABSTRACT:  IC contest 2022
// DESIGN VERSION: 1
// DESCRIPITON: 此版本為IC競賽繳交版本
//              cycle = 595120
//              area = 6229.458079
// NOTE: 須注意此版本之reset signal(RST)為同步，另外執行ncverilog時須注意JAM.v前面須加上-v，
//       因為變數sequence在system verilog已經定義
//
//------------------------------------------------------------------------------

module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

//reg first ;
reg [2:0] state ;
reg [2:0] next_state ;
//reg ending ;
reg [2:0] counter ;
reg [2:0] sequence [0:7] ;
reg find_active ;
reg [2:0] change_point ;
reg [2:0] search_point ;
reg [2:0] value ;
reg [9:0] sum_reg ;
reg [2:0] R0 ,R1 ,R2 ,L0 ,L1 ,L2 ;

wire last ;
	assign last = ((sequence[0] == 0) &&
				   (sequence[1] == 1) && 
				   (sequence[2] == 2) && 
				   (sequence[3] == 3) && 
				   (sequence[4] == 4) && 
				   (sequence[5] == 5) && 
				   (sequence[6] == 6) && 
				   (sequence[7] == 7)) ;

wire [2:0] change_value ;
	assign change_value = (change_point == 1) ? sequence[1] :
						  ((change_point == 2) ? sequence[2] :
						  ((change_point == 3) ? sequence[3] :
						  ((change_point == 4) ? sequence[4] :
						  ((change_point == 5) ? sequence[5] :
						  ((change_point == 6) ? sequence[6] :
						  ((change_point == 7) ? sequence[7] : 0)))))) ;

wire [2:0] search_value ;
	assign search_value = (counter == 1) ? sequence[1] :
						  ((counter == 2) ? sequence[2] :
						  ((counter == 3) ? sequence[3] :
						  ((counter == 4) ? sequence[4] :
						  ((counter == 5) ? sequence[5] :
						  ((counter == 6) ? sequence[6] :
						  ((counter == 7) ? sequence[7] : sequence[0])))))) ;
wire [9:0] sum ;
	assign sum = Cost + sum_reg ;

wire comparefunc0 ;
	assign comparefunc0 = R0 > L0 ;

wire comparefunc1 ;
	assign comparefunc1 = R1 > L1 ;

wire comparefunc2 ;
	assign comparefunc2 = R2 > L2 ;

wire [2:0] c ;
	assign c = (change_point == 0) ? 0 : (change_point - 1) ;


/////////////////////////////////
//FSM para					  //
////////////////////////////////
	localparam find    		= 0 ; //3 cycles
	localparam search  		= 1 ; //7 cycles
	localparam change  		= 2 ; //1 cycle
	localparam inverse      = 3 ; //1 cycles
	localparam load_compute = 4 ; //8 cycles
	localparam compare		= 5 ; //1 cycle
	localparam out 			= 6 ; //1 cycles
/////////////////////////////////
//FSM   					  //
////////////////////////////////
	always @ (posedge CLK) begin
		if(RST)
			state <= 4 ;
		else
			state <= next_state ;
	end

	always @ (*) begin
		case(state)
			find : begin
				if(find_active)
					next_state = search ;
				else
					next_state = state ;
			end
			search : begin
				if(counter == change_point - 1)
					next_state = change ;
				else
					next_state = state ;
			end
			change : begin
				next_state = inverse ;
			end
			inverse : begin
				next_state = load_compute ;
			end
			load_compute : begin
				if(counter == 7)
					next_state = compare ;
				else
					next_state = state ;
			end
			compare : begin
				if(last)
					next_state = out ;
				else
					next_state = find ;
			end
			default : next_state = state ;
		endcase
	end

	always @ (posedge CLK) begin
		if (RST)
			counter <= 0 ;
		else begin
			case(state)
				find : begin
					if(!find_active)
						counter <= counter + 1 ;
					else begin
						counter <= 0 ;
					end
				end
				search : begin
					if(counter == change_point -1 )
						counter <= 0 ;
					else
						counter <= counter + 1 ;
				end
				load_compute : begin
					if(counter == 7)
						counter <= 0 ;
					else
						counter <= counter + 1 ;
				end
				default : counter <= 0 ;
			endcase
		end
	end

	//out
	assign Valid = last && (state == out) ;



/////////////////////////////////
//main code  				  //
////////////////////////////////
	//find_active & change point
	/*always @ (posedge CLK) begin
		if(RST) begin
			find_active <= 0 ;
			change_point <= 1 ;
		end
		else if((state == find) && (find_active == 0)) begin
			case(counter)
				0 : begin
						if(sequence[1] < sequence[0]) begin
							find_active <= 1 ;
							change_point <= 1 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				1 : begin
						if(sequence[2] < sequence[1]) begin
							find_active <= 1 ;
							change_point <= 2 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				2 : begin
						if(sequence[3] < sequence[2]) begin
							find_active <= 1 ;
							change_point <= 3 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				3 : begin
						if(sequence[4] < sequence[3]) begin
							find_active <= 1 ;
							change_point <= 4 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				4 : begin
						if(sequence[5] < sequence[4]) begin
							find_active <= 1 ;
							change_point <= 5 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				5 : begin
						if(sequence[6] < sequence[5]) begin
							find_active <= 1 ;
							change_point <= 6 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				6 : begin
						if(sequence[7] < sequence[6]) begin
							find_active <= 1 ;
							change_point <= 7 ;
						end
						else begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
					end
				default : begin 
							find_active <= find_active ;
							change_point <= change_point ;
						end
			endcase
		end
		else if(state == compare) begin
			find_active <= 0 ;
			change_point <= 1 ;
		end
		else begin
			find_active <= find_active ;
			change_point <= change_point ;
		end
	end*/

	//change_point
	always @ (posedge CLK) begin
		if(RST) begin
			change_point <= 1 ;
			find_active <= 0 ;
		end
		else if((state == find) && (find_active != 1))begin
			case(counter)
				0 : begin
						if(comparefunc0) begin
							find_active <= 1 ;
							change_point <= 1 ;
						end
						else if(comparefunc1) begin
							find_active <= 1 ;
							change_point <= 2 ;
						end
						else if(comparefunc2) begin
							find_active <= 1 ;
							change_point <= 3 ;
						end
						else begin
							find_active <= 0 ;
							change_point <= 1 ;
						end
					end
				1 : begin
						if(comparefunc0) begin
							find_active <= 1 ;
							change_point <= 4 ;
						end
						else if(comparefunc1) begin
							find_active <= 1 ;
							change_point <= 5 ;
						end
						else if(comparefunc2) begin
							find_active <= 1 ;
							change_point <= 6 ;
						end
						else begin
							find_active <= 0 ;
							change_point <= 1 ;
						end
					end
				2 : begin
						if(comparefunc0) begin
							find_active <= 1 ;
							change_point <= 7 ;
						end
						else begin
							find_active <= 0 ;
							change_point <= 1 ;
						end
					end
				default : begin
							find_active <= find_active ;
							change_point <= change_point ;
						end
			endcase
		end
		else if(state == compare) begin
			find_active <= 0 ;
			change_point <= 1 ;
		end
		else begin
			find_active <= find_active ;
			change_point <= change_point ;
		end
end

	//R L
	always @ (*) begin
		if(counter == 0) begin
			R0 = sequence[0] ;
			L0 = sequence[1] ;
			R1 = sequence[1] ;
			L1 = sequence[2] ;
			R2 = sequence[2] ;
			L2 = sequence[3] ;
		end
		else if(counter == 1) begin
			R0 = sequence[3] ;
			L0 = sequence[4] ;
			R1 = sequence[4] ;
			L1 = sequence[5] ;
			R2 = sequence[5] ;
			L2 = sequence[6] ;
		end
		else begin
			R0 = sequence[6] ;
			L0 = sequence[7] ;
			R1 = sequence[4] ;
			L1 = sequence[5] ;
			R2 = sequence[5] ;
			L2 = sequence[6] ;
		end
	end

	//search point & value
		always @ (posedge CLK) begin
			if(RST) begin
				search_point <= 0 ;
				value <= sequence[0] ;
			end
			else if((state == search) && (counter < change_point)) begin
				case(counter)
				0 : begin 
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 0 ;
							value <= sequence[0] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				1 : begin
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 1 ;
							value <= sequence[1] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				2 : begin
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 2 ;
							value <= sequence[2] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				3 : begin
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 3 ;
							value <= sequence[3] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				4 : begin
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 4 ;
							value <= sequence[4] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				5 : begin
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 5 ;
							value <= sequence[5] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				6 : begin
						if((change_value < search_value) && (search_value < value)) begin
							search_point <= 6 ;
							value <= sequence[6] ;
						end
						else begin
							search_point <= search_point ;
							value <= value ;
						end
					end
				default : begin 
							search_point <= search_point ;
							value <= value ;
						end
			endcase
		end
		else begin
			search_point <= change_point - 1 ;
			if((change_point == 0) && (change_point == 1))begin
				value <= sequence[0] ;
			end
			else if(change_point == 2)begin
				value <= sequence[1] ;
			end
			else if(change_point == 3)begin
				value <= sequence[2] ;
			end
			else if(change_point == 4)begin
				value <= sequence[3] ;
			end
			else if(change_point == 5)begin
				value <= sequence[4] ;
			end
			else if(change_point == 6)begin
				value <= sequence[5] ;
			end
			else if(change_point == 7)begin
				value <= sequence[6] ;
			end
			else begin
				value <= sequence[0] ;
			end
		end
	end

	//sequence
	always @ (posedge CLK) begin
		if(RST) begin
			sequence[0] <= 7 ;
			sequence[1] <= 6 ;
			sequence[2] <= 5 ;
			sequence[3] <= 4 ;
			sequence[4] <= 3 ;
			sequence[5] <= 2 ;
			sequence[6] <= 1 ;
			sequence[7] <= 0 ;
		end
		else if(state == change) begin
			sequence[change_point] <= sequence[search_point] ;
			sequence[search_point] <= sequence[change_point] ;
		end
		else if(state == inverse) begin
			case(change_point)
				2 : begin
						sequence[0] <= sequence[1] ;
						sequence[1] <= sequence[0] ;
						sequence[2] <= sequence[2] ;
						sequence[3] <= sequence[3] ;
						sequence[4] <= sequence[4] ;
						sequence[5] <= sequence[5] ;
						sequence[6] <= sequence[6] ;
						sequence[7] <= sequence[7] ;
					end
				3 : begin
						sequence[0] <= sequence[2] ;
						sequence[1] <= sequence[1] ;
						sequence[2] <= sequence[0] ;
						sequence[3] <= sequence[3] ;
						sequence[4] <= sequence[4] ;
						sequence[5] <= sequence[5] ;
						sequence[6] <= sequence[6] ;
						sequence[7] <= sequence[7] ;
					end
				4 : begin
						sequence[0] <= sequence[3] ;
						sequence[1] <= sequence[2] ;
						sequence[2] <= sequence[1] ;
						sequence[3] <= sequence[0] ;
						sequence[4] <= sequence[4] ;
						sequence[5] <= sequence[5] ;
						sequence[6] <= sequence[6] ;
						sequence[7] <= sequence[7] ;
					end
				5 : begin
						sequence[0] <= sequence[4] ;
						sequence[1] <= sequence[3] ;
						sequence[2] <= sequence[2] ;
						sequence[3] <= sequence[1] ;
						sequence[4] <= sequence[0] ;
						sequence[5] <= sequence[5] ;
						sequence[6] <= sequence[6] ;
						sequence[7] <= sequence[7] ;
					end
				6 : begin
						sequence[0] <= sequence[5] ;
						sequence[1] <= sequence[4] ;
						sequence[2] <= sequence[3] ;
						sequence[3] <= sequence[2] ;
						sequence[4] <= sequence[1] ;
						sequence[5] <= sequence[0] ;
						sequence[6] <= sequence[6] ;
						sequence[7] <= sequence[7] ;
					end
				7 : begin
						sequence[0] <= sequence[6] ;
						sequence[1] <= sequence[5] ;
						sequence[2] <= sequence[4] ;
						sequence[3] <= sequence[3] ;
						sequence[4] <= sequence[2] ;
						sequence[5] <= sequence[1] ;
						sequence[6] <= sequence[0] ;
						sequence[7] <= sequence[7] ;
					end
				default : begin
							sequence[0] <= sequence[0] ;
							sequence[1] <= sequence[1] ;
							sequence[2] <= sequence[2] ;
							sequence[3] <= sequence[3] ;
							sequence[4] <= sequence[4] ;
							sequence[5] <= sequence[5] ;
							sequence[6] <= sequence[6] ;
							sequence[7] <= sequence[7] ;
						end
			endcase
		end
	end

	//sum_reg
	always @ (posedge CLK) begin
		if(RST)
			sum_reg <= 0 ;
		else if(state == load_compute)
			sum_reg <= sum ;
		else if(state == find)
			sum_reg <= 0 ;
		else
			sum_reg <= sum_reg ;
	end

	//W J
	always @ (*) begin
		if(state == load_compute) begin
			W = counter ;
			J = search_value ;
		end
		else begin
			W = 0 ;
			J = 0 ;
		end
	end

	//MatchCount MinCost
	always @ (posedge CLK) begin
		if(RST) begin
			MinCost <= 'd1023 ;
			MatchCount <= 1 ;
		end
		else if(state == compare) begin
			if(sum_reg < MinCost) begin
				MinCost <= sum_reg ;
				MatchCount <= 1 ;
			end
			else if(sum_reg == MinCost) begin
				MinCost <= MinCost ;
				MatchCount <= MatchCount + 1 ;
			end
			else begin
				MinCost <= MinCost ;
				MatchCount <= MatchCount ;
			end
		end
		else begin
			MinCost <= MinCost ;
			MatchCount <= MatchCount ;
		end
	end



endmodule


