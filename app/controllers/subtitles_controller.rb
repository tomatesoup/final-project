class SubtitlesController < ApplicationController

	def all
		@subtitles = Subtitle.all
	end

	def index
		@user = User.find params[:user_id]
		@subtitles = @user.subtitles.all
	end

	def show
		@subtitle = Subtitle.find(params[:id])
	end

	def search
		@subtitles = Subtitle.where(title: params[:title]) || []
		render 'index'
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

	private

	def subtitle_params
    params.require(:subtitle).permit(:title, :submission_date, :description)
  end

end
