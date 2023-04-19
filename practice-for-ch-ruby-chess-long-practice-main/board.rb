require_relative './pieces/piece.rb'
require_relative './pieces/queen.rb'
require 'byebug'
class Board

    attr_reader :rows, :null_piece
    def initialize()
        @rows = Array.new(8) {Array.new(8)}
        @rows.each_with_index do |row,index|
            row.each_with_index do |col, inx|
                if index.between?(2,5)
                    @rows[index][inx]  = Piece.new(:np, self, [index,inx])
                else
                    @rows[index][inx] = Queen.new(:black, self, [index,inx])
                end
            end
        end

        # @null_piece = NullPiece.new
    end

    def [](pos)
        r, c = pos
        rows[r][c]
    end

    def []=(pos, piece)
        r, c = pos
        rows[r][c]= piece
    end

    def move_piece(color, start_pos, end_pos)
        r, c = end_pos
        if self[start_pos] != @null_piece && r.between?(0,7) && c.between?(0,7)
            self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
            self[start_pos]= Piece.new(:np, self, start_pos)
            self[end_pos].position = end_pos 
        else
            raise "invalid move"
        end
    end

    def valid_pos(pos)

    end
    def render
        rows.each do |row|
            puts row.map(&:color).join(' ')
        end
    end

end

test = Board.new 
test.render
# @rows[[1,0]].moves
test.move_piece(:black,[0,0],[4,4])
test.render
# p test.valid_spot?([-1,-2])
p test[[4,4]].moves
