class EnglishMoocsController < ApplicationController

  def create

  end

  def update
    @title = "mooc.fi Survey"
    @eng = EnglishMooc.find_by_id(params[:id])
    @eng.update_attributes(params[:english_mooc])
    session[:auth] = :ok
    redirect_to new_english_mooc_participant_path

  end

  def show
    @title = "mooc.fi Survey"
    redirect_to edit_english_mooc_path params[:id]
  end

  def edit
    @title = "mooc.fi Survey"
    @mooc_answer = EnglishMooc.find_by_id(params[:id])
  end


end
