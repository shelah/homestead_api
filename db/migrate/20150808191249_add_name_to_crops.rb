class AddNameToCrops < ActiveRecord::Migration
  def change
    add_column :crops, :name, :string
    add_index :crops, :name, unique: true
  end
end
