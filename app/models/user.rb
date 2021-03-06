class User < ActiveRecord::Base
	after_create :create_profile
	has_many :posts
	has_many :comments
	has_one :profile
	validates_presence_of :firstname, :lastname

	# after_create :add_profile
	# after_create :build_profile #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
