def display_board (elements)
  puts (" #{elements[0]} | #{elements[1]} | #{elements[2]} ")
  puts ("-----------")
  puts (" #{elements[3]} | #{elements[4]} | #{elements[5]} ")
  puts ("-----------")
  puts (" #{elements[6]} | #{elements[7]} | #{elements[8]} ")
end

def turn (board)
  puts "Enter the new position"
  userInput = gets.strip
  index = userInput.to_i

  if ( board[index] == "X" || board[index] == "O")
    turn (board)
  else
    board [index] = "X"
  end
end

