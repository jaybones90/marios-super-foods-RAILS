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
    if @product.save.valid?
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


private
  def product_params
    params.require(:product).permit(:name, :country, :cost)
  end

end
