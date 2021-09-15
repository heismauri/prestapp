class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = policy_scope(Order)
    authorize @orders
  end

  def edit
    @order = Order.find(params[:id])
    authorize @order
    step = params[:step] || nil

    case step
    when "shipping"
      @order_detail = OrderDetail.new
      @tpl_name = "orders/partials/shipping_form"
    else
      @tpl_name = "orders/partials/summary_order"
    end
  end
end
