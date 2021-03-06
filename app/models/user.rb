class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects, 	:dependent => :destroy
  has_many :revenues, 	:through => :projects
  has_many :backups, 		:through => :projects
  has_many :activities, :through => :projects
end
