class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end
end
