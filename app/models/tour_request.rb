class TourRequest < ActiveRecord::Base
  has_many :amenity_tour_requests
  has_many :amenities, through: :amenity_tour_requests

  validates :email, presence: true, format: /@/

  validates :first_name, :last_name, :phone, presence: true, if: :persisted?

  before_create :set_token

  def to_param
    token
  end

  protected

  def set_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
end
