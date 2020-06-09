#Wyatt Pierce

require_relative 'board'

class Game

  def initialize(board=nil)
    @board = board
    @over = false
  end

  def board
    @board
  end

  def over?
    @over
  end

end
