Rails.application.routes.draw do
  resources :resturant_pizzas
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
end
