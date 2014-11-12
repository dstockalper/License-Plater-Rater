class Plate < ActiveRecord::Base
	validates :plate_state, presence: true
	validates :plate_number, presence: true
	has_one :user
	has_many :reviews
end
