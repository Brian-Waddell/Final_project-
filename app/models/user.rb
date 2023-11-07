# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many  :group_sessions, class_name: "GroupSession", foreign_key: "owner_id", dependent: :destroy

  has_many  :books, class_name: "Book", foreign_key: "user_id", dependent: :destroy

  has_many  :user_books, class_name: "UserBook", foreign_key: "user_id", dependent: :destroy
  
  has_many  :session_participants, class_name: "SessionParticipant", foreign_key: "user_id", dependent: :destroy

end
