class ProductsController < ApplicationController
  def index
    only_show_discount = params[:discount]
    if only_show_discount == "true"
      @products = Product.where("price < ?", 50)
    else
      sort_attribute = params[:sort_attribute] || "name"
      sort_order = params[:sort_order] || "asc"
      @products = Product.order(sort_attribute => sort_order) 
    end
  render 'index.html.erb'
  end

  def show
    if params[:id] == "random"
      product = Product.all
      @product = product.sample
    else
      product_id = params[:id]
      @product = Product.find_by(id: product_id)
    end
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image: params["image"],
      description: params["directions"]
    )
    product.save
    flash[:success] = "Product Successfully Added!"
    redirect_to '/products'
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'edit.html.erb'
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.name = params["name"]
    product.price = params["price"]
    product.image = params["image"]
    product.description =  params["description"]
    product.save
    flash[:success] = "Product Successfully Updated!"
    redirect_to '/products'
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    redirect_to '/products'
    flash[:success] = "Product Successfully Deleted!"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", '%' + search_term + '%')  
    render 'index.html.erb'
  end

end
