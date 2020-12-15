Rails.application.routes.draw do

  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  get '/signup' => 'users#new'
  post '/signup', to: 'users#create'
  get '/login' => 'sessions#new'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  match '/auth/:provider/callback', to: 'sessions#googlecreate', via: %i[get post], as: 'google'
  get '/auth/google_oauth2' => 'sessions#googlecreate'

  resources :users
end
