class Project < ActiveRecord::Base
	has_many :revenues,  :dependent => :destroy
	has_many :backups,   :dependent => :destroy
	has_many :activities,:dependent => :destroy
	belongs_to :user


  acts_as_taggable
  acts_as_taggable_on :categories
end
