require 'test_helper'

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get weather_home_url
    assert_response :success
  end

  test 'should get current' do
    get weather_current_url
    assert_response :success
  end

  test 'should get forecast' do
    get weather_forecast_url
    assert_response :success
  end

end
