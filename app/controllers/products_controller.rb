class ProductsController < ApplicationController
  before_action :set_user, only: %i[new create]
  before_action :set_user_and_produt, only: %i[show delete_product update edit]

  def new
    @product = @user.products.new()
  end

  def create
    @product = @user.products.new(product_params)
    redirect_to user_products_path(user_id: @user.id), notice: 'Product was successfully created.' if @product.save
  end

  def index
    @user = current_user
    @products = @user.products
  end

  def edit
  end

  def update
    redirect_to user_product_path(user_id: @user.id, id: @product.id), notice: 'Product was successfully updated.' if @product.update(product_params)
  end

  def delete_product
    redirect_to user_products_path(user_id: @user.id), notice: 'Product was successfully deleted.' if @product.destroy
   end

  def show
  end


  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :quantity, images: [])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_and_produt
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
  end
end
