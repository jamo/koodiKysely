class CreateCodeQuestions < ActiveRecord::Migration
  def up
    create_table :code_questions do |t|
      t.boolean :no_indent_a
      t.boolean :no_indent_b
      t.text :no_indent_comment

      t.boolean :bad_variable_names_a
      t.boolean :bad_variable_names_b
      t.text :bad_variable_names_comment

      
      t.boolean :no_air_a
      t.boolean :no_air_b
      t.text :no_air_comment

      t.boolean :extra_comments_a
      t.boolean :extra_comments_b
      t.text :extra_comments_comment

      t.boolean :bad_method_names_a
      t.boolean :bad_method_names_b
      t.text :bad_method_names_comment

      t.boolean :everything_in_main_a
      t.boolean :everything_in_main_b
      t.text :everything_in_main_comment 

      t.boolean :too_complex_iffs_a
      t.boolean :too_complex_iffs_b
      t.text :too_complex_iffs_comment

      t.boolean :unconsistent_names_a
      t.boolean :unconsistent_names_b 
      t.text :unconsistent_names_comment
      
      t.boolean :many_methods_a
      t.boolean :many_methods_b
      t.text :many_methods_comment
      t.references :student

      t.timestamps
    end
  end

  def down
    drop_table :code_questions
  end
end
