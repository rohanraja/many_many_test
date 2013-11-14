class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :student_id
      t.string :ch_array
      t.date :time
      t.float :total

      t.timestamps
    end
  end
end
