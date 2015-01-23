# The below method might be needed when you are inside a Class but outside, you don't need it.
# def intialize(value)
#   puts "Whatever"
#   @array = value
#   @move = value
#   @player = value
# end

def new_game
  @array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
end

# Had to have this here to initialize the variable.
# @array = []
# @move
@player = [ "player 1", "player 2" ]
# player_1 = {token: "X", score: 0}
# player_2 = {token: "O", score: 0}
# @player << player_1
# @player << player_2

# Have to put new_game here to update the variable above.
new_game

def game_board

  lines = [0..2, 3..5, 6..8]

  lines.each do |line|
    puts "\n-------"
    print "|"
    @array[line].each do |ak|
      print "#{ak}|"
    end
  end
  puts "\n-------"

end


def winner (player)

  winning_combination = [[0, 1, 2], [3, 4, 5,], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  y = @array

  winning_combination.each do |wc|
    if y[wc[0]] + y[wc[1]] + y[wc[2]] == "XXX"
      game_board
      puts "player 1 wins the game!"
      exit
    elsif y[wc[0]] + y[wc[1]] + y[wc[2]] == "OOO"
      game_board
      puts "player 2 wins the game!"
      exit
    else
    end
  end

end

def player_move(player)
  game_board
  if player == "player 1"
    puts "1st player select a square number"
    @move = gets.to_i
    @array[@move-1] = "X"
    winner(player)
  else
    puts "2nd player select a square number"
    @move = gets.to_i
    @array[@move-1] = "O"
    winner(player)
  end
end

player_move(@player[0])
player_move(@player[1])
player_move(@player[0])
player_move(@player[1])
player_move(@player[0])
player_move(@player[1])
player_move(@player[0])
player_move(@player[1])
player_move(@player[0])

game_board

# Need a draw method after nine moves have been used up. 