class ResturantPizzasController < ApplicationController
    def new
        @restaurantpizza = RestaurantPizza.new 
    end

    def create
        @restaurantpizza = RestaurantPizza.new(restaurantpizza_params)
        if @restaurantpizza.save
            redirect_to resturant_path(@resturant)
        else 
            render new_restaurantpizza_path 
        end 
    end 

    def restaurantpizza_params
        params.require(:restaurantpizza).permit(:price, :resturant_id. :pizza_id)
    end 
end
