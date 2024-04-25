Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  # resources :tweets
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  # resources :tweets, only: [:index,:new,:create,:destroy,:edit,:update,:show]
end