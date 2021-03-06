Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/superhero" => "superhero#index"
  get "/superhero/:id" => "superhero#show"
  post "/superhero" => "superhero#create"
  patch "/superhero/:id" => "superhero#update"
  delete "/superhero/:id" => "superhero#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
