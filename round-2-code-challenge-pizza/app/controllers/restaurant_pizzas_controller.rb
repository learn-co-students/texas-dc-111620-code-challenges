class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizza = RestaurantPizza.new 
    end 

    def create 
        @restaurant_pizza = RestaurantPizza.create(
            restaurant: params[:restaurant_pizza][:restaurant_id],
            pizza: params[:restaurant_pizza][:pizza_id],
            price:params[:restaurant_pizza][:price],
        )
        redirect_to restaurant_pizza_path(@restaurant_pizza)
    end 

  
end 