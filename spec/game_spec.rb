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
    it "19 game attacks to reduce P2 HP to 0" do
      19.times { subject.attack }
      expect(subject.attack).to eq('You Lose!') 
    end
  end
end
