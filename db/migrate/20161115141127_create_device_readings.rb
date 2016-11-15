class CreateDeviceReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :device_readings do |t|
      t.belongs_to :room_reading
      t.belongs_to :device
      t.belongs_to :room
      t.float :actual
      t.float :target
      t.timestamps
    end
  end
end
