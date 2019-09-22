class CreateRtables < ActiveRecord::Migration[5.0]
  def change
    create_table :rtables do |t|
      t.string :name
      t.integer :min_guest
      t.integer :max_guest

      t.timestamps
    end
  end
end
