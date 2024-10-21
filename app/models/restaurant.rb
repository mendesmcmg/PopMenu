class Restaurant < ApplicationRecord
  has_many :restaurant_menus, dependent: :destroy
end
