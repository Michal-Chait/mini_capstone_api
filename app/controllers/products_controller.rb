class ProductsController < ApplicationController
  def all_products
    product
    render json: product
  end
end
