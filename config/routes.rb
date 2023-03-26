Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/items" => "items#index"
  post "/items" => "items#create"
  get "/items/:id" => "items#show"
  patch "/items/:id" => "items#update"
  delete "items/:id" => "items#destroy"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  get "/movies" => "movies#index"
end
