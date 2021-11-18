class BookingsController < ApplicationController

  def create
    booking = Booking.new(booking_params)
    booking.user = current_user
    booking.experience = Experience.find(params[:experience_id])
    booking.save!
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
