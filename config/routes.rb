Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  # These two resources are same
  # REST-ful routes - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions

  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
  get 'signup', to: 'users#new'

  # intestead of this try to use resources with except 
  # post 'users', to: 'users/#create'
  resources :users, except: [:new]
end
