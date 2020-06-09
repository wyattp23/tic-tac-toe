#Wyatt Pierce

require_relative 'board'

class Game

  def initialize(board=Board.new)
    @board = board

    if @board.class == Board 
      @over = @board.full?
    else
      @over = false
    end

  end

  def board
    @board
  end

  def over?
    @over
  end

  def tie?
    @board.full?
  end

end
