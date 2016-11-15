class DeviceReading < ApplicationRecord
  belongs_to :device
  belongs_to :room
  belongs_to :room_reading
end
