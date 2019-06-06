class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path, notice: "Product Updated"
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, alert: "Product Deleted"
  end

  def add_to_cart
    @product = Product.find(params[:id])
    redirect_to :back
    flash[:notice] = "testing cart"
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :quantity, :image)
  end
end
