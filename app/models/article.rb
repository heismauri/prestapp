class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :picture
  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 25 }
  validates :price, presence: true, numericality: { greater_than: 1000, only_integer: true }
  scope :search_results, ->(parameter) { where("lower(name) LIKE ?", "%#{parameter}%") }
end
