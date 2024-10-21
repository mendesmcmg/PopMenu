require "test_helper"

class RestaurantMenusControllerTest < ActionDispatch::IntegrationTest
  def setup
    @restaurant_menu = RestaurantMenu.create(name: "Lunch Menu")
  end

  test "should get index" do
    get restaurant_menus_path, as: :json
    assert_response :success
  end

  test "should show restaurant menu" do
    get restaurant_menu_path(@restaurant_menu), as: :json
    assert_response :success
  end
end
