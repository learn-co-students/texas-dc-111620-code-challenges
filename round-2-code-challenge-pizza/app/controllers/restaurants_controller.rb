class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id]) 
  end

  def restaurant_params
    params.require(:restaurant).permit(:name,:address,:pizza)
  end
end
