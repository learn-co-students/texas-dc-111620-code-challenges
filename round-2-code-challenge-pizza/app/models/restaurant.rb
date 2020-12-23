class Restaurant < ApplicationRecord
  has_many :restaurant_pizza
  has_many :pizza, through: :restaurant_pizza
end
