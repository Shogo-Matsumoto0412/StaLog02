Rails.application.routes.draw do
  resources :profile, only: [:show]
  devise_for :users
  root 'posts#index'
end
