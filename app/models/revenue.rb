class Revenue < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	belongs_to :backup
end
