def sign_in_and_play
  visit '/'
  fill_in 'player_1_name', with: 'Royston'
  fill_in 'player_2_name', with: 'Rory'
  click_button 'Fight!'
end
