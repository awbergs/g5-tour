require 'rails_helper'

RSpec.describe Amenity, type: :model do

  it { should validate_presence_of :name }
  it { should have_many :amenity_tour_requests }
  it { should have_many :tour_requests }
  
end
