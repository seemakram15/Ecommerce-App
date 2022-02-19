class ProductsController < ApplicationController
  # before_action :set_user_and_produt, only: %i[new create edit update delete_product]

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

  def edit
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @user = User.find(params[:user_id])
    redirect_to user_product_path(user_id: @user.id, id: @product.id), notice: 'Product was successfully updated.' if @product.update(product_params)
  end

  def delete_product
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
    redirect_to user_products_path(user_id: @user.id), notice: 'Product was successfully deleted.' if @product.destroy
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
