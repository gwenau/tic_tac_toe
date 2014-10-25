def intialize(value)
  @array = value
  @move = value
end

def new_game
  @array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
end

# def move(move_x)
#   @move = move_x
# end

# Had to have this here to initialize the variable.
@array = []
@move
# Have to put new_game here to update the variable above.
new_game

def x_move
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
    puts "Player 1 wins the game!"
    exit
  elsif @array[3] + @array[4] + @array[5] == "XXX"
    puts "Player 1 wins the game!"
    exit
  elsif @array[6] + @array[7] + @array[8] == "XXX"
    puts "Player 1 wins the game!"
    exit
  elsif @array[0] + @array[3] + @array[6] == "XXX"
    puts "Player 1 wins the game!"
    exit
  elsif @array[1] + @array[4] + @array[7] == "XXX"
    puts "Player 1 wins the game!"
    exit
  elsif @array[2] + @array[5] + @array[8] == "XXX"
    puts "Player 1 wins the game!"
    exit
  elsif @array[0] + @array[4] + @array[8] == "XXX"
    puts "Player 1 wins the game!"
    exit
  elsif @array[2] + @array[4] + @array[6] == "XXX"
    puts "Player 1 wins the game!"
    exit
  else
  x_move
  end
end

def player_1
  x_move
  puts "1st player select a square number"
  @move = gets.to_i
  # if @array[@move-1] == "X" || "O"
  #   puts "Sorry that square has already been taken, please select another square"
  # end
  @array[@move-1] = "X"
  won_x
end

def player_2
  x_move
  puts "2nd player select a square number"
  @move = gets.to_i
  # if @array[@move-1] == "X" || "O"
  #   puts "Sorry that square has already been taken, please select another square"
  # end
  @array[@move-1] = "O"
  won_x
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

x_move