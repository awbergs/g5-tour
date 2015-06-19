class TourRequestsController < ApplicationController

  def index
    @tour_request = TourRequest.new
  end

  def activate
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

  def create_params
    params.require(:tour_request).permit(:email)
  end

end
