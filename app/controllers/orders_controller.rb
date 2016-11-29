class OrdersController < ApplicationController
  def create
    order = Order.new(
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id]
      )
    order.save
    order.subtotal = order.product.price * order.quantity
    order.tax = order.product.tax * order.quantity
    order.total = order.product.total * order.quantity
    @price = order.subtotal
    @tax = order.tax
    @total = order.total
    if order.save
      @order = order
      render 'show.html.erb'
    else
      flash[:warning] = 'Invalid order information!'
      redirect_to '/products'
    end
  end
end
