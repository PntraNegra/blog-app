Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles

  root "pages#home"
  get 'pages/home'
  get 'pages/about'

  get 'signup', to: 'users#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
