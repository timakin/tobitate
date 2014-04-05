class Project < ActiveRecord::Base
	has_many :revenues, :dependent => :destroy
	belongs_to :user
  acts_as_taggable
  acts_as_taggable_on :categories
end
