class Profile < ActiveRecord::Base
	validates_presence_of :image_url, :occupation, :degree, :city, :ixyear, :session, :country, :university
	belongs_to :user

	def self.search(query)
		where("occupation LIKE ? or city LIKE ?", "%#{query}%", "%#{query}%")
	end
end
