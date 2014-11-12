class User < ActiveRecord::Base
	has_secure_password
	belongs_to :plate
	# reviews below refer to reviews made by user; not of user
	has_many :reviews
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
end
