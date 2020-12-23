class RestaurantpizzasController < ApplicationController

    # def index
    #     @restaurantpizzas = Restaurantpizza.all
    # end

    # def show
    #     @restaurantpizza = Restaurantpizza.all
    # end

    def new
        @restaurantpizza = Restaurantpizza.new
    end

    def create
        @restaurantpizza = Restaurantpizza.create(restaurantpizza_params)
        redirect_to restaurant_path(@restaurantpizza.restaurant)
    end

    def restaurantpizza_params
        params.require(:restaurantpizza).permit(:pizza_id, :restaurant_id, :price)
    end
end