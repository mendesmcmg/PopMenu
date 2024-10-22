class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  def restaurant_menus_and_items
    restaurant = Restaurant.find(params[:id])
    menus = restaurant.restaurant_menus.where(active: true)

    render json: {
      restaurant: restaurant.name,
      menus: menus.map do |item|
        {
          menu_name: item.name,
          description: item.description,
          menu_items: item.menu_items
        }
      end
    }
  end
end
