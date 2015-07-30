class SearchController < ApplicationController
	before_action :authenticate_user!

	def search
		@subtitles = Subtitle.search_by_title(params[:term])
	end
end
