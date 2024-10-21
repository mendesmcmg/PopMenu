require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  def setup
    @restaurant_menu = restaurant_menus(:dinner_menu)
    @menu_item = menu_items(:spaghetti)
  end

  test "should be valid" do
    assert @menu_item.valid?
  end

  test "should set attributes correctly" do
    assert_equal "Spaghetti", @menu_item.name
    assert_equal 12.99, @menu_item.price
    assert_equal "Pasta", @menu_item.category
    assert_equal true, @menu_item.available
  end

  test "menu item should belong to a restaurant menu" do
    assert_equal @restaurant_menu, @menu_item.restaurant_menu
  end
end
