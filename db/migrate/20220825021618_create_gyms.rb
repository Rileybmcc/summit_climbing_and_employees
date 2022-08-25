class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.integer :opening_time
      t.integer :closing_time
      t.boolean :currently_open
      t.integer :customer_capacity
      t.timestamps 
    end
  end
end
