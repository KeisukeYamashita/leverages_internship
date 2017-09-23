class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end
  
	def show
		@users = User.all
	end 

	def new

	end


end
