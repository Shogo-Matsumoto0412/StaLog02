Rails.application.routes.draw do
  resources :fields, only: [:index, :new, :create, :show, :destroy]
  resources :profile, only: [:show]
  devise_for :users
  root 'posts#index'
end
