class AddUserToGuests < ActiveRecord::Migration[6.0]
  def change
    add_reference :guests, :user, null: false, foreign_key: true
  end
end
