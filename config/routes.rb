Rails.application.routes.draw do
  get 'fields/index'
  resources :profile, only: [:show]
  devise_for :users
  root 'posts#index'
end
