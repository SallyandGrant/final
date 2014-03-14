class ProductsController < ApplicationController

  def index
    @product_list = Item.all.order('name asc')
  end

  def show
    @product = Item.find_by(:id => params[:product_id])
    @reviews = Review.where(:item_id => @product.id)
    @users = User.find_by(:id => params[:user_id])
  end

  def destroy
    product = Item.find_by(:id => params[:product_id])
    product.destroy
    redirect_to "/products", notice: "That item is toast!"
  end

  def new
  end

  def create
    product = Item.new
    product.name = params["name"]
    product.price = params["price"]
    product.description = params["description"]
    product.image_url = params["image_url"]
    product.save
    redirect_to "/products"
  end

  def edit
    @product = Item.find_by(:id => params[:product_id])
  end

  def update
    product = Item.find_by(:id => params[:product_id])
    product.name = params["name"]
    product.price = params["price"]
    product.description = params["description"]
    product.image_url = params["image_url"]
    product.save
    redirect_to "/products"
  end

end
