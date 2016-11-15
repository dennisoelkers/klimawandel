class CreateOutsideReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :outside_readings do |t|
      t.float :actual
      t.belongs_to :reading
      t.timestamps
    end
  end
end
