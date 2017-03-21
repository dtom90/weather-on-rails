require 'rails_helper'

WU_LOGO_ID = '#wunderground_logo'

def has_wul_logo
  expect(page).to have_selector('img')
  expect(page.find(WU_LOGO_ID)['src']).to have_content 'wundergroundLogo'
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