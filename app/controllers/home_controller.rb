class HomeController < ApplicationController
  def index
    @food_places = FoodPlace.all
  end
end
