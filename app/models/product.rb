class Product < ApplicationRecord
  validates :name, :country, :cost, :presence => true
end
