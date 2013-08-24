UserAuthentication::Application.routes.draw do
  root to: 'users#index'
  resources :users, only: [:new, :create, :index]

  get '/login' => "sessions#login"
  post '/login' => "sessions#create"
end
