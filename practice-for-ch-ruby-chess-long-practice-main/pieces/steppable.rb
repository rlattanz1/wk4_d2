module Steppable

    def moves
        v_moves = []
        move_diffs.each do |m_diff|
            dx, dy = m_diff
            pos_check = [position[0]+dx, position[1]+dy]

            if valid_spot?(pos_check) || self.color != @board[pos_check].color
                v_moves << pos_check
            end
        end
        v_moves
    end

end
