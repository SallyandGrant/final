class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :reservation_id
      t.integer :user_id
      t.string :party_size


      t.timestamps
    end
  end
end
