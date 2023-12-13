class CreateCarriers < ActiveRecord::Migration[7.0]
  def change
    create_table :carriers do |t|
      t.string :carrier_id
      t.date :registration_date
      t.integer :capital
      t.integer :number_of_employees
      t.string :vehicle_type1
      t.string :vehicle_type2
      t.string :vehicle_type3
      t.string :vehicle_type4
      t.string :vehicle_type5
      t.boolean :presence_of_warehouse
      t.text :insurance_policy1
      t.text :insurance_policy2
      t.integer :guarantee_amount

      t.timestamps
    end
  end
end
