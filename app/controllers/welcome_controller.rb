class WelcomeController < ApplicationController
  def index
    flash[:notice] = "二刷购物网加油!"
  end
end
