# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  body           :string
#  dislikes       :integer
#  likes          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  participant_id :integer
#  questions_id   :integer
#
class Comment < ApplicationRecord
end
