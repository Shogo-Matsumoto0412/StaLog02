Rails.application.routes.draw do
  resources :fields, only: [:index, :new, :create, :show, :destroy]
  resources :profile, only: [:show]
  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show]
  devise_for :users
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  root 'posts#index'

  resources :relationships, only: [:create, :destroy]

  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
