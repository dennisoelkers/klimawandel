class Room < ApplicationRecord
  has_many :devices
  attr_accessor :device_ids

  def as_json(options={})
    super.as_json(options).merge({:devices => devices})
  end
end
