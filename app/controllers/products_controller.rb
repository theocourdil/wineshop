class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update, :destroy]

    def index
      @products = Product.all
    end

    def edit
    end

    def update
      if @product.update(product_params)
        flash[:success] = "Produit mis à jour avec succès"
        redirect_to products_path(redirect_html: true)
      else
        redirect_to products_path(redirect_html: true)
        flash[:danger] = "Il vous faut remplir tout les champs"
      end
    end

    def new
      @product = Product.new
    end

    def create
      @product = 25100
      @product = Product.create(product_params)  
        if @product.save
          flash[:success] = "Produit sauvegardé avec succès"
          redirect_to products_path
        else
          redirect_to products_path
          flash[:danger] = "Il vous faut remplir tout les champs"
        end

      customer = StripeTool.create_customer(email: params[:stripeEmail], 
                                            stripe_token: params[:stripeToken])

      charge = StripeTool.create_charge(customer_id: customer.id, 
                                        amount: @amount)
    end

    def destroy
      if @product.destroy
        flash[:success] = "Produit supprimée avec succès"
        redirect_to products_path
      else
        flash[:danger] = @product.errors.full_messages.to_sentence
        redirect_to products_path
      end
    end

    private
    def product_params
      params.require(:product).permit(:name, :color, :description, :year, :image, :price)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end