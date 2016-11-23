class Article < ApplicationRecord

	has_attached_file :image, styles: { large: "600x600>", thumb: "300x300>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	def self.search(search)
		where('category LIKE ? OR title LIKE ? OR description LIKE ? OR author LIKE ? OR body LIKE ?', "%#{search}%","%#{search}%", "%#{search}%","%#{search}%", "%#{search}%")
	end 
 
end
