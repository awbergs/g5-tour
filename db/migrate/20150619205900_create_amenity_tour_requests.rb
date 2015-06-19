class CreateAmenityTourRequests < ActiveRecord::Migration
  def change
    create_table :amenity_tour_requests do |t|
      t.references :amenity, index: true
      t.references :tour_request, index: true
    end
    add_foreign_key :amenity_tour_requests, :amenities
    add_foreign_key :amenity_tour_requests, :tour_requests
  end
end
