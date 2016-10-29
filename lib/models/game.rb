require_relative 'player'

class Game
  attr :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack
    @player_2.reduce_hitpoints
  end

end
