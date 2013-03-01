class EnglishMoocParticipant < ActiveRecord::Base
  attr_accessible :details, :programmed_before, :student_number, :year, :hours, :language, :gender, :nationality, :native_language
  has_many :english_moocs #students answers
  # attr_accessible :title, :body
end