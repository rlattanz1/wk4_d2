require 'singleton'
require_relative 'piece'
class NullPiece < Piece

    include Singleton

    def initialize
    end

    def moves

    end

    def symbol
        :np
    end

end

test = NullPiece.instance
p test.symbolpieces/pawn.rb