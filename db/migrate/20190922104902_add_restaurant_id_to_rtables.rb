class AddRestaurantIdToRtables < ActiveRecord::Migration[5.0]
  def change
    add_column :rtables, :restaurant_id, :integer
  end
end
