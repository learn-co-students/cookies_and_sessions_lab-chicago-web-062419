class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    
    # "helper_method" allows for all controllers and views to access the specified method, "def cart".
    helper_method :cart

    def cart 
        # this method should return an array of the items stored in the cart (utilizing the Rails session method).
        session[:cart] ||=[]
    end

end
