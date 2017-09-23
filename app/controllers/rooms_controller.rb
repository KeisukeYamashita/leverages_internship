class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end
  
	def show
		@user = User.all
	end 

	def new

	end


end
