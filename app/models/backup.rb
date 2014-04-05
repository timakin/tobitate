class Backup < ActiveRecord::Base
	has_one :revenue
	belongs_to :user
	belongs_to :project
end
