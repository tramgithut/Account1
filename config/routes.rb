Rails.application.routes.draw do
  root 'pages#home'
  get '/info' => 'pages#info', as: :info

  devise_for :users

  # for normal user
  resources :articles, only: [] do
    get '/' => 'articles#index', on: :collection, as: :list
    get '/:id' => 'articles#show', on: :collection, as: :detail
  end

  # for admin user
  namespace :admin do
    resources :articles
  end
end
