Rails.application.routes.draw do
  # get 'flats/index'
  # get 'flats/show'
  # get 'flats/new'
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flats, exept: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
