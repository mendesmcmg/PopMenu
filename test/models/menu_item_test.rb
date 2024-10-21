require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  def setup
    @restaurant_menu = RestaurantMenu.create(name: "Dinner Menu")
    @menu_item = @restaurant_menu.menu_items.build(name: "Spaghetti", price: 12.99, category: "Pasta", available: true)
  end

  test "should be valid" do
    assert @menu_item.valid?
  end

  test "should set attributes correctly" do
    assert_equal @menu_item.name, "Spaghetti"
    assert_equal @menu_item.price, 12.99
    assert_equal @menu_item.category, "Pasta"
    assert_equal @menu_item.available, true
  end

  test "menu item should belong to a restaurant menu" do
    assert_equal @restaurant_menu, @menu_item.restaurant_menu
  end
end
