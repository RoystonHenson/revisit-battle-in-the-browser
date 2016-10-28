require 'spec_helper'

feature 'player name management' do
  scenario 'players enter names into form' do
    visit '/'
    fill_in 'player1_name', with: 'Royston'
    fill_in 'player2_name', with: 'Rory'
    click_button 'Fight!'

  end
end
