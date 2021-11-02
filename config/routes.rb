Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  root 'sessions#new'
  get '/tops', to: 'tops#index'
  resources :customers

end
