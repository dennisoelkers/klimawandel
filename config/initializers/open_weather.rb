require "openweather2"

puts "Initializing OpenWeather API ... ".colorize(:green)
Openweather2.configure do |config|
  config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
  config.apikey = ENV['OPENWEATHER_API_TOKEN']
end
