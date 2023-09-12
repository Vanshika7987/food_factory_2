class Address < ApplicationRecord
  belongs_to :account
  belongs_to :restaurant
end
