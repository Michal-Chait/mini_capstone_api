class ImagesController < ApplicationController
def index
  @images = Image.all

    render :index
  end

  def show
    @image = Image.find(params[:id])

    render :show
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end
  private

def image_params
  params.require(:image).permit(:url, :product_id)
end

#   def update
#     @product = Product.find(params[:id])
#     @product.update(
#       name: params[:name] || @product.name,
#       price: params[:price] || @product.price,
#       image_url: params[:image_url] || @product.image_url,
#       description: params[:description] || @product.description
#     )
#     if @product.valid?
#       render :show
#     else
#       render json: { errors: @product.errors.full_messages }
#     end
  # end
end
