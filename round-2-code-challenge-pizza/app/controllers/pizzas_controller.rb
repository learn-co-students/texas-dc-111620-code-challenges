class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizzas = Pizza.find(params[:id]) 
  end

  def pizza_params
    params.require(:pizza).permit(:name,:ingredients)
  end
end
