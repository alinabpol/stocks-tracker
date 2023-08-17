Rails.application.routes.draw do
  devise_for :users, only: [:create]

  root 'pages#home'
  resources :stocks 
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'

  delete '/users', to: 'users#delete_user', as: :delete_user


end
