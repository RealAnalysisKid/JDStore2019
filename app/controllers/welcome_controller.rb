class WelcomeController < ApplicationController
  def index
    flash[:notice] = "2019 一刷加油!"
  end
end
