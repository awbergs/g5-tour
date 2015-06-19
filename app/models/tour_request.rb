class TourRequest < ActiveRecord::Base
  has_many :amenities, through: :amenity_tour_requests
end
