require "test_helper"

class RestaurantMenuTest < ActiveSupport::TestCase
  def setup
    @restaurant = restaurants(:italian_restaurant) 
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

  test "should have many menu items" do
    assert_respond_to @restaurant_menu, :menu_items
  end
end
