class Category < ApplicationRecord
  has_many :articles
  has_one_attached :picture

  default_scope { order('name ASC') }
  scope :ramdom_category, -> { order('RANDOM()').limit(2) }
end
