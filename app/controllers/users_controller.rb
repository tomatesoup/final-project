class UsersController < ApplicationController
before_action :authenticate_user!

	def index
	end

	def new
		@user = User.new
	end

	def show
	end

	def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to '/'
      return
    end
    render :new
  end

  def destroy
		@destroyed_user = User.find_by(id: params[:id]).destroy
	end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end 
end
