require_relative 'piece'
require_relative 'steppable'
class Knight < Piece

    include Steppable


    def initialize(color,board,position)
        super #this will take in all arguements
    end


    def symbol
        :knight
    end

    protected

    def move_diffs
        moves_arr = [[2, 1],[2, -1],[-2, 1],[-2, -1],[1, 2],[-1, -2],[1, -2],[-1, 2]]
    end

end
