require_relative 'player'
require_relative 'question'
require_relative 'game'
require_relative 'io_handler'

game = Game.new("Player 1", "Player 2")
game.start
