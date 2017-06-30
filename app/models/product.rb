class Product < ApplicationRecord
  validates :name, :country, :cost, :presence => true
  before_save(:normalize_text)

  has_many :reviews

  scope :last_three, -> {order(:created_at).limit(3)}

  scope :most_reviews, -> {(
    select("products.name, products.id, count(reviews.id) as product_reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("product_reviews_count DESC")
    .limit(1)
    )}

  scope :search, -> (country_param) { where("country like ?", "%#{country_param}%")}

private
  def normalize_text
    self.name = name.downcase.titleize
    self.country = country.downcase.capitalize
  end

end
