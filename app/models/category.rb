class Category < ApplicationRecord
  has_many :articles
  has_one_attached :picture
end
