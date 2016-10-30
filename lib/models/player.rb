class Player
DEFAULT_HITPOINTS = 100
DEFAULT_DAMAGE = 10

  attr_reader
  attr_accessor :hitpoints , :player_name

  def initialize(player_name)
    @player_name = player_name
    @hitpoints = DEFAULT_HITPOINTS
  end

  def reduce_hitpoints
    @hitpoints -= DEFAULT_DAMAGE
  end

end
