class CreateCodeQuestions < ActiveRecord::Migration
  def up
    create_table :code_questions do |t|
      t.string :no_indent
      t.text :no_indent_comment

      t.string :bad_variable_names
      t.text :bad_variable_names_comment

      
      t.string :no_air
      t.text :no_air_comment

      t.string :extra_comments
      t.text :extra_comments_comment

      t.string :bad_method_names
      t.text :bad_method_names_comment

      t.string :everything_in_main
      t.text :everything_in_main_comment

      t.string :too_complex_iffs
      t.text :too_complex_iffs_comment

      t.string :unconsistent_names
      t.text :unconsistent_names_comment

      t.references :student

      t.timestamps
    end
  end

  def down
    drop_table :code_questions
  end
end
