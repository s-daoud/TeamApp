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

  validates :name, presence: true

  has_many :users

  has_many :points,
    through: :users

  before_update :update_date

  def all_points
    self.points.reduce(0) { |sum, entry| sum + entry.points }
  end
end
