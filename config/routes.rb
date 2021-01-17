Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  # These two resources are same
  # REST-ful routes - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions

  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
end
