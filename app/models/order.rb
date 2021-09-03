class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  enum status: %i[initialized pending confirmed]
  scope :initialized_order, -> { where(status: "initialized").take }
end
