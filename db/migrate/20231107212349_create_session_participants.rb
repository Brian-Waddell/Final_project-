class CreateSessionParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :session_participants do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
