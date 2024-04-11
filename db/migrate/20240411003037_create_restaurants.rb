class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps # add two columns in table with created_at and updated_at
    end
  end
end
