class CreateAmenitiesTourRequests < ActiveRecord::Migration
  def change
    create_table :amenities_tour_requests do |t|
      t.references :amenity, index: true, null: false
      t.references :tour_request, index: true, null: false
    end
    add_foreign_key :amenities_tour_requests, :amenities
    add_foreign_key :amenities_tour_requests, :tour_requests
  end
end
