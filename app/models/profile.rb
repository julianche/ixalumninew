class Profile < ActiveRecord::Base
	validates_presence_of :occupation, :degree, :city, :ixyear, :session, :country, :university
	belongs_to :user
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"},
						:default_url => "/images/:style/missing.png"
						# :url  => "/assets/:id/:style/:basename.:extension",
 					# 	:path => ":rails_root/public/assets/:id/:style/:basename.:extension"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	def self.search(query)
		where("occupation LIKE ? or city LIKE ?", "%#{query}%", "%#{query}%")
	end
end
