module geofence ( clk,reset,X,Y,valid,is_inside);	//This code is written by ting
	input clk;	//posedge clk
	input reset;	//active high asynchronous
	input [9:0] X;
	input [9:0] Y;
	output reg valid;	//yes for high
	output reg is_inside;	//yes for high

	reg [9:0] X_temp [0:6] ;
	reg [9:0] Y_temp [0:6] ;
	reg [2:0] order [0:4] ;
	reg [3:0] p_or_n_temp ;
	reg [9:0] A1x, A1y, A2x, A2y, B1x, B1y, B2x, B2y ;
	reg [2:0] state ;
	reg [2:0] next_state ;
	reg	[2:0] counter ;

	wire p_or_n ;
    
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            cross circuit                                                      //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    wire signed [20:0] AX, AY, BX, BY ;
    
    assign AX = A2x - A1x ;
    assign AY = A2y - A1y ;
    assign BX = B2x - B1x ;
    assign BY = B2y - B1y ;
	assign p_or_n = (AX * BY) < (AY * BX) ? 0 : 1 ;
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                              order point                                                      //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
	wire [9:0] X_reg1 ;
	wire [9:0] X_reg2 ;
    wire [9:0] X_reg3 ;
    wire [9:0] X_reg4 ;
    wire [9:0] X_reg5 ;
    wire [9:0] Y_reg1 ;
    wire [9:0] Y_reg2 ;
    wire [9:0] Y_reg3;
    wire [9:0] Y_reg4 ;
    wire [9:0] Y_reg5 ;
    
    assign X_reg1 = (order[0] == 1)? X_temp[2] : 
                    ((order[1] == 1)? X_temp[3] :
                    ((order[2] == 1)? X_temp[4] :
                    ((order[3] == 1)? X_temp[5] :
                    ((order[4] == 1)? X_temp[6] : 'b0)))) ;
    assign Y_reg1 = (order[0] == 1)? Y_temp[2] :
					((order[1] == 1)? Y_temp[3] :
					((order[2] == 1)? Y_temp[4] :
					((order[3] == 1)? Y_temp[5] :
					((order[4] == 1)? Y_temp[6] : 'b0)))) ;
	assign X_reg2 = (order[0] == 	2)? X_temp[2] :
					((order[1] == 2)? X_temp[3] :
					((order[2] == 2)? X_temp[4] :
					((order[3] == 2)? X_temp[5] :
					((order[4] == 2)? X_temp[6] : 'b0)))) ;
	assign Y_reg2 = (order[0] == 2)? Y_temp[2] :
					((order[1] == 2)? Y_temp[3] :
					((order[2] == 2)? Y_temp[4] :
					((order[3] == 2)? Y_temp[5] :
					((order[4] == 2)? Y_temp[6] : 'b0)))) ;
	assign X_reg3 = (order[0] == 3)? X_temp[2] :
					((order[1] == 3)? X_temp[3] :
					((order[2] == 3)? X_temp[4] :
					((order[3] == 3)? X_temp[5] :
					((order[4] == 3)? X_temp[6] : 'b0)))) ;
	assign Y_reg3 = (order[0] == 3)? Y_temp[2] :
					((order[1] == 3)? Y_temp[3] :
					((order[2] == 3)? Y_temp[4] :
					((order[3] == 3)? Y_temp[5] :
					((order[4] == 3)? Y_temp[6] : 'b0)))) ;
	assign X_reg4 = (order[0] == 4)? X_temp[2] :
					((order[1] == 4)? X_temp[3] :
					((order[2] == 4)? X_temp[4] :
					((order[3] == 4)? X_temp[5] :
					((order[4] == 4)? X_temp[6] : 'b0)))) ;
	assign Y_reg4 = (order[0] == 4)? Y_temp[2] :
					((order[1] == 4)? Y_temp[3] :
					((order[2] == 4)? Y_temp[4] :
					((order[3] == 4)? Y_temp[5] :
					((order[4] == 4)? Y_temp[6] : 'b0)))) ;
	assign X_reg5 = (order[0] == 5)? X_temp[2] :
					((order[1] == 5)? X_temp[3] :
					((order[2] == 5)? X_temp[4] :
					((order[3] == 5)? X_temp[5] :
					((order[4] == 5)? X_temp[6] : 'b0)))) ;
	assign Y_reg5 = (order[0] == 5)? Y_temp[2] :
					((order[1] == 5)? Y_temp[3] :
					((order[2] == 5)? Y_temp[4] :
					((order[3] == 5)? Y_temp[5] :
					((order[4] == 5)? Y_temp[6] : 'b0)))) ;
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            FSM parameters                                                     //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
    localparam receive_person_point 	= 0 ;
	localparam find_order1	 			= 1 ;
	localparam find_order2	 			= 2 ;
	localparam find_order3	 			= 3 ;
	localparam find_order4	 			= 4 ;
	localparam person_point	 			= 5 ;
	localparam is_inside_output			= 6 ;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                 FSM                                                           //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
    //current state
	always @ (posedge clk, posedge reset) begin
		if(reset)
			state <= receive_person_point ;
		else 
			state <= next_state ;
	end
	
	//next_state logic
	always @ (*) begin
		if(state == receive_person_point)begin 
          if(counter == 7) begin
			next_state = find_order1 ; 
			end
		  else begin
			next_state = state ;
			end
		end
		else if(state == find_order1) begin 
            if(counter == 4) begin
                next_state = find_order2 ; 
			end
            else begin
                next_state = state ;
			end
		end
		else if(state == find_order2) begin 
            if(counter == 4) begin
                next_state = find_order3 ; 
                end
            else begin
                next_state = state ;
                end
		end
		else if(state == find_order3) begin 
            if(counter == 4) begin
                next_state = find_order4 ; 
                end
            else begin
                next_state = state ;
                end
		end
		else if(state == find_order4) begin 
            if(counter == 5) begin
                next_state = person_point ; 
                end
            else begin
                next_state = state ;
                end
		end
		else if(state == person_point) begin 
            if(counter == 5) begin
                next_state = is_inside_output ; 
                end
            else begin
                next_state = state ;
                end
		end
		else if(state == is_inside_output) begin
			if(counter == 1)begin
            	next_state = receive_person_point ;
				end
			else begin
                next_state = state ;
                end
            end
		else
            next_state = receive_person_point ;
	end
	
	//output logic
	always @ (posedge clk, posedge reset) begin
		if(reset)begin
			valid <= 'd0 ;
			is_inside <= 'd0 ;
		end   
        else if((state == is_inside_output) && (counter == 0)) begin
			valid <= 'd1 ;
            if ((p_or_n_temp != 0) && (p_or_n_temp != 6))
                is_inside <= 'd0 ;
            else
                is_inside <= 'd1 ;
		end
		else begin
			valid <= 'd0 ;
			is_inside <= 'd0 ;
		end
	end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            main circuit                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
    //counter
	always @ (posedge clk, posedge reset) begin
		if(reset)
			counter <= 'd0 ;
		else if(state == receive_person_point)
			counter <= counter + 'd1 ;
		else if((state == find_order1) && (counter != 4))
			counter <= counter + 'd1 ;
		else if((state == find_order2) && (counter != 4))
			counter <= counter + 'd1 ;
		else if((state == find_order3) && (counter != 4))
			counter <= counter + 'd1 ;
		else if((state == find_order4) && (counter != 5))
			counter <= counter + 'd1 ;
		else if((state == person_point) && (counter != 5))
			counter <= counter + 'd1 ;
		else if((state == is_inside_output) && (counter != 1))
			counter <= counter + 'd1 ;
		else
			counter <= 'd0 ;
	end
    
    //temp
    always @ (posedge clk, posedge reset) begin
		if(reset) begin
            X_temp[0] <= 'd0 ;
            X_temp[1] <= 'd0 ;
            X_temp[2] <= 'd0 ;
            X_temp[3] <= 'd0 ;
            X_temp[4] <= 'd0 ;
            X_temp[5] <= 'd0 ;
            X_temp[6] <= 'd0 ;
            Y_temp[0] <= 'd0 ;
            Y_temp[1] <= 'd0 ;
            Y_temp[2] <= 'd0 ;
            Y_temp[3] <= 'd0 ;
            Y_temp[4] <= 'd0 ;
            Y_temp[5] <= 'd0 ;
            Y_temp[6] <= 'd0 ;
        end
        else if(state == receive_person_point) begin
            if(counter == 0) begin
                X_temp[0] <= X ;
                X_temp[1] <= 'd0 ;
                X_temp[2] <= 'd0 ;
                X_temp[3] <= 'd0 ;
                X_temp[4] <= 'd0 ;
                X_temp[5] <= 'd0 ;
                X_temp[6] <= 'd0 ;
                Y_temp[0] <= Y ;
                Y_temp[1] <= 'd0 ;
                Y_temp[2] <= 'd0 ;
                Y_temp[3] <= 'd0 ;
                Y_temp[4] <= 'd0 ;
                Y_temp[5] <= 'd0 ;
                Y_temp[6] <= 'd0 ;
            end
            else if(counter == 1) begin
                X_temp[0] <= X_temp[0] ;
                X_temp[1] <= X ;
                X_temp[2] <= 'd0 ;
                X_temp[3] <= 'd0 ;
                X_temp[4] <= 'd0 ;
                X_temp[5] <= 'd0 ;
                X_temp[6] <= 'd0 ;
                Y_temp[0] <= Y_temp[0] ;
                Y_temp[1] <= Y ;
                Y_temp[2] <= 'd0 ;
                Y_temp[3] <= 'd0 ;
                Y_temp[4] <= 'd0 ;
                Y_temp[5] <= 'd0 ;
                Y_temp[6] <= 'd0 ;
            end
            else if(counter == 2) begin
                X_temp[0] <= X_temp[0] ;
                X_temp[1] <= X_temp[1] ;
                X_temp[2] <= X ;
                X_temp[3] <= 'd0 ;
                X_temp[4] <= 'd0 ;
                X_temp[5] <= 'd0 ;
                X_temp[6] <= 'd0 ;
                Y_temp[0] <= Y_temp[0] ;
                Y_temp[1] <= Y_temp[1] ;
                Y_temp[2] <= Y ;
                Y_temp[3] <= 'd0 ;
                Y_temp[4] <= 'd0 ;
                Y_temp[5] <= 'd0 ;
                Y_temp[6] <= 'd0 ;
            end
            else if(counter == 3) begin
                X_temp[0] <= X_temp[0] ;
                X_temp[1] <= X_temp[1] ;
                X_temp[2] <= X_temp[2] ;
                X_temp[3] <= X ;
                X_temp[4] <= 'd0 ;
                X_temp[5] <= 'd0 ;
                X_temp[6] <= 'd0 ;
                Y_temp[0] <= Y_temp[0] ;
                Y_temp[1] <= Y_temp[1] ;
                Y_temp[2] <= Y_temp[2] ;
                Y_temp[3] <= Y ;
                Y_temp[4] <= 'd0 ;
                Y_temp[5] <= 'd0 ;
                Y_temp[6] <= 'd0 ;
            end
            else if(counter == 4) begin
                X_temp[0] <= X_temp[0] ;
                X_temp[1] <= X_temp[1] ;
                X_temp[2] <= X_temp[2] ;
                X_temp[3] <= X_temp[3] ;
                X_temp[4] <= X ;
                X_temp[5] <= 'd0 ;
                X_temp[6] <= 'd0 ;
                Y_temp[0] <= Y_temp[0] ;
                Y_temp[1] <= Y_temp[1] ;
                Y_temp[2] <= Y_temp[2] ;
                Y_temp[3] <= Y_temp[3] ;
                Y_temp[4] <= Y ;
                Y_temp[5] <= 'd0 ;
                Y_temp[6] <= 'd0 ;
            end
            else if(counter == 5) begin
                X_temp[0] <= X_temp[0] ;
                X_temp[1] <= X_temp[1] ;
                X_temp[2] <= X_temp[2] ;
                X_temp[3] <= X_temp[3] ;
                X_temp[4] <= X_temp[4] ;
                X_temp[5] <= X ;
                X_temp[6] <= 'd0 ;
                Y_temp[0] <= Y_temp[0] ;
                Y_temp[1] <= Y_temp[1] ;
                Y_temp[2] <= Y_temp[2] ;
                Y_temp[3] <= Y_temp[3] ;
                Y_temp[4] <= Y_temp[4] ;
                Y_temp[5] <= Y ;
                Y_temp[6] <= 'd0 ;
            end
            else if(counter == 6) begin
                X_temp[0] <= X_temp[0] ;
                X_temp[1] <= X_temp[1] ;
                X_temp[2] <= X_temp[2] ;
                X_temp[3] <= X_temp[3] ;
                X_temp[4] <= X_temp[4] ;
                X_temp[5] <= X_temp[5] ;
                X_temp[6] <= X ;
                Y_temp[0] <= Y_temp[0] ;
                Y_temp[1] <= Y_temp[1] ;
                Y_temp[2] <= Y_temp[2] ;
                Y_temp[3] <= Y_temp[3] ;
                Y_temp[4] <= Y_temp[4] ;
                Y_temp[5] <= Y_temp[5] ;
                Y_temp[6] <= Y ;
            end
            else begin
                    X_temp[0] <= X_temp[0] ;
                    X_temp[1] <= X_temp[1] ;
                    X_temp[2] <= X_temp[2] ;
                    X_temp[3] <= X_temp[3] ;
                    X_temp[4] <= X_temp[4] ;
                    X_temp[5] <= X_temp[5] ;
                    X_temp[6] <= X_temp[6] ;
                    Y_temp[0] <= Y_temp[0] ;
                    Y_temp[1] <= Y_temp[1] ;
                    Y_temp[2] <= Y_temp[2] ;
                    Y_temp[3] <= Y_temp[3] ;
                    Y_temp[4] <= Y_temp[4] ;
                    Y_temp[5] <= Y_temp[5] ;
                    Y_temp[6] <= Y_temp[6] ;
            end
        end
        else begin
            X_temp[0] <= X_temp[0] ;
            X_temp[1] <= X_temp[1] ;
            X_temp[2] <= X_temp[2] ;
            X_temp[3] <= X_temp[3] ;
            X_temp[4] <= X_temp[4] ;
            X_temp[5] <= X_temp[5] ;
            X_temp[6] <= X_temp[6] ;
            Y_temp[0] <= Y_temp[0] ;
            Y_temp[1] <= Y_temp[1] ;
            Y_temp[2] <= Y_temp[2] ;
            Y_temp[3] <= Y_temp[3] ;
            Y_temp[4] <= Y_temp[4] ;
            Y_temp[5] <= Y_temp[5] ;
            Y_temp[6] <= Y_temp[6] ;
        end
    end
    
    //find order
	always @ (posedge clk, posedge reset) begin
		if(reset) begin
			p_or_n_temp <= 'd0;
			order[0] <= 'd0 ;
			order[1] <= 'd0 ;
			order[2] <= 'd0 ;
			order[3] <= 'd0 ;
			order[4] <= 'd0 ;
		end
		else begin
			if(state == receive_person_point) begin
				p_or_n_temp <= 'd0;
				order[0] <= 'd0 ;
				order[1] <= 'd0 ;
				order[2] <= 'd0 ;
				order[3] <= 'd0 ;
				order[4] <= 'd0 ;
			end
			else if(state == find_order1 ) begin
				if(counter == 0) begin
					p_or_n_temp	<= p_or_n ;
					order[0] <= 'd0 ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 1) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= 'd0 ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 2) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= 'd0 ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 3) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= 'd0 ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 4) begin
					p_or_n_temp	<= 'd0 ;
					order[0] <= 'd5 - p_or_n_temp ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else begin
					p_or_n_temp	<= p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= order[3] ;
					order[4] <= order[4] ;
				end
			end
			else if(state == find_order2 ) begin
				if(counter == 0) begin
					p_or_n_temp	<= p_or_n ;
					order[0] <= order[0] ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 1) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 2) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 3) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= 'd0 ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 4) begin
					p_or_n_temp	<= 'd0 ;
					order[0] <= order[0] ;
					order[1] <= 'd5 - p_or_n_temp ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else begin
					p_or_n_temp	<= p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= order[3] ;
					order[4] <= order[4] ;
				end
			end
			else if(state == find_order3 ) begin
				if(counter == 0) begin
					p_or_n_temp	<= p_or_n ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 1) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 2) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 3) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= 'd0 ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 4) begin
					p_or_n_temp	<= 'd0 ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= 'd5 - p_or_n_temp ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else begin
					p_or_n_temp	<= p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= order[3] ;
					order[4] <= order[4] ;
				end
			end
			else if(state == find_order4 ) begin
				if(counter == 0) begin
					p_or_n_temp	<= p_or_n ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 1) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 2) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 3) begin
					p_or_n_temp	<= p_or_n + p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= 'd0 ;
					order[4] <= 'd0 ;
				end
				else if(counter == 4) begin
					p_or_n_temp	<= 'd0 ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= 'd5 - p_or_n_temp ;
					order[4] <= 'd15 - (('d5 - p_or_n_temp) + order[0] + order[1] + order[2]) ;
                    //order[4] <= 'd15 - (('d5 - p_or_n_temp) + order[0] + order[1] + order[2]) ;
				end
				else begin
					p_or_n_temp	<= p_or_n_temp ;
					order[0] <= order[0] ;
					order[1] <= order[1] ;
					order[2] <= order[2] ;
					order[3] <= order[3] ;
					order[4] <= order[4] ;
				end
			end
            else if(state == person_point) begin
                if(counter == 0) begin
                    p_or_n_temp	<= p_or_n ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
                else if(counter == 1) begin
                    p_or_n_temp	<= p_or_n + p_or_n_temp ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
                else if(counter == 2) begin
                    p_or_n_temp	<= p_or_n + p_or_n_temp ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
                else if(counter == 3) begin
                    p_or_n_temp	<= p_or_n + p_or_n_temp ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
                else if(counter == 4) begin
                    p_or_n_temp	<= p_or_n + p_or_n_temp ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
                else if(counter == 5) begin
                    p_or_n_temp	<= p_or_n + p_or_n_temp ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
                else begin
                    p_or_n_temp	<= p_or_n_temp ;
                    order[0] <= order[0] ;
                    order[1] <= order[1] ;
                    order[2] <= order[2] ;
                    order[3] <= order[3] ;
                    order[4] <= order[4] ;
                end
            end
			else if(state == is_inside_output) begin
						p_or_n_temp	<= p_or_n_temp ;
						order[0] <= order[0] ;
						order[1] <= order[1] ;
						order[2] <= order[2] ;
						order[3] <= order[3] ;
						order[4] <= order[4] ;
					end
            else begin
				p_or_n_temp <= 'd0;
				order[0] <= order[0] ;
				order[1] <= order[1] ;
				order[2] <= order[2] ;
				order[3] <= order[3] ;
				order[4] <= order[4] ;
			end
		end
	end
	
	//cross
	always @ (*) begin
		if(state == find_order1) begin
			if(counter == 0) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[2] ;
				A2y 			= Y_temp[2] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[3] ;
				B2y 			= Y_temp[3] ;
			end
			else if(counter == 1) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[2] ;
				A2y 			= Y_temp[2] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[4] ;
				B2y 			= Y_temp[4] ;
			end
			else if(counter == 2) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[2] ;
				A2y 			= Y_temp[2] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[5] ;
				B2y 			= Y_temp[5] ;
			end
			else if(counter == 3) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[2] ;
				A2y 			= Y_temp[2] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
			else begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[2] ;
				A2y 			= Y_temp[2] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
		end
		else if(state == find_order2) begin
			if(counter == 0) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[3] ;
				A2y 			= Y_temp[3] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[2] ;
				B2y 			= Y_temp[2] ;
			end
			else if(counter == 1) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[3] ;
				A2y 			= Y_temp[3] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[4] ;
				B2y 			= Y_temp[4] ;
			end
			else if(counter == 2) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[3] ;
				A2y 			= Y_temp[3] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[5] ;
				B2y 			= Y_temp[5] ;
			end
			else if(counter == 3) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[3] ;
				A2y 			= Y_temp[3] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
			else begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[3] ;
				A2y 			= Y_temp[3] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
		end
		else if(state == find_order3) begin
			if(counter == 0) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[4] ;
				A2y 			= Y_temp[4] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[2] ;
				B2y 			= Y_temp[2] ;
			end
			else if(counter == 1) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[4] ;
				A2y 			= Y_temp[4] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[3] ;
				B2y 			= Y_temp[3] ;
			end
			else if(counter == 2) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[4] ;
				A2y 			= Y_temp[4] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[5] ;
				B2y 			= Y_temp[5] ;
			end
			else if(counter == 3) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[4] ;
				A2y 			= Y_temp[4] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
			else begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[4] ;
				A2y 			= Y_temp[4] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
		end
		else if(state == find_order4) begin
			if(counter == 0) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[5] ;
				A2y 			= Y_temp[5] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[2] ;
				B2y 			= Y_temp[2] ;
			end
			else if(counter == 1) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[5] ;
				A2y 			= Y_temp[5] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[3] ;
				B2y 			= Y_temp[3] ;
			end
			else if(counter == 2) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[5] ;
				A2y 			= Y_temp[5] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[4] ;
				B2y 			= Y_temp[4] ;
			end
			else if(counter == 3) begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[5] ;
				A2y 			= Y_temp[5] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
			else begin
				A1x 			= X_temp[1] ;
				A1y 			= Y_temp[1] ;
				A2x 			= X_temp[5] ;
				A2y 			= Y_temp[5] ;
				B1x 			= X_temp[1] ;
				B1y 			= Y_temp[1] ;
				B2x 			= X_temp[6] ;
				B2y 			= Y_temp[6] ;
			end
		end
		else if(state == person_point) begin
			if(counter == 0) begin
				A1x 			= X_temp[0] ;
				A1y 			= Y_temp[0] ;
				A2x 			= X_temp[1] ;
				A2y 			= Y_temp[1] ;
				B1x 			= X_temp[0] ;
				B1y 			= Y_temp[0] ;
				B2x 			= X_reg1 ;
				B2y 			= Y_reg1 ;
			end
            else if(counter == 1) begin
                A1x 			= X_temp[0] ;
                A1y 			= Y_temp[0] ;
                A2x 			= X_reg1 ;
                A2y 			= Y_reg1 ;
                B1x 			= X_temp[0] ;
                B1y 			= Y_temp[0] ;
                B2x 			= X_reg2 ;
                B2y 			= Y_reg2 ;
            end
            else if(counter == 2) begin
                A1x 			= X_temp[0] ;
                A1y 			= Y_temp[0] ;
                A2x 			= X_reg2 ;
                A2y 			= Y_reg2 ;
                B1x 			= X_temp[0] ;
                B1y 			= Y_temp[0] ;
                B2x 			= X_reg3 ;
                B2y 			= Y_reg3 ;
            end
            else if(counter == 3) begin
                A1x 			= X_temp[0] ;
                A1y 			= Y_temp[0] ;
                A2x 			= X_reg3 ;
                A2y 			= Y_reg3 ;
                B1x 			= X_temp[0] ;
                B1y 			= Y_temp[0] ;
                B2x 			= X_reg4 ;
                B2y 			= Y_reg4 ;
            end
            else if(counter == 4) begin
                A1x 			= X_temp[0] ;
                A1y 			= Y_temp[0] ;
                A2x 			= X_reg4 ;
                A2y 			= Y_reg4 ;
                B1x 			= X_temp[0] ;
                B1y 			= Y_temp[0] ;
                B2x 			= X_reg5 ;
                B2y 			= Y_reg5 ;
            end
            else if(counter == 5) begin
                A1x 			= X_temp[0] ;
                A1y 			= Y_temp[0] ;
                A2x 			= X_reg5 ;
                A2y 			= Y_reg5 ;
                B1x 			= X_temp[0] ;
                B1y 			= Y_temp[0] ;
                B2x 			= X_temp[1] ;
                B2y 			= Y_temp[1] ;
            end
            else begin
                A1x 			= X_temp[1] ;
                A1y 			= Y_temp[1] ;
                A2x 			= X_temp[2] ;
                A2y 			= Y_temp[2] ;
                B1x 			= X_temp[1] ;
                B1y 			= Y_temp[1] ;
                B2x 			= X_temp[3] ;
                B2y 			= Y_temp[3] ;
            end
        end
        else begin
            A1x 			= X_temp[1] ;
            A1y 			= Y_temp[1] ;
            A2x 			= X_temp[2] ;
            A2y 			= Y_temp[2] ;
            B1x 			= X_temp[1] ;
            B1y 			= Y_temp[1] ;
            B2x 			= X_temp[3] ;
            B2y 			= Y_temp[3] ;
        end 
	end
			
			


endmodule
