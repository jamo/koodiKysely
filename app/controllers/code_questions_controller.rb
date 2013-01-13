class CodeQuestionsController < ApplicationController
  include Wicked::Wizard

  steps :no_indent, :bad_variable_names, :no_air, :extra_comments, :bad_method_names, :everything_in_main, :too_complex_iffs, :unconsistent_names


  def show
    @student =  Student.find_by_id(session[:student_id])

    @code_question = CodeQuestion.find_by_id(session[:code_question_id])
    redirect_to new_student_path unless @student and @code_question 
    #case step
    #when :find_friends
    #  @friends = @user.find_friends
    #end

    render_wizard
  end

  def update
    @student = Student.find_by_id(session[:student_id])
    @code_question = CodeQuestion.find_by_id(session[:code_question_id])
    @code_question.update_attributes(params[:code_question])
    
    render_wizard @code_question
  end
=begin
  
      t.integer :no_indent
      t.text :no_indent_comment

      t.integer :bad_variable_names
      t.text :bad_variable_names_comment

      t.integer :no_air
      t.text :no_air_comment

      t.integer :extra_comments
      t.text :extra_comments_comment

      t.integer :bad_method_names
      t.text :bad_method_names_comment

      t.integer :everything_in_main
      t.text :everything_in_main_comment 

      t.integer :too_complex_iffs
      t.text :too_complex_iffs_comment

      t.integer :unconsistent_names 
      t.text :unconsistent_names_comment
      
      t.integer :many_methods   
      t.text :many_methods_comment
      t.references :student => e
=end
@noindentA = <<EOF

EOF

@noindentB = <<EOF

EOF

end
