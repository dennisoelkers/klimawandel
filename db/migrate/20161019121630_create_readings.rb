class CreateReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :readings do |t|
      t.belongs_to :device, index: true
      t.float :actual
      t.float :target
      t.timestamps
    end
  end
end
