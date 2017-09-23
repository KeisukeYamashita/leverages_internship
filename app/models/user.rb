class User < ActiveRecord::Base
	belongs_to :room
	enum position: {designer:0,engineer:10}

	scope :designer, -> {
		where(position: :designer)
	}

	scope :engineer, -> {
		where(position: :engineer)
	}
end
