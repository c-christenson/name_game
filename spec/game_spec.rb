require 'capybara/rspec'
require 'spec_helper'

feature 'homepage' do

  scenario 'start a game' do
    visit '/'
    expect(page).to have_content("Start Game")
  end

  scenario 'when a user clicks start game, they will be taken to the game' do
    click_button("Start Game")
    expect(page).not_to have_content("Start Game")
  end
  
end
