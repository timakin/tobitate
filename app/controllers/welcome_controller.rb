class WelcomeController < ApplicationController
  def index
  	if Project.exists?
	  	@picked_project = Project.find_by_id(3)
	  	@goal_percentage = (@picked_project.now_price.to_f / @picked_project.goal_price.to_f) * 100
	  end
  end
end
