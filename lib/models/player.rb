class Player
  attr_reader :hitpoints, :player_name

  def initialize(player_name)
    @player_name = player_name
    @hitpoints = 100
  end
end
