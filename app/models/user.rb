class User < ActiveRecord::Base
	has_secure_password
	belongs_to :plate
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
end
