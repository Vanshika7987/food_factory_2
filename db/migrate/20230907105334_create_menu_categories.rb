class CreateMenuCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_categories do |t|
      t.integer :menu, foreign_key: true, null: false
      t.integer :category, foreign_key: true, null: false
      t.timestamps
    end
  end
end
