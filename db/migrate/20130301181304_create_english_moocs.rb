class CreateEnglishMoocs < ActiveRecord::Migration
  def change #the big 5
    create_table :english_moocs do |t|
      t.string :yksi
      t.string :kaksi
      t.string :kolme
      t.string :nelja
      t.string :viisi
      t.string :kuusi
      t.string :seitseman
      t.string :kahdeksan
      t.string :yhdekan
      t.string :kymmenen
      t.references :english_mooc_participant

      t.timestamps
    end
  end
end
