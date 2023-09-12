class Category < ApplicationRecord
  has_many :items
  has_and_belongs_to_many :menus, join_table: :menu_categories
end
