# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
#  author           :string
#  photo            :string
#  publish_date     :string
#  rating           :integer
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  group_session_id :integer
#  user_id          :integer
#
class Book < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"

  has_many  :group_sessions, class_name: "GroupSession", foreign_key: "book_id", dependent: :destroy

  has_many  :user_books, class_name: "UserBook", foreign_key: "book_id", dependent: :destroy

end
