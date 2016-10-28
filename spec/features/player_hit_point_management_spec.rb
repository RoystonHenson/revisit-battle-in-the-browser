require 'spec_helper'

  feature 'player hit point management' do
    scenario 'displays player hit points on play.erb' do
      visit '/'
      fill_in 'player1_name', with: 'Royston'
      fill_in 'player2_name', with: 'Rory'
      click_button 'Fight!'

      expect(page).to have_content('Royston HP : 100')
      expect(page).to have_content('Rory HP : 100')
    end
  end
