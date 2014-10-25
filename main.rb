

  def intialize(value)
    @array = value
  end

  def new_game
    @array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  # Had to have this here to initialize the variable.
  @array = []

  # Have to put new_game here to update the variable above.
  new_game

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
