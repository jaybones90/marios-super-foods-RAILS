require 'rails_helper'

describe "add a new product" do
  it "adds a new product" do
    visit products_path
    click_link "Enter A New Product"
    fill_in "Product Name", :with => "Apple"
    fill_in "Country of Origin", :with => "USA"
    fill_in "Product Cost", :with => "2.50"
    click_on "Create Product"
    expect(page).to have_content "You successfully created a new product!"
  end
end
