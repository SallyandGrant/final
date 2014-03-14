class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :day
      t.string :time
      t.string  :booking_id
      t.string :user_id


      t.timestamps
    end
  end
end
