module ProductsHelper
  def get_categories_name product
    Category.where(product_id: product.id)
  end
end
