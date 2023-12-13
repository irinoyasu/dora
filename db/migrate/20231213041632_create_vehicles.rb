class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_id
      t.string :type
      t.integer :capacity
      t.string :maintenance_status
      t.string :location

      t.timestamps
    end
  end
end
