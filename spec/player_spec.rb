require 'models/player'

describe Player do
  subject { described_class.new('Royston') }

  describe '#initialize' do
    it 'with a name' do
      expect(subject.player_name).to eq('Royston')
    end

    it 'with hitpoints' do
      expect(subject.hitpoints).to eq(100)
    end
  end
  describe '#attack' do # do feature test
    player_2 = Player.new('Rory')
    it 'attack reduces player 2 HP by 10' do
      subject.attack(player_2)
      expect(player_2.hitpoints).to eq(90)
    end
  end

end
