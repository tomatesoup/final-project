class Subtitle < ActiveRecord::Base
	belongs_to :user
	mount_uploader :file, SubtitleUploader

	def self.search_by_title(title)
    where("UPPER(title) LIKE ?", "%#{title.upcase}%")
  end
end
