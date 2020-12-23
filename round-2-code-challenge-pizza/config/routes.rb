Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :restaurants
  resources :pizzas
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
end
