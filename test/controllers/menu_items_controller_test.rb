require "test_helper"

class MenuItemsControllerTest < ActionDispatch::IntegrationTest
  fixtures :restaurants, :restaurant_menus, :menu_items 

  def setup
    @restaurant = restaurants(:one)
    @restaurant_menu = restaurant_menus(:one)
    @menu_item = menu_items(:one)
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
