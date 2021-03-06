Rails.application.routes.draw do
  get 'session/new'

  get 'session/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#login"
  get "/portfolio", to: "static_pages#portfolio"
  get "/promotion", to:"static_pages#promotion"
  get "/chat", to:"static_pages#chat"
  get "/new", to:"rooms#new"
  get "/new/:id", to: "rooms#new"
  resources :rooms
  get "/signup", to:"sessions#new"
  post "/signup", to:"sessions#create"
end

