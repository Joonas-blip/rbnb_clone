class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_experience, only: [:show]

  def index
    sql_query = "experiences.title @@ :query \
                OR experiences.address @@ :query \
                OR experiences.category @@ :query"
    if params[:query].present?
      @experiences = Experience.where(sql_query, query: "%#{params[:query]}%")
    else
      @experiences = Experience.all
    end
    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        info_window: render_to_string(partial: "info_window", locals: { experience: experience })
      }
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
