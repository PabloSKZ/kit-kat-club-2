Rails.application.routes.draw do
  
  resources :carts, except: [:index, :new, :edit]
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  devise_for :users
  root 'home#index'
  resources :items
<<<<<<< HEAD
  resources :charges
=======
  resources :orders
>>>>>>> show-order
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
