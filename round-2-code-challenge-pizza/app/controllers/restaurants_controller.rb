class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show 
    @Restaurant = Restaurant.find(params[:id])
  end
end
