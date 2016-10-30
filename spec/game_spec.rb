require 'models/game'

describe Game do
  subject { described_class.new(Player.new('Royston'), Player.new('Rory')) }

  describe '#initialize' do

    it 'with 2 players' do
      expect(subject.attacker.player_name).to eq('Royston')
      expect(subject.defender.player_name).to eq('Rory')
    end
  end
  describe '#attack' do
    it 'attack reduces player 2 HP by 10' do
      subject.attack
      expect(subject.defender.hitpoints).to eq(90)
    end
  end
end
