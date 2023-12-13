class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :driver_id
      t.string :name
      t.text :license_details
      t.integer :experience
      t.boolean :availability_status

      t.timestamps
    end
  end
end
