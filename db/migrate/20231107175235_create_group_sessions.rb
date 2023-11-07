class CreateGroupSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :group_sessions do |t|
      t.integer :owner_id
      t.integer :book_id
      t.string :name_of_group
      t.string :list_of_members

      t.timestamps
    end
  end
end
