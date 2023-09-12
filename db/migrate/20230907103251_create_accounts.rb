class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :address
      t.string :type
      t.string :phone_number

      t.timestamps
    end
  end
end
