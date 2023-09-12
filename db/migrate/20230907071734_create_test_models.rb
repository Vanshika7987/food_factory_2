class CreateTestModels < ActiveRecord::Migration[7.0]
  def change
    create_table :test_models do |t|
      t.string :name 
      t.string :phone
      t.boolean :status
      t.timestamps
    end
  end
end
