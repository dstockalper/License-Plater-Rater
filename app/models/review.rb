class Review < ActiveRecord::Base
	belongs_to :plate
	# user below refers to reviews made BY user, not OF user
	belongs_to :user
end
