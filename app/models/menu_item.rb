class MenuItem < ApplicationRecord
  has_and_belongs_to_many :restaurant_menus

  validates :name, uniqueness: true
end
