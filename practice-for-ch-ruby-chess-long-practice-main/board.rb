require_relative './pieces/piece.rb'
require_relative './pieces/queen.rb'
require_relative './pieces/bishop.rb'
require_relative './pieces/rook.rb'
require_relative './pieces/pawn.rb'
require_relative './pieces/king.rb'
require_relative './pieces/knight.rb'
require_relative './pieces/nullpiece.rb'
class Board
    KNIGHTS = [[0,1],[0,6]]
    BISHOPS=[[0,2],[0,5]] 
    #bishop.each do |position|
    KINGS = [[0,4]]
    QUEEN = [[0,3]]
    ROOKS = [[0,0],[0,7]]
        # hash {knight =>[[0,0]]}
        
    # pawn: entire 1 and 6 row 
    attr_reader :rows, :null_piece
    def initialize()
        @null_piece = NullPiece.instance
        @rows = Array.new(8) {Array.new(8)}
        @rows.each_with_index do |row,index|
            row.each_with_index do |col, inx|
                if index.between?(2,5)
                    @rows[index][inx]  = @null_piece
                end
                if index == 1 
                    @rows[index][inx] = Pawn.new(:black,self, [index,inx])
                end
                if index == 6
                    @rows[index][inx] = Pawn.new(:white,self, [index,inx])
                end
            end
        end
        KNIGHTS.each do |position|
            x, y = position
            @rows[x][y] = Knight.new(:black,self,position)
            @rows[x+7][y] = Knight.new(:white,self,[x+7,y])
        end
        QUEEN.each do |position|
            x, y = position
            @rows[x][y] = Queen.new(:black,self,position)
            @rows[x+7][y] = Queen.new(:white,self,[x+7,y])
        end
        KINGS.each do |position|
            x, y = position
            @rows[x][y] = King.new(:black,self,position)
            @rows[x+7][y] = King.new(:white,self,[x+7,y])
        end
        BISHOPS.each do |position|
            x, y = position
            @rows[x][y] = Bishop.new(:black,self,position)
            @rows[x+7][y] = Bishop.new(:white,self,[x+7,y])
        end
        ROOKS.each do |position|
            x, y = position
            @rows[x][y] = Rook.new(:black,self,position)
            @rows[x+7][y] = Rook.new(:white,self,[x+7,y])
        end

    
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
            self[start_pos]= @null_piece
            self[end_pos].position = end_pos
        else
            raise "invalid move"
        end
    end

    def valid_pos(pos)

    end

    def render
        rows.each do |row|
            p row.map {|ele| ele.to_s}.join(' ')
        end
    end

end
test = Board.new
#pawn
test.move_piece(:black,[1,0],[2,0])
test.move_piece(:black,[1,1],[2,1])
test.move_piece(:black,[1,2],[2,2])
test.move_piece(:black,[1,3],[2,3])
test.move_piece(:black,[1,4],[2,4])
test.move_piece(:black,[1,5],[2,5])
test.move_piece(:black,[1,6],[2,6])
test.render
p test[[6,0]].moves
p test[[0,1]].moves #knight
p test[[0,6]].moves #knight
p test[[0,0]].moves #rook 
p test[[0,2]].moves #bishop
p test[[0,3]].moves #queen
p test[[0,4]].moves #king

