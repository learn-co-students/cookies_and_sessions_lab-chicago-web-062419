class ProductsController < ApplicationController

    #this is now the homepage via custom route.

    def index
        # These instances do not work.
        # @products = Product.all
        # @product = Product.create
        
        # Because there's the helper method of "cart" in application_controller, sessions[:cart] is accessible here.     
    end

    def add
        cart << params[:product]
        # "cart" refers to the helper method 'def cart'.
        # params[:product is from the form on the index page.]
        render :index
        # re-renders the index page to reflect added item. 
    end
end
