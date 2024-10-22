require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  def setup
    @restaurant = Restaurant.create!(name: "Italian Restaurant", description: "A great place to eat.")
    @menu1 = RestaurantMenu.create!(name: "Lunch Menu", restaurant: @restaurant)
    @menu2 = RestaurantMenu.create!(name: "Dinner Menu", restaurant: @restaurant)
  end

  test "should have many restaurant menus" do
    assert @restaurant.restaurant_menus.include?(@menu1)
  end

  test "should set attributes correctly" do
    assert_equal @restaurant.name, "Italian Restaurant"
    assert_equal @restaurant.description, "A great place to eat."
  end
end
