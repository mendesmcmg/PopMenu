class MenuItem < ApplicationRecord
  belongs_to :restaurant_menu

  validates :name, uniqueness: true
end
