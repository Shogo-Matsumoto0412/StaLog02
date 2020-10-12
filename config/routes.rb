Rails.application.routes.draw do
  get 'profile/show'
  devise_for :users
  root 'posts#index'
end
