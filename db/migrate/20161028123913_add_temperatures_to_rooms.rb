class AddTemperaturesToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :target, :float
  end
end
