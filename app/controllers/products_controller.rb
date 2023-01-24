class ProductsController < ApplicationController
    before_action :set_products, only: [:index]

    def index
      @products = Product.all
    end

    def edit
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.create(product_params)  
        if @product.save
          flash[:success] = "Produit sauvegardé avec succès"
          redirect_to products_path
        else
          flash[:alert] = @product.errors.full_messages.to_sentence
          redirect_to new_product_path
        end
    end

    private
    def product_params
      params.require(:product).permit(:name, :color, :description, :image, :price)
    end

    def set_products
      @products = Product.all
    end
end