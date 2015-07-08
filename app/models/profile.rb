class Profile < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
					:default_url => "/images/:style/missing.png",
					:path => "profiles/images/:id/:style/:basename.:extension",
					:url => "images/localhost/profiles/images/:id/:style/:basename.:extension"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates_presence_of :occupation, :degree, :city, :ixyear, :session, :country, :university
	belongs_to :user
end
