class CreateTourRequests < ActiveRecord::Migration
  def change
    create_table :tour_requests do |t|
      t.string :email, null: false
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.datetime :requested_tour_date
      t.string :questions
      t.string :ip_address
      t.integer :rating
      t.string :token, null: false

      t.timestamps null: false
    end
  end
end
