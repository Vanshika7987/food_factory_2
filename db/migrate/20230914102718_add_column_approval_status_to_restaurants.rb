class AddColumnApprovalStatusToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants , :approval_request, :boolean, default: false
  end
end
