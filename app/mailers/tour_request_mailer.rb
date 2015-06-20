class TourRequestMailer < ApplicationMailer

  def activate(tour_request)
    @tour_request = tour_request
    @url = tour_request_url(@tour_request)
    mail(to: @tour_request.email, subject: 'Activate your tour request')
  end

  def success(tour_request)
    @tour_request = tour_request
    @url = tour_request_url(@tour_request)
    mail(to: @tour_request.email, subject: 'Tour request created!')
  end

  def new_tour(tour_request, ip_address)
    @tour_request = tour_request
    @ip_address = ip_address
    mail(to: 'tours@example.com', subject: 'New Tour Scheduled')
  end

end
