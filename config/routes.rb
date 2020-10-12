Rails.application.routes.draw do
  resources :fields, only: [:index, :new, :create, :show, :destroy]
  resources :profile, only: [:show]
  devise_for :users
  resources :posts
  root 'posts#index'

  resources :relationships, only: [:create, :destroy]

  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
