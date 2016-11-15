class Reading < ApplicationRecord
  has_many :room_readings
  has_one :outside_reading
end
