

module Slidable
    HORIZONTAL_DIRS= [[1, 0], [-1, 0], [0, 1], [0, -1]]
    DIAGONAL_DIRS= [[1, 1], [-1, -1], [-1, 1], [1, -1]]

    #move_dirs will be a 2d array with the movement changes
    def horizontal_dirs
        h_dirs = HORIZONTAL_DIRS
    end

    def diagonal_dirs
        d_dirs = DIAGONAL_DIRS
    end

    def moves
        moves_arr = []
        move_dirs.each do |m_dir|
            dx, dy = m_dir
            moves_arr.concat(grow_unblocked_moves_in_dir(dx, dy))
        end
        moves_arr
    end

    #north_west

    private
    
    def grow_unblocked_moves_in_dir(dx,dy) #(1,0)
        pos_arr=[]

        pos_check = [position[0]+dx, position[1]+dy]
        check_board = @board[pos_check]
            until !check_board.empty? || !check_board.valid_spot?(pos_check)
                pos_arr << pos_check
                pos_check = [pos_check[0]+dx, pos_check[1]+dy]
                check_board = @board[pos_check]

            end
            if pos_arr.last == self.color
                pos_arr.pop
            else
                pos_arr
            end

    pos_arr
    end

end
