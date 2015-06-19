class TourRequest < ActiveRecord::Base
  has_many :amenity_tour_requests
  has_many :amenities, through: :amenity_tour_requests
end
