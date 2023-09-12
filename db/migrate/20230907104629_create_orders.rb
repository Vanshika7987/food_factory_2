class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :restaurant_id, foreign_key: true, null: false
      t.integer :delivery_person_id
      t.datetime :delivery_date
      t.integer :customer_id
      t.string :status
      t.timestamps
    end
  end
end
