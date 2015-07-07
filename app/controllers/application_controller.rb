class ApplicationController < ActionController::Base
<<<<<<< HEAD
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :authenticate_user!
=======
	before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
>>>>>>> 3af737174959fb9d086771b932d2911e1275a1d9
  
end
