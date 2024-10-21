class RestaurantMenu < ApplicationRecord
  has_many :menu_items, dependent: :destroy
end
