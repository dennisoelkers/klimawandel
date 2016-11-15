require 'local_weather'

class TakeTemperatureReadingsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    reading = Reading.create
    Room.all.each do |room|
      room_reading = reading.room_readings.create name: room.name, target: room.target
      room.devices.each do |device|
        room_reading.device_readings.create device: device, room: room, target: device.target, actual: device.actual
      end
    end
    local_weather = LocalWeather.new(ENV['LOCAL_CITY'])
    outside_reading = OutsideReading.create actual: local_weather.current.temperature
    reading.outside_reading = outside_reading
    reading.save
  end
end
