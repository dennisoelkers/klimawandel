require 'colorize'
require "homegear"

homegear = Homegear.default
homegear.getIds.each do |id|
  name = homegear.getName id
  puts "Adding device ".colorize(:green) + name.colorize(:blue) + " with id ".colorize(:green) + id.to_s.colorize(:blue)
  Device.create(id: id, name: name)
end
