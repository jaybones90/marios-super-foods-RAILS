class Review < ApplicationRecord
  validates :author, :content, :rating, :presence => true
end
