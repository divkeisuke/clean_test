Rails.application.routes.draw do

  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  post "signup", to: "users#create"
  resources :users, only: [:show]
 
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  resources :places, only: [:index, :show, :create, :edit, :destroy, :update]
  resources :things, only: [:index, :show, :new, :edit, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
