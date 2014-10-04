class Student < ActiveRecord::Base
  attr_accessible :details, :programmed_before, :student_number, :year, :hours, :language, :gender
  has_many :code_questions #students answers

  def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
      tmp_header = []
      tmp_header << Student.attribute_names
      tmp_header << CodeQuestion.attribute_names
	    csv << tmp_header.flatten
	    all.each do |std|
	      tpm_std = []
        tpm_std << std.attributes.collect{|a| a[1]}
        tpm_std << std.code_questions.first.attributes.collect{|a| a[1]}
        csv << tpm_std.flatten
	    end
    end
  end

end
