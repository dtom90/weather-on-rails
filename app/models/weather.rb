API_KEY = ENV['API_KEY']

class Weather
  include HTTParty
  
  base_uri 'api.wunderground.com'
  format :json
  
  def initialize
    @response = self.class.get("/api/#{API_KEY}/conditions/q/CA/San_Francisco.json")
  end
  
  def weather
    pp @response
    @response['current_observation']['weather']
  end
  
end
