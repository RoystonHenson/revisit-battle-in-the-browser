require 'spec_helper'

  feature 'player hit point management' do
    scenario 'shows player hit points at game start' do
      sign_in_and_play

      expect(page).to have_content('Royston HP : 100')
      expect(page).to have_content('Rory HP : 100')
    end

    scenario 'shows player hitpoints after attacks' do
      sign_in_and_play
      click_link 'Attack!'
      click_link 'Return to Battle!'
      expect(page).to have_content('Rory HP : 90')
    end
  end
