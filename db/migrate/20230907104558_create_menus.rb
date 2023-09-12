class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :menu_type
      t.integer :restaurant_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
