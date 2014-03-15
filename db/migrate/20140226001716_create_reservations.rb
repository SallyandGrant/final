class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :day
      t.string :time
      t.integer  :booking_id
      t.integer :user_id


      t.timestamps
    end
  end
end
