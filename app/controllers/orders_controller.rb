class OrdersController < ApplicationController
  def create
    subtotal = 0
    tax = 0
    total = 0
    # current_user.carted_products.each do |carted_product|
    #   if carted_product.status == "carted"

    #   end
    # end

    my_carted_products = current_user.carted_products.where(status: "carted")

    # products = current_user.products
    # carted_products = []
    # products.each do |product|
    #   if current_user.carted_products.status == "carted"
    #     carted_products << product
    #   end
    # end
    my_carted_products.each do |carted_product|
      subtotal = subtotal + carted_product.product.price 
      tax = tax + carted_product.product.tax
      total = total + carted_product.product.total
    end
    
    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
      )
    order.save

    my_carted_products.each do |carted_product|
      carted_product.status = "purchased"
      carted_product.order_id = order.id
      carted_product.save
    end

    redirect_to '/orders'
  end
  def show
    @order = Order.last
    render 'show.html.erb'
  end
end

