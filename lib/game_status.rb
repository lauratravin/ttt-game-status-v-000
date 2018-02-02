# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8], # cross row
  [2,4,6]  # cross row
]

def won?(board)
  WIN_COMBINATIONS.each do |combwin|
     if board[combwin[0]] == "X" && board[combwin[1]] == "X" && board[combwin[2]]  == "X"
       return combwin
     end

     if board[combwin[0]] == "O" && board[combwin[1]] == "O" && board[combwin[2]]  == "O"
       return combwin
     end
  end
  return false
end

def full(board)
  full = board.full? do |value|
    value == " "
  end
  return full
end
