class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publish_date
      t.integer :rating
      t.integer :user_id
      t.integer :group_session_id
      t.string :photo

      t.timestamps
    end
  end
end
