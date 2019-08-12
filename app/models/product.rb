class Product < ApplicationRecord

    
    def index
        @products = Product.all
    end

end
