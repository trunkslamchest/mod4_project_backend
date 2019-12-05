Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :users, only: [:index, :show, :create]
  resources :login, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
