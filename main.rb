def new_game
  @array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
end

@player = [ "player 1", "player 2" ]

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

(0..1).cycle(4) do |move|
  player_move(@player[move])
end
player_move(@player[0])
game_board
puts "Draw!"
