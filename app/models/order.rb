class Order < ApplicationRecord
  belongs_to :user
  belongs_to :order_detail, optional: true, dependent: :destroy
  has_many :order_items, dependent: :destroy

  enum status: %i[initialized pending confirmed]
  scope :initialized_order, -> { where(status: "initialized").take }

  def total
    order_items.sum { |a| a.article[:price] }
  end

  def formatted_total
    ActiveSupport::NumberHelper.number_to_currency(total, unit: "$", separator: ",", delimiter: ".", precision: 0)
  end
end
