class RestaurantMenusController < ApplicationController

  def index
    @restaurant_menus = RestaurantMenu.all
    render json: @restaurant_menus
  end

  def show
    @restaurant_menu = RestaurantMenu.find(params[:id])
    render json: @restaurant_menu
  end
end
