class WeatherController < ApplicationController
  def show_weather
    city = params[:city]
    weather_data = WeatherApi.new.fetch_weather(city)

    @temperature = weather_data['current_condition'][0]
  end
end
