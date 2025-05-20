class ProductsController < ApplicationController
  def index
    @products = Product.all

    render :index
  end

  def show
    @product = Product.find(params[:id])

    render :show
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.update(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    render json: product
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product deleted!" }
  end
end