class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review Added Successfully"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end

end
