class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find(params[:id])

    render :show
  end

  def create
    @supplier = Supplier.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )

    if @supplier.valid?
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }
    end
  end

  # def update
  #   @supplier = Supplier.find(params[:id])
  #   @supplier.update(
  #     name: params[:name] || @supplier.name,
  #     price: params[:price] || @supplier.price,
  #     image_url: params[:image_url] || @supplier.image_url,
  #     description: params[:description] || @supplier.description
  #   )
  #   if @supplier.valid?
  #     render :show
  #   else
  #     render json: { errors: @supplier.errors.full_messages }
  #   end
  # end

end
