class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :picture
end
