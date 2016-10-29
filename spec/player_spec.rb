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
  

end
