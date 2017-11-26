class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]

  def index
    only_show_discount = params[:discount]
    if only_show_discount == "true"
      @products = Product.where("price < ?", 50)
    elsif params[:category_name] != nil
      selected_category = Category.find_by(name: params[:category_name])
      @products = selected_category.products
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
    @product = Product.new
    @image = Image.new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: rand(1..2)
    )
    @image = Image.new(
        url: params["url"],
        )
    if @product.save
      @image = Image.new(
        url: params["url"],
        product_id: @product.id
        )
      @image.save
      flash[:success] = "Product Successfully Added!"
      redirect_to '/products'
    else
      render 'new.html.erb'
    end
    
    
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'edit.html.erb'
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params["name"]
    @product.price = params["price"]
    @product.description =  params["description"]
    
    if @product.save
      first_image = @product.images.first
      first_image.url = params["image"]
      first_image.save
      flash[:success] = "Product Successfully Updated!"
      redirect_to '/products'
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    redirect_to '/products'
    flash[:warning] = "Product Successfully Deleted!"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", '%' + search_term + '%')  
    render 'index.html.erb'
  end
end
