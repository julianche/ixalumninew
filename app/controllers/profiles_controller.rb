class ProfilesController < ApplicationController
	def new 
		@profile = current_user.profile.new
	end

	def create
		@user = User.find(params[:user_id])
	    @profile = @user.profile.build(params.require(:profile).permit(:occupation, :degree, :ixyear, :session, :university, :email, :city, :country ))

	    if @profile.save
	    	redirect_to home_path
	    else
	    	render "new"
	    end
	end
end
