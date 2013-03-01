class EnglishMooc < ActiveRecord::Base
  attr_accessible :yksi, :kaksi, :kolme, :nelja, :viisi, :kuusi, :seitseman, :kahdeksan, :yhdekan, :kymmenen
  belongs_to :english_mooc_participant
end
