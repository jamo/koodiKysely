class AddMoreDataToUser < ActiveRecord::Migration
  def change
    add_column :english_mooc_participants, :nationality, :string
    add_column :english_mooc_participants, :native_language, :string
    add_column :english_mooc_participants, :request, :text
    add_column :english_mooc_participants, :ip, :string
  end
end
