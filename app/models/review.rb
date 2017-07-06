class Review < ApplicationRecord
  validates :author, :presence => true
  validates :content, :presence => true, :length => { :minimum => 50, :maximum => 250}
  validates :rating, :presence => true, numericality: { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5}


  belongs_to :product

end
