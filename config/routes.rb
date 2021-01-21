Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:show, :create, :index, :destroy]
  resources :links, only: [:show, :create, :destroy]
  resources :tags, only: [:create, :destroy]
end
