class User < ActiveRecord::Base
<<<<<<< HEAD
=======
	has_many :posts
	has_one :profile
	validates_presence_of :firstname, :lastname

	# after_create :add_profile
	# after_create :build_profile #
>>>>>>> 3af737174959fb9d086771b932d2911e1275a1d9
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
=======
 # before_destroy :destroy_profile to destroy the profile when the user deletes their account
 	# private
 	# def add_profile
 	# 	render "new"
 	# end
>>>>>>> 3af737174959fb9d086771b932d2911e1275a1d9
end
