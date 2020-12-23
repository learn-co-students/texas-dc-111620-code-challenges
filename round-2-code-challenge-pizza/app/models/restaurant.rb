class Restaurant < ApplicationRecord
    has_many :restaurantpizzas
    has_many :pizzas, through: :restaurantpizzas
end
