class WeatherApi
  include HTTParty
  base_uri 'https://wttr.in'

  def fetch_weather (city)
    response = self.class.get("/#{city}", query: { format: 'j1' })

    raise "API Error: #{response.code}" unless response.success?
    response.parsed_response
  end
end