class SessionsController < ApplicationController
  def new
	  @user = User.new
  end

  def create
	  @user = User.new(user_params)
	  if @user.save
		  render :template = "rooms/index"
	  else
		  render 'new'
	  end
  end

  def show
  end

  private
  
  def user_params
	   params.require(:user).permit(:display_name,:password,:password_confirmation)
  end
end
