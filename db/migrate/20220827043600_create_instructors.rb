class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :gym_id
      t.integer :number_of_students
      t.float :hours_taught
      t.boolean :lead_climbing_instructor

      t.timestamps
    end
  end
end
