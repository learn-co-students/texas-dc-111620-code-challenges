class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
end
