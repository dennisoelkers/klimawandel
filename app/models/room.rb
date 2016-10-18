class Room < ApplicationRecord
  has_many :devices, :foreign_key => :id
end
