class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @total_users = User.count
    @total_products = Product.count
  end
end
