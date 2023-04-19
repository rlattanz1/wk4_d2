

module Slideable
    # HORIZONTAL_DIRS= []
    # DIAGONAL_DIRS=[]
    # dont include move_dirs 

    #move_dirs will be a 2d array with the movement changes
    def horizontal_dirs 
    end
    def diagonal_dirs 
    end

    def moves
    end

    #north_west 

    def grow_unblocked_moves_in_dir(pos,dx,dy) #(1,0)
        array=[]
        condition = false
        #until board spot is not empty(same color or different), valid_moves (valid of board)
        check_board = @board[pos]
        pos_check = pos
        until !check_board.empty? || !check_board.valid_moves || check_board.color == self.color ||check_board.color != self.color 
            pos_check = [pos_check[0]+dx, pos_check[1]+dy]
            array << pos_check 
            check_board = @board[pos_check]
            if check_board.color == self.color 
                
            
        next_move= [pos[0]+dx,pos[1]+dy]
        

    end

        



end
