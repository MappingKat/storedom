class OrdersController < ApplicationController

  before_filter :authenticate_user!, only [:index, :show]

  def index
    if current_user.admin?
      @orders = Order.all
    else 
      # redirect_to order_path(current_user)
      @orders = current_user.orders
  end

  def show
    if current_user == User.find_by_id(Order.find(params[:id][:user_id])
    @order = Order.find(params[:id])
  else
    redirect_to order_path(current_user)
  end
end
