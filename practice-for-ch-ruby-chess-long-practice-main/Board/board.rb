
# require './pieces/piece.rb'
class Board

    attr_reader :rows, :null_piece
    def initialize()
        @rows = Array.new(8) {Array.new(8)}
        @rows.each_with_index do |row,index|
            row.each_with_index do |col, inx|
                if index.between?(2,5)
                    @rows[index][inx]  = '@null_piece'
                else
                    @rows[index][inx] = 'Piece.new'
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
            self[end_pos]= self[start_pos]
            self[start_pos]= '@null_piece'
        else
            raise "invalid move"
        end
    end

    def valid_pos(pos)

    end


end
