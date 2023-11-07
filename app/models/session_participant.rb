# == Schema Information
#
# Table name: session_participants
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  group_id   :integer
#  user_id    :integer
#
class SessionParticipant < ApplicationRecord
end
