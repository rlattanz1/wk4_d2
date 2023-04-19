

class Piece
attr_reader :color, :board, :position
attr_accessor :position
    def initialize(color, board, position)
        #determine turn
        @color = color
        @board = board
        @position = position
    end

    def to_s(piece_instance)
        piece_instance.symbol
    end

    def empty?
        self.color == :np
    end

    def valid_moves


    end




end
