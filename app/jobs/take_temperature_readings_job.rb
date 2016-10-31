class TakeTemperatureReadingsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Device.all.each do |device|
      Reading.create_from_device device
    end
  end
end
