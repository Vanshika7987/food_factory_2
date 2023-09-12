class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :customer, class_name: 'Account'
  belongs_to :delivery_person, class_name: 'Account'
  has_and_belongs_to_many :menu_items, join_table: :order_menu_items
end
