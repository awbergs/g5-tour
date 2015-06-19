class TourRequestsController < ApplicationController
  before_action :set_tour_request, only: [:show, :update]

  def index
    @tour_request = TourRequest.new
  end

  def activate
  end

  def show
  end

  # POST /tour_requests
  def create
    @tour_request = TourRequest.new(create_params)

    if @tour_request.save
      redirect_to :activate, notice: 'Tour request was successfully created.'
    else
      render :index
    end
  end

  private

  def set_tour_request
    @tour_request = TourRequest.find_by(token: params[:token])
  end

  def create_params
    params.require(:tour_request).permit(:email)
  end

end
