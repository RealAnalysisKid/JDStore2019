class CartsController < ApplicationController

  def checkout
    @cart = current_cart
    @cart_items = current_cart.cart_items
    @  
  end

  def clean
    current_cart.clean!
    redirect_to :back, alert: "已清空购物车"
  end
end
