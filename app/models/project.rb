class Project < ActiveRecord::Base
	has_many :revenues, :dependent => :destroy
	belongs_to :user
end
