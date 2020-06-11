Rails.application.routes.draw do
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
  post 'access/new', to: "access#create"
  
  get 'authenticate', to: "access#create"
  delete '/logout', to: "access#destroy"


  # add route point to “access#create” and “access#destroy” REMAINING
  
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  resources :products
  get '/', to: "shopper#index"
  root "shopper#index", as: 'shopper' #shopper_path
  get 'shopper', to: "shopper#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

