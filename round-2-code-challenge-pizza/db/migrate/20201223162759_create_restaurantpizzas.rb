class CreateRestaurantpizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurantpizzas do |t|
      t.integer :price
      t.integer :pizza_id
      t.integer :restaurant_id
    end
  end
end
