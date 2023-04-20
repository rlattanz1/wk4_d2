require 'colorize'
require_relative 'cursor'
class Display
    def initialize(board_instace)
        @cursor = Cursor.new([0,0], @board)
        @board = board_instace
    end

    def handle_keyboard
        @cursor.get_input
    end
end

test = Display.new('test')
test.handle_keyboard