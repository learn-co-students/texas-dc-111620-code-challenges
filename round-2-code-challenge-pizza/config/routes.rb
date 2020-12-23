Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
resources :restaurants
resources :pizzas
resources :restaurant_pizzas
end
