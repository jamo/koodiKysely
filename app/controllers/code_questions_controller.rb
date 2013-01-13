class CodeQuestionsController < ApplicationController
  include Wicked::Wizard

  steps :no_indent, :bad_variable_names, :no_air, :extra_comments, :bad_method_names, :everything_in_main, :too_complex_iffs, :unconsistent_names, :many_methods


  def show
    @student =  Student.find_by_id(session[:student_id])
    @code_question = CodeQuestions.create
    raise "Need to auth first" unless @student 
    #case step
    #when :find_friends
    #  @friends = @user.find_friends
    #end
    render_wizard
  end

  def update
    @student = Student.find_by_id(session[:student_id])
    @code_question = CodeQuestions.new
    @code_question.update_attributes(params[:code_question])
    render_wizard @student
  end


end
