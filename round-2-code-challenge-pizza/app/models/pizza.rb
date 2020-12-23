class Pizza < ApplicationRecord
    has_many :restaurantpizzas
    has_many :restaurant, through: :restaurantpizzas

    def total_count
        count = 0
        self.restaurantpizzas.each do |rp|
            total_count += rp.restaurant.length
        end
        total_count
    end
end
