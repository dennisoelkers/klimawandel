class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :name, null: false
      t.belongs_to :room, null: true, index: true
      t.timestamps
    end
    add_foreign_key :devices, :rooms
  end
end