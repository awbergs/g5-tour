require 'rails_helper'

RSpec.describe TourRequestsController, :type => :controller do

  let(:valid_create_attributes) {
    {email: "test@stem.com"}
  }

  let(:invalid_create_attributes) {
    {email: ""}
  }

  let(:valid_step_two_attributes) {
    {first_name: 'name', last_name: 'surname', phone: '555-555-5555'}
  }

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TourRequest" do
        expect {
          post :create, tour_request: valid_create_attributes
        }.to change(TourRequest, :count).by(1)
      end
    end

    describe "with invalid params" do
      it "returns an error with no email" do
        post :create, tour_request: invalid_create_attributes
        expect(TourRequest.all.count).to eq(0)
      end
    end
  end

  describe 'GET index' do

  end

  describe 'GET show' do
    let(:tour_request) { create(:tour_request) }
    describe 'setting the form step' do
      it 'sets with only email' do
        get :show, token: tour_request.token
        expect(assigns(:step_one)).to eql(true)
        expect(assigns(:step_two)).to eql(false)
        expect(assigns(:step_three)).to eql(false)
      end
      it 'sets with personal details' do
        tour_request.update_attributes(valid_step_two_attributes)
        tour_request.reload
        get :show, token: tour_request.token
        expect(assigns(:step_one)).to eql(false)
        expect(assigns(:step_two)).to eql(true)
        expect(assigns(:step_three)).to eql(false)
      end
      it 'sets with additional details' do
        tour_request.update_attributes(valid_step_two_attributes)
        tour_request.requested_tour_date = DateTime.now
        tour_request.save
        tour_request.reload
        get :show, token: tour_request.token
        expect(assigns(:step_one)).to eql(false)
        expect(assigns(:step_two)).to eql(false)
        expect(assigns(:step_three)).to eql(true)
      end
    end
  end
end
