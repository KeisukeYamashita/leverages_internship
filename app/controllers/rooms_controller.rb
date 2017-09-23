class RoomsController < ApplicationController
	def index

	end
  
	def show
		@users = User.all
	end 

	def new

	end


end
