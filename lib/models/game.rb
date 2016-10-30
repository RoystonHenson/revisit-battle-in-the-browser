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
    if player_health_during_attack <= 0
      @players[1].reduce_hitpoints
      return 'You Lose!'
    else

      @players[1].reduce_hitpoints
      switch_turn
    end
  end

  def switch_turn
    @players.reverse!
  end

  private

  def player_health_during_attack
    @players[1].hitpoints - Player::DEFAULT_DAMAGE
  end

end
