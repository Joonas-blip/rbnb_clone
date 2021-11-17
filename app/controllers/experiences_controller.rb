class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @experiences = Experience.all

    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude
      }
    end
  end

end
