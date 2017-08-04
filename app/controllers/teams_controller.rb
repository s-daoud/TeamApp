class TeamsController < ApplicationController

  def index
    @teams = Team.includes(:points)
  end

end
