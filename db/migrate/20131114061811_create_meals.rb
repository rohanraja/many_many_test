class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.float :price
      t.integer :mealtime
      t.integer :mealday
      t.integer :mealindex
      t.integer :enrolled_no_of_students
      t.date :time

      t.timestamps
    end
  end
end
