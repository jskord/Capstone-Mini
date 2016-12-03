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
    if @carted_products.length > 0
      render 'checkout.html.erb'
    else
      flash[:warning] = "There is nothing in your cart yet ..."
      redirect_to '/products'
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    redirect_to '/checkout'
  end
end
