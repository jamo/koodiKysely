class Student < ActiveRecord::Base
  attr_accessible :details, :programmed_before, :student_number
  has_many :code_questions #students answers
end
