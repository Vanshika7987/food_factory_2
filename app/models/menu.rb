class Menu < ApplicationRecord
  has_many :menu_items
  has_many :items, through: :menu_items
  belongs_to :restaurant
  has_and_belongs_to_many :categories, join_table: :menu_categories
end
