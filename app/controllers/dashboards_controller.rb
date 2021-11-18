class DashboardsController < ApplicationController
  def profile
    @dash_experiences = Experiences.first(3)
    @dash_bookings = Bookings.first(3)
  end
end
