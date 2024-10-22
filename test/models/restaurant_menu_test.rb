require "test_helper"

class RestaurantMenuTest < ActiveSupport::TestCase
  fixtures :restaurants

  def setup
    @restaurant = restaurants(:one) 
    @restaurant_menu = RestaurantMenu.new(
      name: "Lunch Menu",
      description: "A nice meal for your day!",
      active: true,
      restaurant: @restaurant  
    )
  end

  test "should be valid" do
    assert @restaurant_menu.valid?, @restaurant_menu.errors.full_messages.to_sentence
  end

  test "should set attributes correctly" do
    assert_equal @restaurant_menu.name, "Lunch Menu"
    assert_equal @restaurant_menu.description, "A nice meal for your day!"
    assert_equal @restaurant_menu.active, true
  end

  test "should belong to restaurant" do 
    assert_equal @restaurant, @restaurant_menu.restaurant
  end
end
