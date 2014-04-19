class WelcomeController < ApplicationController
  def index
  	@picked_project = Project.first
  	@goal_percentage = (@picked_project.now_price.to_f / @picked_project.goal_price.to_f) * 100
  end
end
