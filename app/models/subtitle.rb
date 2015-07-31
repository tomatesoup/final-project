class Subtitle < ActiveRecord::Base
	belongs_to :user
	mount_uploader :file, SubtitleUploader

	def self.search(query)
    where("UPPER(title) LIKE ?", "%#{query}%".upcase)
  end
end
