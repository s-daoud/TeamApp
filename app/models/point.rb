# == Schema Information
#
# Table name: points
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  points       :integer          not null
#  reason       :string(255)
#  date_created :datetime
#

class Point < ApplicationRecord

  belongs_to :user

end
