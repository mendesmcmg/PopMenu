class RemoveRestaurantMenuIdFromMenuItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :menu_items, :restaurant_menu_id, :bigint
  end
end
