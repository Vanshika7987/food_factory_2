class Restaurant < ApplicationRecord
  has_many :menus
  has_many :orders
  has_many :addresses
  belongs_to :restaurant_owner


  scope :approved_restaurants, ->{ where(approval_request: true) }
end
