class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.text :full_address
      t.integer :restaurant_id, foreign_key: true, null: false
      t.integer :account_id, foreign_key:true, null: false
      t.timestamps
    end
  end
end
