class CategoriesController < ApplicationController
  before_action :set_product, only: %i[create destroy]

  def create
    @product.categories.create(name: params[:name])
  end

  def destroy
    @product.categories.where(id:params[:id]).first.destroy
  end

  private

  def set_product
    @product = Product.find(params[:prod_id])
  end

end
