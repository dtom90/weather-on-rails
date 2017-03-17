class WeatherController < ApplicationController
  def home
  end

  def current
    response = Weather.new
    @current_weather = response.weather
  end

  def forecast
  end
end
