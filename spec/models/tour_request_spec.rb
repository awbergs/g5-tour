require 'rails_helper'

RSpec.describe TourRequest, type: :model do

  it { should validate_presence_of :email }

  it { should have_many :amenity_tour_requests }
  it { should have_many :amenities }

  describe 'create' do
    it 'generates a token automatically' do
      tr = TourRequest.new(email: 'a@b.com')
      tr.save
      expect(tr.token).to_not be nil
    end
  end
  
end
