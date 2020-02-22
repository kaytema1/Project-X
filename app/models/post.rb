class Post < ApplicationRecord
  belongs_to :user
  belongs_to :clothing_line
end
