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
    unless session[:cart]
      session[:cart] = []
    end

    @items = Meal.find(session[:cart])
    @cart_items = []
    @items.each do |meal|
      if meal.restaurant == @restaurant
        @cart_items.push meal
      end
    end
  end
end
