class TourRequestsController < ApplicationController
  before_action :set_tour_request, only: [:show, :update]
  before_action :determine_step, only: [:show, :update]

  def index
    @tour_request = TourRequest.new
  end

  def activate
  end

  def show
    @amenities = Amenity.order(:name) if @step_two
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

  # PATCH /tour_requests
  def update

    if @tour_request.update_attributes(update_params)
      @tour_request.amenity_ids = params[:amenity_ids] if params[:amenity_ids]
      redirect_to tour_request_path(@tour_request)
    else
      render :show
    end
  end

  private

  def determine_step
    @step_one = @tour_request.first_name.nil?
    @step_two = @tour_request.requested_tour_date.nil?
    @step_three = !@step_one && !@step_two
  end

  def set_tour_request
    @tour_request = TourRequest.find_by(token: params[:token])
  end

  def create_params
    params.require(:tour_request).permit(:email)
  end

  def update_params
    params.require(:tour_request).permit(:first_name, :last_name, :phone, "requested_tour_date(1i)", "requested_tour_date(2i)", "requested_tour_date(3i)", "requested_tour_date(4i)", "requested_tour_date(5i)")
  end

end
