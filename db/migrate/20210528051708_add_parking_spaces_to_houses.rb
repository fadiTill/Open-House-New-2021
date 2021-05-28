class AddParkingSpacesToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :parking_spaces, :integer, default: 0
  end
end
