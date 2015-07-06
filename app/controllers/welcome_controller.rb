class WelcomeController < ApplicationController

	def welcome
		if current_user.sign_in_count == 1
			redirect_to new_profile_path
		else
			render "index"
		end
	end
	def index
	end 

	def home
	end
end
