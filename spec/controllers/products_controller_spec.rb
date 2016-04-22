require 'rails_helper'

describe ProductsController do
  describe "GET #index" do

        it "assigns @products and renders the index template" do

          product = Product.create(
              name: "Macbook",
              description: "Handige laptop",
              price:100
                         )
          get :index

      expect(assigns(:products)).to eq([product])
      expect(response).to render_template("index")

    end
  end


  describe "GET #show" do
      it "assigns @products and renders the show template" do

        product = Product.create(
            name: "Macbook",
            description: "Handige laptop",
            price:100
                       )

        get :show, id: product.id

        expect(assigns(:product)).to eq(product)
        expect(response).to render_template("show")
      end
    end

  describe "GET #new" do
    it "assigns a new product as @product and renders the new template" do

      get :new

      expect(assigns(:product)).to be_a_new(Product)
      expect(response).to render_template("new")
    end
  end

  describe "GET #edit" do
      let(:product) { Product.create(
            name: "Macbook",
            description: "Handige laptop",
            price:100
                       ) }
          before do
            get :edit, id: product.id
          end

        it "assigns the requested product as @product" do
            expect(assigns(:product)).to eq(product)
          end

        it "renders the edit template" do
            expect(response).to render_template("edit")
      end

    # describe "POST #create" do
    #   context "with valid params" do
    #       let(:valid_params) {
    #         {recipe: {name: "Macbook", description: "Handige laptop"}}
    #       }
    #
    #       it "create a new Product" do
    #
    #   end
    # end




  end
