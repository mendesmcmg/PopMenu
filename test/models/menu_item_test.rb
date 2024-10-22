require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  fixtures :menu_items

  def setup
    @menu_item = menu_items(:one)
  end

  test "should be valid" do
    assert @menu_item.valid?
  end

  test "should set attributes correctly" do
    assert_equal "Spaghetti Carbonara", @menu_item.name
    assert_equal 12.99, @menu_item.price
    assert_equal "Pasta", @menu_item.category
    assert_equal true, @menu_item.available
  end
end
