Rails.application.routes.draw do
  devise_for :users
  resources :friends

  get 'home/about', as: :about
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'

  get '*path' => redirect('/')
end
