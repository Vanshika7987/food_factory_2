class ChangeColumnNameFromMenuTypeToType < ActiveRecord::Migration[7.0]
  def change
    rename_column :menus, :menu_type, :type
  end
end
