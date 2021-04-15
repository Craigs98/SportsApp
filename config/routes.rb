Rails.application.routes.draw do
  get 'users/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
    devise_for :users
    get 'home/index'

    root to: "home#index"
    resources :users


end
