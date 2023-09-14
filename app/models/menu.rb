class Menu < ApplicationRecord
  belongs_to :restaurant
  has_and_belongs_to_many :categories, join_table: :menu_categories
end
