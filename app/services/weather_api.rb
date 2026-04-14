class WeatherApi
  include HTTParty

  def fetch_weather (city)
    response = self.class.get("#{Settings.weather.base_url}/#{city}", query: { format: 'j1' })

    raise "API Error: #{response.code}" unless response.success?
    response.parsed_response
  end
end