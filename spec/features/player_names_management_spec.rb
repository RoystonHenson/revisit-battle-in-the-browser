require 'spec_helper'

feature 'player name management' do
  scenario 'players enter names into form' do
    visit '/'
    fill_in 'player1_name', with: 'Royston'
    fill_in 'player2_name', with: 'Rory'
    click_button 'Fight!'

  end

  scenario 'displays players names on play.erb' do
    visit '/'
    fill_in 'player1_name', with: 'Royston'
    fill_in 'player2_name', with: 'Rory'
    click_button 'Fight!'

    expect(page).to have_content('P1: Royston')
    expect(page).to have_content('P2: Rory')
  end
end
