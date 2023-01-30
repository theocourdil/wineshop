class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update, :destroy]

    def index
      @products = Product.all
    end

    def edit
    end

    def update
      if @product.update(product_params)
        flash[:success] = "Bout de phrase mis à jour avec succès"
        redirect_to products_path(redirect_html: true)
      else
        flash[:danger] = @product.errors.full_messages.to_sentence
        render_flash
      end
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

    def destroy
      if @product.destroy
        flash[:success] = "Bout de phrase supprimée avec succès"
        redirect_to products_path
      else
        flash[:danger] = @product.errors.full_messages.to_sentence
        render_flash
      end
    end

    private
    def product_params
      params.require(:product).permit(:name, :color, :description, :image, :price)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end