class Profile < ActiveRecord::Base
	validates_presence_of :occupation, :first_name, :last_name, 
    :degree, :city, :ixyear, :session, :country, :university

	belongs_to :user
end
