class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def profile
      @dash_experiences = Experience.where(user:current_user)
  end

  def bookings
    @dash_bookings = Booking.where(user:current_user)
  end
end
