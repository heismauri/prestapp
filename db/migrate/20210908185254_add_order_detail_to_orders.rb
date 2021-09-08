class AddOrderDetailToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :order_detail, foreign_key: true
  end
end
