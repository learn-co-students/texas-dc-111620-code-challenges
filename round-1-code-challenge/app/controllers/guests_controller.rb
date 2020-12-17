class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
end
