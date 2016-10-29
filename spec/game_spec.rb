require 'models/game'

describe Game do
  subject { described_class.new(Player.new('Royston'), Player.new('Rory')) }

  describe '#initialize' do

    it 'with 2 players' do
      expect(subject.player_1.player_name).to eq('Royston')
      expect(subject.player_2.player_name).to eq('Rory')
    end
  end
  describe '#attack' do
    it 'attack reduces player 2 HP by 10' do
      subject.attack
      expect(subject.player_2.hitpoints).to eq(90)
    end
  end
end
