require 'rails_helper'

describe Product do

    describe "validations" do
        it "requires a name" do
          product = Product.new(name:"")
          product.valid?
          expect(product.errors).to have_key(:name)
        end
    end

    describe "validations" do
      it "requires a description" do
          product = Product.new(description: "")
          product.valid?
          expect(recipe.errors).to have_key(:description)
      end
    end

    describe "validations" do
      it "does not require calories" do
          product = Product.new(calories: nil)
          product.valid?
          expect(recipe.errors).not_to have_key(:calories)
      end
    end

    describe "#bargain?" do
      it "is true if it is a bargain" do
        product = Product.new(price:50 )
        expect(product.bargain?).to eq(true)
end
      it "is false when it is not" do
        product = Product.new(price:150)
        expect(product.bargain?).to eq(false)
      end
    end

end
