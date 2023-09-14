class AddColumnRestaurantOwnerIdToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :restaurant_owner_id, :integer, foreign_key: true
  end
end
