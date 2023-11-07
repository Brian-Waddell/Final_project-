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
end
