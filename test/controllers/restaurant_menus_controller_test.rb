require "test_helper"

class RestaurantMenusControllerTest < ActionDispatch::IntegrationTest

  def setup
    @restaurant = restaurants(:one)         
    @restaurant_menu = restaurant_menus(:one) 
    @menu_item = menu_items(:one)            
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
