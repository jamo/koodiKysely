class PagesController < ApplicationController
  def index
    @kiitos = "Kiitos kyselyyn vastaamisesta" if session[:auth]
    session[:user_id] = nil
    session[:code_question_id] = nil
    session[:auth] = nil
  end
end
