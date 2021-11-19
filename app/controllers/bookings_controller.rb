class BookingsController < ApplicationController
  before_action :set_booking, only: [:confirm, :reject]

  def create
    booking = Booking.new(booking_params)
    booking.user = current_user
    booking.experience = Experience.find(params[:experience_id])
    @experience = booking.experience
    @booking = Booking.new
    if booking.save!
      flash[:notice] = "Booked succesfully"
      render "experiences/show"
    else
      flash[:alert] = "Something went wrong!"
      render "experiences/show"
    end
  end

  def confirm
    @booking.status = "confirmed"
    @booking.save!
    redirect_to '/dashboard/bookings'
  end

  def reject
    @booking.status = "rejected"
    @booking.save!
    redirect_to '/dashboard/bookings'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
