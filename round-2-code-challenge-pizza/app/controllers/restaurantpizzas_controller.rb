class RestaurantpizzasController < ApplicationController

    def index
        @restaurantpizzas = Restaurantpizza.all
    end

    def show 
        @restaurantpizza = Restaurantpizza.find(params[:id])
    end 

    def new 
        @restaurantpizza = Restaurantpizza.new
    end

    def create
        restaurantpizza = Restaurantpizza.create(restaurantpizza_params)
        redirect_to restaurant_path(restaurantpizza)
    end

    def restaurantpizza_params
        params.require(:restaurantpizza).permit(:price, :pizza_id, :restaurant_id)
    end
  
end
  