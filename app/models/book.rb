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
end
