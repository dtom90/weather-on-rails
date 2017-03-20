require 'rails_helper'

def has_wul_logo
  expect(page).to have_selector('img#weather_underground_logo')
  expect(page.find('#weather_underground_logo')['src']).to have_content 'wundergroundLogo_4c_horz'
end

describe 'home page' do
  
  it 'home page has title and WUL logo', :type => :feature do
    visit root_path
    expect(page).to have_content('Weather on Rails')
    has_wul_logo
  end
  
end

describe 'default query' do
  
  it 'gets the current weather with no query', :type => :feature do
    visit weather_current_path
    expect(page).to have_content('Weather in San Francisco, California')
    has_wul_logo
  end
  
end