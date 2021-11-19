class DashboardsController < ApplicationController
  before_action :authenticate_user!, :validate_user

  def profile
      @dash_experiences = Experience.where(user:current_user)
  end

  def bookings
    @dash_bookings = Booking.where(user:current_user)
  end

  private

  def validate_user
    if current_user.user?
      redirect_to '/'
    end
  end
end
