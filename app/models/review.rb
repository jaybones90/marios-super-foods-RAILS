class Review < ApplicationRecord
  validates :author, :content, :rating, :presence => true

  belongs_to :product

end
