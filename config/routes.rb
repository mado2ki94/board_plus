Rails.application.routes.draw do
  get 'mythreads/index'
  get 'mythreads/new'
  get 'mythreads/create'
  get 'mythreads/edit'
  get 'mythreads/update'
  get 'mythreads/destroy'
  get 'mythreads/show'
  devise_for :users
  resources :mythreads
end
