
Product.destroy_all

100.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                  country: Faker::Address.country,
                  cost: Faker::Commerce.price)

end

p "Created #{Product.count} products"

Review.destroy_all

400.times do |index|
  Review.create!(
               author: Faker::Lorem.sentence(5, false, 0).chop,
               content: Faker::Lorem.sentence(50, false, 0).chop,
               rating: Faker::Number.between(0, 5),
               product_id: Faker::Number.between(1, 100)
            )
end

p "Created #{Review.count} reviews"
