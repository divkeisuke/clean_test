Rails.application.routes.draw do
  
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  get "login", to: "users#create"
  get "users/:id", to: "users#show"
  
  resources :places, only: [:index, :new, :edit, :destroy]
  resources :things, only: [:index, :show, :new, :edit, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
