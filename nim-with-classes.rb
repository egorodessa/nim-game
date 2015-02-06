class Nimplayer

  attr_reader :name # this does a lot of what you were trying to do by hand...

  def initialize(name)
    @name = name
  end

end

######

print "Enter test player's name: "
player_name = gets.chomp
test_player = Nimplayer.new(player_name)

puts "Reading Nimplayer.name: #{ test_player.name }"
