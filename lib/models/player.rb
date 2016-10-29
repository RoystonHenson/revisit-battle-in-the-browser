class Player
  attr_reader
  attr_accessor :hitpoints , :player_name

  def initialize(player_name)
    @player_name = player_name
    @hitpoints = 100
  end

  def reduce_hitpoints
    @hitpoints -= 10
  end

end
