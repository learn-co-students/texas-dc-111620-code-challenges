class Pizza < ApplicationRecord
    has_many :restaurantpizza
    belongs_to :restaurant, through: :restaurantpizza
end
