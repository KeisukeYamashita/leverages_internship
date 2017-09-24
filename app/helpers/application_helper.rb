module ApplicationHelper
	def designer(room)
		if room.users.designer.empty?
			button_to "JOIN" , room_path(room.id), method: :get, class: "btn btn-default btn-join"
		else
			"full"
		end
	end

	def engineer(room)
		if room.users.engineer.empty?
			button_to "JOIN" , room_path(room.id) ,method: :get, class: "btn btn-default btn-join"
		else
			room.users.engineer[1].display_name
		end
	end
end

