require 'dotenv/load'
require 'httparty'
require 'pp'

API_KEY = ENV['API_KEY']

class WeatherUnderground
  include HTTParty
  
  base_uri 'api.wunderground.com'
  format :json
  
  def self.get_current_weather
    get("/api/#{API_KEY}/conditions/q/CA/San_Francisco.json")
  end
  
end

response = WeatherUnderground.get_current_weather
puts response['current_observation']['weather']