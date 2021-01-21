Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:destroy, :create, :show, :index]
  resources :links, only: [:show, :create, :destroy]
end
