class CreateCrops < ActiveRecord::Migration
  def change
    create_table(:crops, primary_key: 'id') do |t|

      t.timestamps null: false
    end
  end
end
