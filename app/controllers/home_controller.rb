class HomeController < ApplicationController
  skip_before_action :authenticate
  
  def index
    @food_places = FoodPlace.all
  end
end
