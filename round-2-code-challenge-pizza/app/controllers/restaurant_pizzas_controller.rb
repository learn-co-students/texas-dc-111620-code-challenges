class RestaurantPizzasController < ApplicationController

    def new 
        @restaurant_pizza = RestaurantPizza.new
    end

    def create
        # @restaurant_pizza = RestaurantPizza.create(rp_params)
        @restaurant_pizza = RestaurantPizza.new(rp_params)
        if @restaurant_pizza.valid?
           @restaurant_pizza.save
           redirect_to restaurant_path(@restaurant_pizza.restaurant)
        else 
            flash[:errors] = @restaurant_pizza.errors.full_messages
            redirect_to new_restaurant_pizza_path 
        end
    end

    def rp_params
        params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
    end

end
