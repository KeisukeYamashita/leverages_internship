module ApplicationHelper
	def designer(room)
		if room.users.designer.empty?
			button_to "join" , room_path(room.id) ,method: :get
		else
			"full"
		end
	end

	def engineer(room)
		if room.users.engineer.empty?
			button_to "join" , room_path(room.id) ,method: :get
		else
			room.users.engineer[1].display_name
		end
	end
end

