class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    session[:student_id] = @student.id
    @code_question = @student.code_questions.create
    session[:code_question_id] = @code_question.id
    redirect_to  code_question_path(:no_indent)
  end

  def index
  end

  def show

  end
end
