class RegistrationsController < Devise::RegistrationsController

  private

  # def after_sign_in_path_for(user)
  	# if user.profile == true
  	# does user have a profile?
  	# if not, send to new_profile_path
  	# otherwise, go to whatever
  end

  def after_sign_up_path_for(user)
  	new_profile_path
  end

  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password)
  end
