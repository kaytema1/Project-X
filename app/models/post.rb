class Post < ApplicationRecord
	belongs_to :user
	belongs_to :clothing_line

	validates :title, presence: true
	validates :user_id, presence: true
	validates :clothing_line_id, presence: true
end
