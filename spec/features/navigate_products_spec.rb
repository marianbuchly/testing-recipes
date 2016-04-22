require 'rails_helper'

describe "Navigating recipes" do
  it "allows navigation from the detail page to the lis page" do
      product = Product.create(
          name: "Macbook",
          description: "Laptop",
          price:100
      )

      visit product_url(product)
      click_link "Back"

      expect(current_path).to eq(products_path)

  end
end
