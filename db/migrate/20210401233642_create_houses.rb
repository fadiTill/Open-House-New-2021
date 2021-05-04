class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.references :account
      t.string :address
      t.integer :price
      t.integer :size
      t.string :typehouses
      t.integer :bedrooms
      t.integer :bathrooms
      t.text :comment

      t.timestamps
    end
  end
end
