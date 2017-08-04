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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
