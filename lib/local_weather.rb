class LocalWeather
  def initialize(location)
    @location = location
  end

  def current
    Openweather2.get_weather(city: @location, units: 'metric')
  end
end
