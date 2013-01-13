class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :student_number
      t.boolean :programmed_before
      t.text :details

      t.timestamps
    end
  end

  def down
    drop_table :students
  end
end
