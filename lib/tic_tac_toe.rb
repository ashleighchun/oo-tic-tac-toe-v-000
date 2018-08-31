class TicTacToe
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(position) 
  position.to_i - 1 #.to_i changes to an integer
end

def move(index, value="X")
 @board[index] = value 
end

def position_taken?(index)
  !(@board[index].nil? || @board[index] == " ")

end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(@board, index)
end

end

  
  
  
  
  
  