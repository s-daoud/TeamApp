# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  date_created :datetime
#  date_updated :datetime
#

class Team < ApplicationRecord

  has_many :users
  
  has_many :points,
    through: :users
end
