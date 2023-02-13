Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles

  root "pages#home"
  get 'pages/home'
  get 'pages/about'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
