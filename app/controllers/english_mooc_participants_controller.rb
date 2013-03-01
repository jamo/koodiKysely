class EnglishMoocParticipantsController < ApplicationController
 def new
    @title = "mooc.fi Survey"
    @student = EnglishMoocParticipant.new
    @kiitos = "Than you for taking our survey!" if session[:auth]
    session[:user_id] = nil
    session[:code_question_id] = nil
    session[:auth] = nil
  end

  def create
    @title = "mooc.fi Survey"
    @student = EnglishMoocParticipant.create(params[:english_mooc_participant])
    @student.request = request.inspect
    @student.ip = request.ip
    @student.save!
    #session[:student_id] = @student.id
    @code_question = @student.english_moocs << EnglishMooc.create
    #session[:english_mooc_id] = @code_question.id
    redirect_to  english_mooc_path(@code_question)
  end

  def index
    raise "found it"
  end

  def show

  end
end
