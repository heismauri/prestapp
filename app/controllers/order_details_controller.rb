class OrderDetailsController < ApplicationController
  def create
    @order = Order.find(current_order.id)
    @order_details = OrderDetail.create(order_details_params)
    @order.status = "confirmed"
    @order.order_detail = @order_details
    @order.save
    current_user.orders.create(status: "initialized")

    redirect_to orders_path
  end

  private

  def order_details_params
    params.require(:order_detail).permit(:street, :city, :card_number, :card_type)
  end
end
