class CreateLoads < ActiveRecord::Migration[7.0]
  def change
    create_table :loads do |t|
      t.string :load_id
      t.text :description
      t.string :size
      t.string :destination
      t.string :status

      t.timestamps
    end
  end
end
