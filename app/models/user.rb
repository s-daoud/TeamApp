# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  team_id      :integer          not null
#  date_created :datetime
#  date_updated :datetime
#

class User < ApplicationRecord

  belongs_to :team

  has_many :points, dependent: :destroy

  before_update :update_date
end
