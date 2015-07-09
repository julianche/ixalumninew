class Profile < ActiveRecord::Base
	validates_presence_of :image_url, :occupation, :degree, :city, :ixyear, :session, :country, :university
	belongs_to :user

	def self.search(query)
		where("firstname LIKE :query OR lastname LIKE :query OR occupation LIKE :query OR city LIKE :query OR university LIKE :query", query: "%#{query}%")
	end
end
