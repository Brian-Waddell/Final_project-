class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :likes
      t.integer :dislikes
      t.integer :questions_id
      t.integer :participant_id

      t.timestamps
    end
  end
end
