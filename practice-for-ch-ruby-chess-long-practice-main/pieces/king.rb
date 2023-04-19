require_relative 'piece'
require_relative 'steppable'
class King < Piece

    include Steppable


    def initialize(color,board,position)
        super #this will take in all arguements
    end

    def symbol
        :king
    end

    protected

    def move_diffs
        moves_arr = [[0, 1],[0, -1],[1, 1],[1, -1],[1, 0],[-1, 1],[-1, 0],[-1, -1]]
    end

end
