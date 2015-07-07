class User < ActiveRecord::Base
	has_many :posts
	has_one :profile
	validates_presence_of :firstname, :lastname

	# after_create :add_profile
	# after_create :build_profile #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 # before_destroy :destroy_profile to destroy the profile when the user deletes their account
 	# private
 	# def add_profile
 	# 	render "new"
 	# end
end
