class Restaurantpizza < ApplicationRecord
    validates :price, presence: true, :inclusion => 1..30
    validates :pizza_id, presence: true, uniqueness: true

    belongs_to :pizza
    belongs_to :restaurant
end