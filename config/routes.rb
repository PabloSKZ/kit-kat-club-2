Rails.application.routes.draw do
  
  resources :carts, except: [:index, :new, :edit] do 
    resources :join_table_items_carts, only: [:create, :update, :destroy]
  end
  devise_for :users
  root 'home#index'
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
