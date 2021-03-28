Rails.application.routes.draw do

  get 'orders/show'
  get 'carts/show'
  resources :discounts
  resources :products
  resources :shops, only:[:index,:show]
  root to:'shops#index'
  resources :order_items
  resource :carts, only:[:show]
  resource :orders, only:[:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
