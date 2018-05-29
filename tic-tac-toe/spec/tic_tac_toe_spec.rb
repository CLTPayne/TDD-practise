require 'tic_tac_toe.rb'

describe TicTacToe do

  describe '#display so that the user can see the board' do
    it 'shows prints an empty tictactoe board to the screen' do
      game = TicTacToe.new
      my_board = "\n       |   |  \n    ----------\n       |   |  \n    ----------\n       |   |   "
      expect(game.to_s).to eq my_board
    end
  end

  describe '#player1_move to add an x somewhere on the board' do
    it 'allows the user to make a move as x' do
      game = TicTacToe.new
      game.player1_move(9)
      my_board = "\n       |   |  \n    ----------\n       |   |  \n    ----------\n       |   | x "
      expect(game.to_s).to eq my_board
    end
  end

  describe '#player2_move to add a o somewhere on the board.' do
    it 'allows the user to make a move as o' do
      game = TicTacToe.new
      game.player1_move(1)
      game.player2_move(9)
      my_board = "\n     x |   |  \n    ----------\n       |   |  \n    ----------\n       |   | o "
      expect(game.to_s).to eq my_board
    end
  end
end

# Testing behaviour over state:
# Question: Who, or what, is the user of this code?
# Answer: The user of the TicTacToe class is a person playing the game
#
# Question: What job is this code doing for that user?
# Answer: Displays the board so that they can choose where to add a cross
