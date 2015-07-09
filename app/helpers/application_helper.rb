module ApplicationHelper
	def display_nav?
		!((params[:controller] == "profiles" && params[:action] == "create") ||
			params[:controller] == "sessions" || 
			  params[:controller] == "devise/sessions" ||
			  params[:controller] == "devise/registrations" ||
			  params[:controller] == "registrations")
	end
end
