class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @total = current_order.order_items.sum { |a| a.article[:price] }
  end
end
