class SubtitlesController < ApplicationController

	def index
		@subtitles = Subtitle.all

		respond_to do |format|
			format.html { render 'index' }
			format.json { render json: @subtitles }
		end
	end

	def show
		@subtitle = Subtitle.find(params[:id])

		respond_to do |format|
			format.json do
				file = File.new @subtitle.file.current_path
				subtitle_file = SRT::File.parse(file)
				subtitle = subtitle_file.lines.map do |line|
					{
						start_time: line.start_time,
						end_time: line.end_time,
						text: line.text
					}
				end
				render json: subtitle
			end
			format.html { render 'show' }
		end
	end

	def new
		@subtitle = Subtitle.new
	end

	def create
		@subtitle = Subtitle.new(subtitle_params)
		@subtitle.user = current_user
		
		if @subtitle.valid?
			@subtitle.save

			redirect_to subtitles_path
		else
			render :new 
		end
	end

	def search
		@subtitles = Subtitle.search(params[:search]) 

		respond_to do |format|
			format.html { render 'index'}
			format.json { render json: @subtitles }
		end
	end

	private

	def subtitle_params
		params.require(:subtitle).permit(:title, :submission_date, :description, :file)
	end

end
