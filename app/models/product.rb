class Product < ApplicationRecord
  validates :name, :country, :cost, :presence => true

  has_many :reviews

end
