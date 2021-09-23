class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :picture

  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 25 }
  validates :price, presence: true, numericality: { greater_than: 1000, only_integer: true }
  validates :picture, presence: true

  scope :most_recent, -> { order("created_at DESC").limit(6) }
  scope :search_results, ->(parameter) { where("lower(name) LIKE ?", "%#{parameter}%") }
  scope :available, -> { where(rented: false) }

  def formatted_price
    ActiveSupport::NumberHelper.number_to_currency(price, unit: "$", separator: ",", delimiter: ".", precision: 0)
  end
end
