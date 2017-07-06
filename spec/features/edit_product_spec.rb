require 'rails_helper'

describe "edit product" do
  it "edit a product" do
    product = Product.create(:name => "Old Product", :country => "USA", :cost => 44.40)
    visit "products/#{product.id}"
    click_link "Edit"
    fill_in "Product Name", :with => "New Product Name"
    click_on "Update Product"
    expect(page).to have_content "Edit Successful"
  end
end
