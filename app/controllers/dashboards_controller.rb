class DashboardsController < ApplicationController
  def profile
    @dash_experiences = Experience.where(user:current_user)
    # @dash_bookings = Booking.first(3)
  end

  def bookings
    @dash_bookings = Booking.where(user:current_user)
  end
end
