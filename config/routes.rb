Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'posts#index'
  resources :users, :only =>[:new, :create]
  resources :sessions, :only =>[:new, :create, :destroy]
  resources :posts

end
