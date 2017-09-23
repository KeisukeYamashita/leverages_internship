Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#login"
  get "/detail", to: "static_pages#detail"
  get "/signup", to:"sessions#new"
  resources :rooms
  resources :users
end


