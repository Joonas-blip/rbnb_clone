class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_experience, only: [:show, :create, :update, :destroy]

  def index
    @experiences = Experience.all
  end

  def show; end

  def new
    @experience = Experience.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
