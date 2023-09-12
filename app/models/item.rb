class Item < ApplicationRecord
  belongs_to :category
  has_many :menu_items
  has_many :menus, through: :menu_items
end
