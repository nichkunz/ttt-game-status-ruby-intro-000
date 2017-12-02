# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
# win_index_1 = WIN_COMBINATIONS[0]
# win_index_2 = WIN_COMBINATIONS[1]
# win_index_3 = WIN_COMBINATIONS[2]
# win_index_4 = WIN_COMBINATIONS[3]
# win_index_5 = WIN_COMBINATIONS[4]
# win_index_6 = WIN_COMBINATIONS[5]
# win_index_7 = WIN_COMBINATIONS[6]
# win_index_8 = WIN_COMBINATIONS[7]
# win_index_9 = WIN_COMBINATIONS[8]

def won?(board)
  blank_board = board.all? {|i| i != " "}
  return blank_board

  # if
  #   board.none? {|j| j == " "}
  #   full_board == false
  #   return full_board
  # end

  win_index_1 = WIN_COMBINATIONS[0]
  if win_index_1[0] == "X" && win_index_1[1] == "X" && win_index_1[2] == "X"
    return win_index_1
  elsif win_index_1[0] == "O" && win_index_1[1] == "O" && win_index_1[2] == "O"
    return win_index_1
  end
  #
  # win_index_1 = WIN_COMBINATIONS[0].all? do |check|
  #   check == "X" || check == "O"
  # end
  # if win_index_1 == true
  #   return win_index_1
  # end
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_2.all? do |check|
    check == "X" || check == "O"
  # return win_index_2
  end
  win_index_3 = WIN_COMBINATIONS[2]
  win_index_3.each do |check|
    check == "X" || check == "O"
  # return win_index_3
  end
  win_index_4 = WIN_COMBINATIONS[3]
  win_index_4.each do |check|
    check == "X" || check == "O"
  # return win_index_4
  end
  win_index_5 = WIN_COMBINATIONS[4]
  win_index_5.each do |check|
    check == "X" || check == "O"
  # return win_index_5
  end
  win_index_6 = WIN_COMBINATIONS[5]
  win_index_6.each do |check|
    check == "X" || check == "O"
  # return win_index_6
  end
  win_index_7 = WIN_COMBINATIONS[6]
  win_index_7.each do |check|
    check == "X" || check == "O"
  # return win_index_7
  end
  win_index_8 = WIN_COMBINATIONS[7]
  win_index_8.each do |check|
    check == "X" || check == "O"
  # return win_index_8
  end
  # if win_index_1 == true
  #   return win_index_1
  # elsif win_index_2 == true
  #   return win_index_2
  # elsif win_index_3 == true
  #   return win_index_3
  # end
end


def full?(board)
  board.none?{|i| i == "X" || i == "O"}
  board.all?{|i| i == "X" || i == "O"} #=> true
end

def draw?(board)
  board.none?{|i| i == " " || i == "" || i == "  "}
  board.none? do |l|
    l != WIN_COMBINATIONS[0] || l != WIN_COMBINATIONS[1] || l != WIN_COMBINATIONS[2] || l != WIN_COMBINATIONS[3] || l != WIN_COMBINATIONS[4] ||
    l != WIN_COMBINATIONS[5] ||
    l != WIN_COMBINATIONS[6] ||
    l != WIN_COMBINATIONS[7] ||
    l != WIN_COMBINATIONS[8]
  end
end

def over?

end

def winner

end
