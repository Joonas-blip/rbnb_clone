class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_experience, only: [:show, :create, :update, :destroy]

  def index
    @experiences = Experience.all
  end

end
