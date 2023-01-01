Rails.application.routes.draw do
  resources :carts
  resources :consumers
  resources :products 
  resources :categories

  post "/login", to: "sessions#create"
  get "/me", to: "consumers#show"
  post "/signup", to: "consumers#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
