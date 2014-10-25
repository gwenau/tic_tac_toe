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

x_move
puts "Select a square number"
@move = gets.to_i
@array[@move-1] = "X"

x_move


