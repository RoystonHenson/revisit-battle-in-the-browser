class Player
  attr_reader :hitpoints, :player_name

  def initialize(player_name)
    @player_name = player_name
    @hitpoints = 100
  end

  def attack(player_name)
    player_name.reduce_hitpoints
  end

  def reduce_hitpoints
    @hitpoints -= 10
  end

end
