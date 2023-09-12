class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.integer :menu_id, foreign_key: true
      t.integer :item_id, foreign_key: true
      t.string :item_new_name
      t.integer :price
      t.timestamps
    end
  end
end
