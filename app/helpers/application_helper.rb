module ApplicationHelper
	def disable_nav?
		(params[:controller] != "profiles" && params[:action] != "new") &&
			params[:controller] != "sessions" && 
			params[:controller] != "devise/sessions" && 
			params[:controller] != "devise/registrations" && 
			params[:controller] != "registrations"
	end
end
