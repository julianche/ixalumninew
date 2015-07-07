class ProfilesController < ApplicationController
	def index
	end
	def new 
		@profile = current_user.build_profile
	end

	def create
	    @profile = current_user.build_profile(profile_params)
	    if @profile.save
	    	redirect_to home_path
	    else
	    	render "new"
	    end
	end

	private
	def profile_params
		params.require(:profile).permit(:occupation, :degree, :ixyear, :session, :university, :email, :city, :country )
	end
end
