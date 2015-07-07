class WelcomeController < ApplicationController

	def welcome
		if current_user.profile == nil
			redirect_to new_profile_path

		else 
			redirect_to home_path

		end
	end
	
	def index
	end 

	def home
	end
end
