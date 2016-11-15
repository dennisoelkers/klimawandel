class CreateRoomReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :room_readings do |t|
      t.string :name
      t.float :target
      t.belongs_to :reading
      t.timestamps
    end
  end
end
