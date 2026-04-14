class WeatherController < ApplicationController
  def show_weather
    city = params[:city] || Settings.weather.default_city
    weather_data = WeatherApi.new.fetch_weather(city)

    @temperature = weather_data['current_condition'][0]
    @city = city
  end
end
