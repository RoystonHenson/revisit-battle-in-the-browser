require 'models/game'

    describe Game do
      subject { described_class.new }

      describe '#initialize' do
        game = Game.new('Royston','Rory')
        it 'with 2 players' do
          expect(game.player_1).to eq('Royston')
          expect(game.player_2).to eq('Rory')
        end
    end
    end
