class WelcomeController < ApplicationController

	def welcome
		if current_user.profile == nil
			# with redirect to profiole index it says no data received.
			redirect_to new_profile_path
		end
	end
	def index
	end 

	def home
	end
end
