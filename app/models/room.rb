class Room < ActiveRecord::Base
	has_many :users
	has_many :users
	enum question: { chat: 0, money: 10 }
end
