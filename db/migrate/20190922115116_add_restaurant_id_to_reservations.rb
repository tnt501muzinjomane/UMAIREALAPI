class AddRestaurantIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :restaurant_id, :integer
  end
end
