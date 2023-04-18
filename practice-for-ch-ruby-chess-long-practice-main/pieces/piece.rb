
class Piece
attr_reader :color, :board, :position
    def initialize(color, board, position)
        #determine turn
        @color = color
        @board = Board.new
        @position = position
    end

    def to_s(piece_instance)
        piece_instance.symbol
    end

    def empty?
        self.symbol == :np
    end

    def valid_moves
        # @boards will have getter, rows, to call the 2d board array
        moves=[]
        @board.rows.each_index do |row|
            row.each_index do |col|
                moves << [row,col]
            end
        end
        moves
    end

    def






end
