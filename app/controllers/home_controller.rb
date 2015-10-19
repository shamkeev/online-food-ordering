class HomeController < ApplicationController
  def index
    @meals = Meal.all
    @restaurants = Restaurant.all
  end

  def show_meals
    @meals = Meal.all
  end

  def show_restaurants
    @restaurants = Restaurant.all
  end
end
