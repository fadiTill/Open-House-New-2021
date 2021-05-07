class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.references :user
      t.string :address
      t.string :price
      t.string :size
      t.string :typehouses
      t.string :bedrooms
      t.string :bathrooms
      t.text :comment

      t.timestamps
    end
  end
end
