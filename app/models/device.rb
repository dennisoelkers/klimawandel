require 'homegear'

class Device < ApplicationRecord
  belongs_to :room, optional: true

  def target
    homegear.getValue(id, 4, "SET_TEMPERATURE")
  end

  def target=(temperature)
    homegear.setValue(id, 4, "SET_TEMPERATURE", temperature)
  end

  def actual
    homegear.getValue(id, 4, "ACTUAL_TEMPERATURE")
  end

  protected
  def homegear
    Homegear.default
  end
end
