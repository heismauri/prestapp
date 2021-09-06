class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.save

    redirect_to order_path(@order_item.order)
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    redirect_to order_path(@order_item.order)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:article_id, :order_id)
  end
end
