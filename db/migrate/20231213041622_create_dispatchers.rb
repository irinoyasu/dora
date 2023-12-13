class CreateDispatchers < ActiveRecord::Migration[7.0]
  def change
    create_table :dispatchers do |t|
      t.string :dispatcher_id
      t.string :name
      t.text :contact_info
      t.text :assigned_loads
      t.text :schedule

      t.timestamps
    end
  end
end
