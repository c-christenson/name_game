require 'capybara/rspec'
require 'spec_helper'

feature 'homepage' do

  scenario 'start a game' do
    visit '/'
    expect(page).to have_content("Start Game")
  end

end
