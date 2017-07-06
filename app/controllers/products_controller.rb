class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    country = params[:q].capitalize
    @products = Product.search(country)
    render :index
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "You successfully created a new product!"
      redirect_to products_path
    else
      flash[:alert] = "Please try again"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Edit Successful"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Please Try Again"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully deleted"
    redirect_to products_path
  end


private
  def product_params
    params.require(:product).permit(:name, :country, :cost)
  end

end
