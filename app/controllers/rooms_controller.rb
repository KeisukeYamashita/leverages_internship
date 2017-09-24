class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end
  
	def show
		@q = User.where(room_id: params[:id]).uniq
		@users = @q
	end 

	def new

	end


end
