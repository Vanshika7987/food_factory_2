class CreateOrderMenuItem < ActiveRecord::Migration[7.0]
  def change
    create_table :order_menu_items do |t|
      t.integer :order_id, foreign_key: true, null: false
      t.integer :menu_item_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
