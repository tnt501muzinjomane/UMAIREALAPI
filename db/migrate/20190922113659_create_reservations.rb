class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.integer :table_id
      t.integer :shift_id
      t.string :reservation_date
      t.string :reservation_time
      t.integer :number_of_people

      t.timestamps
    end
  end
end
