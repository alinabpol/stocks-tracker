Rails.application.routes.draw do
  resources :users_stocks
  devise_for :users

  root 'pages#home'
  resources :stocks 
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'

  delete '/users', to: 'users#delete_user', as: :delete_user


end
