def intialize(value)
  @array = value
  @move = value
end

def new_game
  @array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
end

# Had to have this here to initialize the variable.
@array = []
@move
# Have to put new_game here to update the variable above.
new_game

def game_board
  puts "\n-------"
  print "|"
  @array[0..2].each do |ak|
    print "#{ak}|"
  end
  puts "\n-------"
  print "|"
  @array[3..5].each do |ak| 
    print "#{ak}|" 
  end
  puts "\n-------"
  print "|"
  @array[6..8].each do |ak| 
    print "#{ak}|" 
  end
  puts "\n-------"
end

def won_x
  if @array[0] + @array[1] + @array[2] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[3] + @array[4] + @array[5] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[6] + @array[7] + @array[8] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[0] + @array[3] + @array[6] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[1] + @array[4] + @array[7] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[2] + @array[5] + @array[8] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[0] + @array[4] + @array[8] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  elsif @array[2] + @array[4] + @array[6] == "XXX"
    game_board
    puts "Player 1 wins the game!"
    exit
  else
  end
end

def won_o
  if @array[0] + @array[1] + @array[2] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[3] + @array[4] + @array[5] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[6] + @array[7] + @array[8] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[0] + @array[3] + @array[6] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[1] + @array[4] + @array[7] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[2] + @array[5] + @array[8] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[0] + @array[4] + @array[8] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  elsif @array[2] + @array[4] + @array[6] == "OOO"
    game_board
    puts "Player 2 wins the game!"
    exit
  else
  end
end

def player_1
  game_board
  puts "1st player select a square number"
  gets
  if gets = "test"
    puts "That hit's the spot!"
  else
    @move = gets.to_i
    # if @array[@move-1] == "X" || "O"
    #   puts "Sorry that square has already been taken, please select another square"
    # end
    @array[@move-1] = "X"
    won_x
    won_o
  end
end

def player_2
  game_board
  puts "2nd player select a square number"
  @move = gets.to_i
  # if @array[@move-1] == "X" || "O"
  #   puts "Sorry that square has already been taken, please select another square"
  # end
  @array[@move-1] = "O"
  won_x
  won_o
end


player_1
player_2
player_1
player_2
player_1
player_2
player_1
player_2
player_1

game_board