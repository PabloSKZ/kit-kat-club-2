Rails.application.routes.draw do
  
  resources :carts, except: [:index, :new, :edit]
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  devise_for :users
<<<<<<< HEAD
  root 'items#index'
  resources :items
=======
  root 'home#index'
  resources :items do
    resources :pictures, only: [:create]
  end
>>>>>>> active_storage
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
