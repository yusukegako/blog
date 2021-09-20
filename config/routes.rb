Rails.application.routes.draw do
  root to: 'blog#index'
  resources :blog, only: [:index, :new, :create, :destroy, :edit, :update]
end