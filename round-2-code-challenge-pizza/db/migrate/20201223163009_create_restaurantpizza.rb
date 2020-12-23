class CreateRestaurantpizzas < ActiveRecord::Migration[5.1]
    def change
      create_table :restaurantpizzas do |t|
        t.integer :restaurant_id
        t.integer :pizza_id
        t.integer :price
  
      end
    end
  end