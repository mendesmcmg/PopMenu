class CreateJoinTableRestaurantMenuMenuItem < ActiveRecord::Migration[7.1]
  def change
    create_join_table :restaurant_menus, :menu_items do |t|
      t.index [:restaurant_menu_id, :menu_item_id]
      t.index [:menu_item_id, :restaurant_menu_id]
    end
  end
end
