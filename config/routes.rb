Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  resources :mythreads
  resources :comments
end
