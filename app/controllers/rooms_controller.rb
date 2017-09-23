class RoomsController < ApplicationController

	
	def index

	end
  
	def show
		# @users = User.all
		@users = User.where(room_id: params[:id])
		
	end 

	def new

	end


end
