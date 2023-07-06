Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  resources :stocks 
  get 'my_portfolio', to: 'users#my_portfolio'

  delete '/users', to: 'users#delete_user', as: :delete_user


end
