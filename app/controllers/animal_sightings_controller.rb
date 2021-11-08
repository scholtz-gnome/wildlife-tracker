class AnimalSightingsController < ApplicationController
  before_action :find_animal
  before_action :set_sighting, only: %i[show edit update destroy]

  def index
    @sightings = @animal.sightings
  end

  def show
    @sighting = Sighting.find(params[:id])
    @animal = Animal.find(@sighting.animal_id)
  end

  def new
    @sighting = @animal.sightings.build
    @regions = Region.all
  end

  def create
    @sighting = @animal.sightings.build(sighting_params)

    if @sighting.save
      redirect_to "/animals/#{@animal.id}/sightings"
    else
      render :new
    end
  end

  private

  def sighting_params
    params.require(:sighting).permit(:region_id, :date, :latitude, :longitude)
  end

  def find_animal
    @animal = Animal.find(params[:animal_id])
  end

  def set_sighting
    @sighting = @animal.sightings.find(params[:id])
  end
end
