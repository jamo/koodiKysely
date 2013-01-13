class StudentsController < ApplicationController
  def new
    @student = Student.new
    @kiitos = "Kiitos kyselyyn vastaamisesta" if session[:auth]
    session[:user_id] = nil
    session[:code_question_id] = nil
    session[:auth] = nil
  end

  def create
    @student = Student.create(params[:student])
    session[:student_id] = @student.id
    @code_question = @student.code_questions.create
    session[:code_question_id] = @code_question.id
    redirect_to  code_question_path(:part1)
  end

  def index
  end

  def show

  end
end
