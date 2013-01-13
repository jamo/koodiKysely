class CodeQuestions < ActiveRecord::Base
  attr_accessible  :no_indent_a, :no_indent_b , :no_indent_comment, :bad_variable_names_a, :bad_variable_names_b, :bad_variable_names_comment , :no_air_a, :no_air_b, :no_air_comment
  attr_accessible :extra_comments_a, :extra_comments_b, :extra_comments_comment, :bad_method_names_a, :bad_method_names_b, :bad_method_names_comment
  attr_accessible :everything_in_main_a , :everything_in_main_b , :everything_in_main_comment , :too_complex_iffs_a , :too_complex_iffs_b , :too_complex_iffs_comment , :unconsistent_names_a , :unconsistent_names_b , :unconsistent_names_comment , :many_methods_a , :many_methods_b , :many_methods_comment
  belongs_to :student
end
