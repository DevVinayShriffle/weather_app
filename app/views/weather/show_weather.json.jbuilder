json.temperature do
  json.celcius @temperature['FeelsLikeC']
  json.fahrenhite @temperature['FeelsLikeF']
  json.clouds @temperature['cloudcover']
  json.humidity @temperature['humidity']
  json.local_time @temperature['localObsDateTime']
  json.observation_time @temperature['observation_time']
end