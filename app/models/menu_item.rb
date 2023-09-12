class MenuItem < ApplicationRecord
  belongs_to :menu
  belongs_to :item
  has_and_belongs_to_many :orders, join_table: :order_menu_items
end
