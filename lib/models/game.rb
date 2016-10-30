require_relative 'player'

class Game
  attr :attacker, :defender, :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @attacker = @players[0]
    @defender = @players[1]
  end

  def attack
    @players[1].reduce_hitpoints
    switch_turn
  end

  def switch_turn
    @players.reverse!
  end

end
