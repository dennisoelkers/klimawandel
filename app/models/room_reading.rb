class RoomReading < ApplicationRecord
  has_many :device_readings
  belongs_to :reading
end
