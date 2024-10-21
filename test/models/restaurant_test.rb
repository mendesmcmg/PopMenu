require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  def setup
    @restaurant = restaurants(:italian_restaurant)
    @restaurant_menu = restaurant_menus(:dinner_menu)
  end

  test "should have many restaurant menus" do
    assert @restaurant.restaurant_menus.include?(@restaurant_menu)
  end
end
