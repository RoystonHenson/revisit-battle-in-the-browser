require 'spec_helper'

  feature 'player hit point management' do
    scenario 'displays player hit points on play.erb' do
      sign_in_and_play

      expect(page).to have_content('Royston HP : 100')
      expect(page).to have_content('Rory HP : 100')
    end
  end
