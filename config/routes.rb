Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'

  get "/products", to: "products#index", as: "products"

  post "/add", to: "products#add", as: "add_product"


end
