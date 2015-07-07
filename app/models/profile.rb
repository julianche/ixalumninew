class Profile < ActiveRecord::Base
	validates_presence_of :occupation, :degree, :city, :ixyear, :session, :country, :university
	belongs_to :user
end
