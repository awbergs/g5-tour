class TourRequest < ActiveRecord::Base
  has_many :amenity_tour_requests
  has_many :amenities, through: :amenity_tour_requests

  validates :token, uniqueness: true
  validates :email, presence: true, format: /@/

  validates :first_name, :last_name, :phone, presence: true, if: :persisted?

  accepts_nested_attributes_for :amenities

  before_create :set_token

  def to_param
    token
  end

  def name
    return "#{first_name} #{last_name}"
  end

  protected

  def set_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
end
