class CreateRestaurantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :pizza_id
      t.integer :restaurant_id
      t.integer :price
    end
  end
end
