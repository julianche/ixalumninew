class ProfilesController < ApplicationController
	def index
	end
	def new 
		@profile = Profile.new
	end

	def show
		@profile = current_user.profile
		@name = current_user.firstname
		@surname = current_user.lastname
	end

	def create
	    @profile = Profile.new(profile_params)
	    @profile.user = current_user
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
