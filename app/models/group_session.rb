# == Schema Information
#
# Table name: group_sessions
#
#  id              :integer          not null, primary key
#  list_of_members :string
#  name_of_group   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  book_id         :integer
#  owner_id        :integer
#
class GroupSession < ApplicationRecord
  
  belongs_to :user, required: true, class_name: "User", foreign_key: "owner_id"

  has_many  :session_participants, class_name: "SessionParticipant", foreign_key: "group_id", dependent: :destroy

  belongs_to :book, required: true, class_name: "Book", foreign_key: "book_id"

end
