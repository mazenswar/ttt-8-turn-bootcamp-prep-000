
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else 
    return true
  end
end
  

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else 
    return false 
  end 
end 

def move(board, index, character = "X")
  if valid_move(board, index)
    board[index] = character
  else 
    puts "That position is taken, please enter another number between 1-9"
  end
end

def turn(board)
  puts "Please enter 1-9:"
end
