class CartedProductsController < ApplicationController
  def create
    carted_product=CartedProduct.new(
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id],
      status: "carted"
      )
    carted_product.save
    redirect_to '/checkout'

  end
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render 'checkout.html.erb'
  end
end
