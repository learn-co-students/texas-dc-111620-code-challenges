class RestaurantPizzasController < ApplicationController

  def index
    @restaurant_pizzas = RestaurantPizza.all
  end

  def show
    @restaurant_pizza = RestaurantPizza.find(params[:id])
  end

  def new
    @restaurant_pizza = RestaurantPizza.new
  end

  def create 
    @restaurant_pizza = RestaurantPizza.create(rest_pizza_params)
    redirect_to restaurant_path(@restaurant_pizza.restaurant_id)
  end

  def rest_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
  end


end
