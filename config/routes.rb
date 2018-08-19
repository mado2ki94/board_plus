Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  root 'static_pages#index'
  devise_for :users
  resources :mythreads
end
