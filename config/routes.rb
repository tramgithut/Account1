Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get '/info' => 'pages#info', as: :info
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
