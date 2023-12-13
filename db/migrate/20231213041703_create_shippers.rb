class CreateShippers < ActiveRecord::Migration[7.0]
  def change
    create_table :shippers do |t|
      t.string :shipper_id
      t.string :company_name
      t.text :contact_info
      t.text :history_of_shipments

      t.timestamps
    end
  end
end
