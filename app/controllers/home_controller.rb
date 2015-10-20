class HomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show_meal
    @meal = Meal.find(params[:id])
  end

  def show_restaurant
    @restaurant = Restaurant.find(params[:id])
    @meals = Meal.where(restaurant_id: @restaurant.id)
  end
end
