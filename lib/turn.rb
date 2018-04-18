def display_board (elements)
  puts (" #{elements[0]} | #{elements[1]} | #{elements[2]} ")
  puts ("-----------")
  puts (" #{elements[3]} | #{elements[4]} | #{elements[5]} ")
  puts ("-----------")
  puts (" #{elements[6]} | #{elements[7]} | #{elements[8]} ")
end

def input_to_index(user_Input)
  user_Input.to_i - 1
end

def turn (board)
  puts "Enter the new position"
  userInput = gets.strip
  index = userInput.to_i - 1

  if (index > 8)
    puts "Value should not be greater than 8"
  elsif( board[index] == "X" || board[index] == "O")
    puts "Position is not empty"
    turn (board)
  else
    board [index] = "X"
  end
end
