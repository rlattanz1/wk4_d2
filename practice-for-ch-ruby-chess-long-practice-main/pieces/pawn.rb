require_relative 'piece'

class Pawn < Piece

    def initialize(color,board,position)
        super #this will take in all arguements
    end

    def symbol 
        :pawn
    end
    def moves
        row, col = position
        moves=[]
        forward_steps.each { |step| moves<<[step[0]+row,step[1]+col]}
        moves+=side_attacks
    end

    private


    def at_start_row?
        x, y = position 
        (x==1 && color==:black) || (x==6 && color==:white) ? true : false
    end

    def forward_dir
        # if black, 1
        #if white  ,-1
        #returns 1 or -1
        color == :white ? -1 : 1
    end

    def forward_steps
        #if at start_row, can move 2 steps forward
        steps= []
       
        steps<<[1*forward_dir,0]
        if at_start_row?
            steps<<[2*forward_dir,0]
        end
        steps
    end

    def side_attacks
        diag_pos=[]
        r, c = position
        side_moves=[[forward_dir,-1],[forward_dir,1]] 
            side_moves.each do |diag|
                x, y = diag 
                check_pos = [r+x,c+y]
                if valid_spot?(check_pos)
                    if board[check_pos].color != color && !board[check_pos].empty?
                        
                        diag_pos << check_pos
                    end
                end
            end
        diag_pos
    end

end

