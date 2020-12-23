Rails.application.routes.draw do
  resources :restaurants
  resources :pizzas
  resources :restaurantpizzas
end