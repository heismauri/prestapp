class OrderItemsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_order, only: %i[create destroy]

  def create
    @order_item = @order.order_items.new(order_item_params)
    article = Article.find(@order_item.article_id)

    user = article.try(:user)

    if user == current_user
      redirect_location = order_path(@order)
      flash[:alert] = "No podes agregar tu propio producto"
    else
      if @order_item.save
        flash[:notice] = "Bingo! Agregaste un articulo en tu carro de compras"
      else
        flash[:alert] = "No pudimos agregar este articulo"
      end

      redirect_location = article_path(article)
    end

    redirect_to redirect_location
  end

  def destroy
    @order_item = @order.order_items.find_by(id: params[:id])
    @order_item.destroy

    redirect_to order_path(@order), notice: "Articulo eliminado"
  end

  private

  def order_item_params
    params.require(:order_item).permit(:article_id, :order_id)
  end

  def set_order
    @order = Order.find(order_item_params[:order_id])
  end
end
