class SubtitlesController < ApplicationController

	def all
		if params[:search]
			@subtitles = Subtitle.search(params[:search])  
		else
			@subtitles = Subtitle.all 
		end
	end

		def index
			@user = User.find params[:user_id]
			@subtitles = @user.subtitles.all
		end

		def show
			@subtitle = Subtitle.find(params[:id])
		end

		def new
			@subtitle = Subtitle.new
		end

		def create
			@subtitle = Subtitle.new(subtitle_params)
			if @subtitle.valid?
				@subtitle.save
				redirect_to root_path
				return
			end
			render :new 
		end

		def search
			@subtitles = Subtitle.search(params[:search]) 
			render status: 200, json: subtitles 
		end

		private

		def subtitle_params
			params.require(:subtitle).permit(:title, :submission_date, :description, :file)
		end

	end
