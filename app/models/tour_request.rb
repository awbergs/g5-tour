class TourRequest < ActiveRecord::Base
  has_many :amenity_tour_requests
  has_many :amenities, through: :amenity_tour_requests

  validates :email, presence: true, format: /@/

  before_create :set_token

  protected

  def set_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
end
