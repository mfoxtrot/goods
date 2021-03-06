class ProductsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :image)
    end
end
