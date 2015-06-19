class Amenity < ActiveRecord::Base
  has_many :amenity_tour_requests
  has_many :tour_requests, through: :amenity_tour_requests

  validates :name, presence: true, uniqueness: true
end
