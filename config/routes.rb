Rails.application.routes.draw do
  devise_for :users
  root to: 'blog#index'
  resources :blog
end