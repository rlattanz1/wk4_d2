

class Piece
attr_reader :color, :board, :position
attr_accessor :position
    def initialize(color, board, position)
        #determine turn
        @color = color
        @board = board
        @position = position
    end



    def to_s
        self.color
    end

    def empty?
        self.color == :np
    end

    def valid_spot?(pos)
        r, c = pos
        r.between?(0, 7) && c.between?(0, 7)
    end

    def valid_moves


    end




end
