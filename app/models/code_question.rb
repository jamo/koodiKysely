class CodeQuestion < ActiveRecord::Base
  attr_accessible  :no_indent, :no_indent_comment, :bad_variable_names, :bad_variable_names_comment , :no_air, :no_air_comment
  attr_accessible :extra_comments, :extra_comments_comment, :bad_method_names, :bad_method_names_comment
  attr_accessible :everything_in_main, :everything_in_main_comment , :too_complex_iffs, :too_complex_iffs_comment , :unconsistent_names, :unconsistent_names_comment , :many_methods, :many_methods_comment
  belongs_to :student
end
