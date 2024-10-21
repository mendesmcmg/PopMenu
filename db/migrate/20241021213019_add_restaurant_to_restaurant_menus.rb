class AddRestaurantToRestaurantMenus < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurant_menus, :restaurant, null: false, foreign_key: true
  end
end
