class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @experiences = Experience.all
  end

<<<<<<< HEAD
  def show
    @experience = Experience.find(params[:id])
  end
=======
>>>>>>> 03cec577b7f276fa58dff8e46fa14c9a46c172ee
end
