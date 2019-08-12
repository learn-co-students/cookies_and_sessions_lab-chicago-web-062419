Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :products, only:[:index, :add]
    
    # This customized root to be products/index.
    root 'products#index'

    # This creates the post behavior for the form on the index page.
    # ? I wonder if it can be post '' instead?
    post '/' => 'products#add'
end
