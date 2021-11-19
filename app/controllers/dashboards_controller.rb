class DashboardsController < ApplicationController
  before_action :authenticate_user!, :validate_user

  def profile
      @dash_experiences = Experience.where(user: current_user)
  end

  def bookings
    @bookings = Booking.all
    @dash_bookings = @bookings.map  do |booking|
      if booking.experience.user == current_user
        booking
      end
    end
  end

  private

  def validate_user
    if current_user.user?
      redirect_to '/'
    end
  end
end
