require 'rails_helper'

describe "add a new review" do
  it "add a new review to a product" do
    product = Product.create(:name => "Old Product", :country => "USA", :cost => 44.40)
    visit "products/#{product.id}"
    click_link "Add Review"
    fill_in "Author", :with => "Jimmy"
    fill_in "Review", :with => "This review needs to be at least 50 characters in length or it won't validate so I hope this is 50 characters"
    fill_in "Rating", :with => 5
    click_on "Create Review"
    expect(page).to have_content "Review Added Successfully"
  end
end
