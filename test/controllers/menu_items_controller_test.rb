require "test_helper"

class MenuItemsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @restaurant = Restaurant.create(name: "Italian Restaurant")  # Create a restaurant
    @restaurant_menu = RestaurantMenu.create(
      name: "Dinner Menu",
      restaurant: @restaurant 
    )
    @menu_item = @restaurant_menu.menu_items.create(name: "Salad", price: 8.99)
  end

  test "should get index" do
    get menu_items_path(@restaurant_menu), as: :json
    assert_response :success
  end

  test "should show menu item" do
    get menu_item_path(@menu_item), as: :json
    assert_response :success
  end
end
