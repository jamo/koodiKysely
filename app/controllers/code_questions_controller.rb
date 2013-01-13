class CodeQuestionsController < ApplicationController
  include Wicked::Wizard

  steps :part1, :part2, :part3, :part4, :part5, :part6, :part7, :part8


  def show
    @student =  Student.find_by_id(session[:student_id])

    @code_question = CodeQuestion.find_by_id(session[:code_question_id])
    redirect_to new_student_path unless @student and @code_question 
    session[:auth] = "foobar"
    render_wizard
  end

  def update
    @student = Student.find_by_id(session[:student_id])
    @code_question = CodeQuestion.find_by_id(session[:code_question_id])
    @code_question.update_attributes(params[:code_question])
    
    render_wizard @code_question
  end
end
