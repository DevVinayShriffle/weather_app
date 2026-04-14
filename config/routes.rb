Rails.application.routes.draw do
  get 'weather', to: 'weather#show_weather'
end
