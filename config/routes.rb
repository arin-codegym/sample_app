Rails.application.routes.draw do
  root "static_pages#home"

  get "/about", to: "static_pages#about"
  get "/help", to: "static_pages#help"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users, only: %i(create show)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
