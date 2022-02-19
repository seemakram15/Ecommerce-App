class ProductsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @product = @user.products.new()
  end

  def create
    @user = User.find(params[:user_id])
    @product = @user.products.new(product_params)
    redirect_to user_products_path(user_id: @user.id), notice: 'Product was successfully created.' if @product.save
  end

  def index
    @user = current_user
    @products = @user.products
  end

  def show
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
  end


  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :quantity, images: [])
  end
end
