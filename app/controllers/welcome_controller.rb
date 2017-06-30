class WelcomeController < ApplicationController

  def index
    @products = Product.last_three
    @most_reviewed_product = Product.most_reviews
  end

end
