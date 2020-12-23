class CreateResturantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :resturant_pizzas do |t|
      t.integer :pizza_id
      t.integer :resturant_id
      t.integer :price

      t.timestamps
    end
  end
end
