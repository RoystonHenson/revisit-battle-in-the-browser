require 'spec_helper'


feature 'player name management' do
  scenario 'players enter names into form' do
    sign_in_and_play

  end

  scenario 'displays players names on play.erb' do
    sign_in_and_play

    expect(page).to have_content('Royston')
    expect(page).to have_content('Rory')
  end
end
