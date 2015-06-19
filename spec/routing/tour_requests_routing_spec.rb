require "rails_helper"

RSpec.describe TourRequestsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/activate").to route_to("tour_requests#activate")
    end

    it "routes to #show" do
      expect(get: "/tour_requests/1").to route_to("tour_requests#show", token: "1")
    end

    it "routes to #create" do
      expect(post: "/tour_requests").to route_to("tour_requests#create")
    end

  end
end
