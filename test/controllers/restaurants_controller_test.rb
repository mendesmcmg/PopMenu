require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  fixtures :restaurants, :restaurant_menus, :menu_items

  def setup
    @restaurant = restaurants(:one)          
    @restaurant_menu = restaurant_menus(:one)
    @menu_item = menu_items(:one)    
    @restaurant_menu.menu_items << [@menu_item] 
  end

  test "should get restaurant menus and items" do
  
    get restaurant_menus_and_items_restaurant_path(@restaurant), as: :json

    assert_response :success
    json_response = JSON.parse(response.body)
  
    assert_equal @restaurant.name, json_response["restaurant"]
  
    assert_equal @restaurant_menu.name, json_response["menus"].first["menu_name"]
    assert_equal @restaurant_menu.description, json_response["menus"].first["description"]

    assert_includes json_response["menus"].first["menu_items"].map { |mi| mi["name"] }, @menu_item.name
  end
end
