Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  
  resources :restaurant_pizzas
  resources :pizzas
  resources :restaurants
end

