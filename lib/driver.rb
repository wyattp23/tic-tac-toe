#! /usr/bin/env ruby
require_relative 'game'
require_relative 'board'

board = Board.new

board.place(:x, :top, :left)
puts board, "\n"
board.place(:o, :middle, :middle)
puts board, "\n"
board.place(:x, :top, :right)
puts board, "\n"
