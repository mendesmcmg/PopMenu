class MenuItem < ApplicationRecord
  has_and_belongs_to_many :menu_items

  validates :name, uniqueness: true
end
