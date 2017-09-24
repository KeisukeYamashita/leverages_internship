class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end
  
	def show
		@users = User.where(room_id: params[:id])
	end 

	def new

	end

	def create
	end

end
