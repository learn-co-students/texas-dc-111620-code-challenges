Rails.application.routes.draw do
  resources :pizzas
  resources :restaurants
  resources :restaurantpizzas
end
