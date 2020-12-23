class RestaurantpizzasController < ApplicationController

    def show
        @restaurantpizza = Restaurantpizza.find(params[:id])
    end

    def new 
        @restaurantpizza = Restaurantpizza.new
    end

    def create
        @restaurantpizza = Restaurantpizza.new(restaurantpizza_params)
        if @restaurantpizza.save
            redirect_to restaurant_path(@restaurantpizza.restaurant)
        else
            render new_restaurantpizza_path
        end
    end

    def restaurantpizza_params
        params.require(:restaurantpizza).permit(:price, :pizza_id, :restaurant_id)
    end
end