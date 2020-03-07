class User < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email_address, presence: true, uniqueness: true
end
