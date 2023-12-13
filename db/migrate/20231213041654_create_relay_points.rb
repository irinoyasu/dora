class CreateRelayPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :relay_points do |t|
      t.string :relay_point_id
      t.string :location
      t.integer :capacity
      t.text :available_services
      t.text :contact_info

      t.timestamps
    end
  end
end
