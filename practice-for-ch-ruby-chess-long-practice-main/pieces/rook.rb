require_relative 'piece'
require_relative 'slidable'
class Rook < Piece

    include Slidable

    def initialize(color,board,position)
        super #this will take in all arguements
    end

    def symbol

    end

    private

    def move_dirs
        #using slidable functions
        dirs = []
        dirs += horizontal_dirs

        dirs
    end

end
