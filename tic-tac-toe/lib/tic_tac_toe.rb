class TicTacToe

  attr_reader :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def to_s
    %(
     #{@board[0]} | #{@board[1]} | #{@board[2]}
    ----------
     #{@board[3]} | #{@board[4]} | #{@board[5]}
    ----------
     #{@board[6]} | #{@board[7]} | #{@board[8]} )
  end

  def player1_move(player1)
    position = player1 -= 1
    if @board[position] == " "
      @board[position] = "x"
    else "Position already taken"
    end
  end

  def player2_move(player2)
    position = player2 -= 1
    if @board[position] == " "
      @board[position] = "o"
    else "Position already taken"
    end
  end

end
