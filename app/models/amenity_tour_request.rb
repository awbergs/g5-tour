class AmenityTourRequest < ActiveRecord::Base
  belongs_to :amenity
  belongs_to :tour_request
end
