def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts"-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts"-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i

  if index.is_a? Integer
    return index - 1
  else
    return -1
  end
end

def valid_move?(board, index)
  if index < 9 && index >= 0
    if board[index] == "" || board[index] == " " || board[index] == nil
      return true
    else
      return false
    end
  else
    return false
  end

end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  else
    puts "Move is invalid. Please try again."

  end

end

def turn()
  puts "Please enter 1-9:"
end
