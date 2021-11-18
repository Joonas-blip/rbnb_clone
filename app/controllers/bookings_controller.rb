class BookingsController < ApplicationController

  def create
    booking = Booking.new(booking_params)
    booking.user = current_user
    booking.experience = Experience.find(params[:experience_id])
    @experience = booking.experience
    @booking = Booking.new
    if booking.save!
      render "experiences/show"
      flash[:notice] = "Booked succesfully"
    else
      render "experiences/show"
      flash[:alert] = "Something went wrong!"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
