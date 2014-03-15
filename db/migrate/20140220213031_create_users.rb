class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :password
      t.string :email
      t.string :admin
      t.integer :booking_id
      t.integer :reservation_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
