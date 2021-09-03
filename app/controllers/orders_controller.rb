class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @order = nil
  end
end
