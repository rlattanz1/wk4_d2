require_relative 'piece'
require_relative 'slidable'
class Queen < Piece

    include Slidable

    def initialize(color,board,position)
        super #this will take in all arguements 
    end

    def move_dirs 
        #using slidable functions 
        dirs = []
        dirs += horizontal_dirs + diagonal_dirs
        
        dirs 
    end

end




