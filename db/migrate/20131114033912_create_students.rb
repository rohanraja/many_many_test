class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :rollno
      t.string :name
      t.string :email
      t.string :phoneno
      t.string :department
      t.integer :year

      t.timestamps
    end
  end
end
