class CartsController < ApplicationController
  def clean
    current_cart.clean!
    redirect_to :back, alert: "已清空购物车"
  end
end
