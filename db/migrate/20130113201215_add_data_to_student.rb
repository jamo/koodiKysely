class AddDataToStudent < ActiveRecord::Migration
  def up
    add_column :students, :gender, :string
    add_column :students, :language, :string
    add_column :students, :year, :integer
    add_column :students, :hours, :integer
  end

  def down
    remove_column :students, :gender
    remove_column :students, :language
    remove_column :students, :year
    remove_column :students, :hours

    
  end
end
