class CodeQuestionReviewControllerController < ApplicationController
  def index
  	@student = Student.all
    respond_to do |format|
      format.html
      format.json do
      	render :json => @student.to_json
      end
      format.csv { render text: Student.to_csv}
  	end

  end

end
