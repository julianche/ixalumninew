class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
	end 

	def search
		@profiles = Profile.search(params[:q])
		render :index
	end

	def new 
		@profile = Profile.new
	end

	def show
		@profile = Profile.find(params[:id])
		@profile.firstname = current_user.firstname
	    @profile.lastname = current_user.lastname
		@name = @profile.firstname
		@surname = @profile.lastname
	end

	def create
	    @profile = Profile.create!(profile_params)
	    @profile.user = current_user
	    @profile.firstname = current_user.firstname
	    @profile.lastname = current_user.lastname
	    if @profile.save
	    	redirect_to home_path

	    else
	    	render "new"
	    end
	end

	def edit 
		@profile = Profile.find(params[:id])
	end

	def update
		@profile = Profile.find(params[:id])
		if @profile.update(profile_params)
			redirect_to @profile
		else
			render "form"
		end
	end


	private
	def profile_params
		params.require(:profile).permit(:image, :occupation, :degree, :ixyear, :session, :university, :email, :city, :country )
	end
end
