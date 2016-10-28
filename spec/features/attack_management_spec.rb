require 'spec_helper'

  feature 'player attack management' do
    scenario 'player 1 receives confirmation when attacking player 2' do
      sign_in_and_play
      click_link 'Attack!'

      expect(page).to have_content('Royston attacks Rory!')
    end
  end
