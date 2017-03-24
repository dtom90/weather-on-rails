class WeatherController < ApplicationController
  def home
  end

  def current
    location = weather_params[:location]
    puts location
    response = Weather.new
    @current_weather = response.weather
  end

  def forecast
  end

  private
  def weather_params
    params.permit(:location)
  end
end
