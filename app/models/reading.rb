class Reading < ApplicationRecord
  belongs_to :device

  def self.create_from_device(device)
    Reading.create device: device, actual: device.actual, target: device.target
  end
end
