@array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
@player = [ "Player 1", "Player 2" ]

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

def winner(player)
  winning_combination = [[0, 1, 2], [3, 4, 5,], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  y = @array
  winning_combination.each do |wc|
    if (y[wc[0]] + y[wc[1]] + y[wc[2]] == "XXX") || (y[wc[0]] + y[wc[1]] + y[wc[2]] == "OOO")
      game_board
      puts "#{player} wins the game!"
      exit
    end
  end
end

def player_move(player)
  game_board
  puts "#{player}, please select a square number"
  @move = gets.chomp
  if !@array.include?(@move) 
    puts "Sorry, that square has already been taken, please choose another square."
    player_move(player)
  else
    if player == "Player 1"
      @array[@move.to_i-1] = "X"
    else
      @array[@move.to_i-1] = "O"
    end
    winner(player)
  end
end

def play_game
  (0..1).cycle(4) do |move|
    player_move(@player[move])
  end
  player_move(@player[0])
  game_board
  puts "Draw!"
end

play_game