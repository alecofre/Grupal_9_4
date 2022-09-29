Rails.application.routes.draw do
  resources :pedidos
  resources :tags
  resources :articulos
  devise_for :users
  resources :marcas
  # get "/details/new/articulo/:id", to: "details#new", as: "new_detail"
  root "articulos#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
