class CreateEnglishMoocParticipants < ActiveRecord::Migration
  def change
    create_table :english_mooc_participants do |t|
      t.string :student_number
      t.boolean :programmed_before
      t.text :details
      t.string :gender
      t.string :language
      t.string :year
      t.integer :hours, :default => -1

      t.timestamps
    end
  end
end
