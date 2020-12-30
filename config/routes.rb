Rails.application.routes.draw do
  get "/users", to: "users#new"
  get "/about", to: "static_pages#about"
  get "/help", to: "static_pages#help"
  root "static_pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
