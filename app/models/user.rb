class User < ActiveRecord::Base
	belongs_to :room
	has_secure_password
	enum position: {designer:0,engineer:10}

	scope :designer, -> {
		where(position: :designer)
	}

	scope :engineer, -> {
		where(position: :engineer)
	}
end
