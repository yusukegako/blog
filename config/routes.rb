Rails.application.routes.draw do
  root to: 'blog#index'
  resources :blog
end