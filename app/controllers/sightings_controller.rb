class SightingsController < ApplicationController
  before_action :find_animal
  before_action :set_sighting, only: %i[show edit update destroy]

  def index
    @sightings = @animal.sightings
  end

  def show
    @sighting = Sighting.find(params[:id])
  end

  def new
    @sighting = @animal.sightings.build
    @regions = Region.all
  end

  def create
    @sighting = @animal.sightings.build(sighting_params)

    if @sighting.save
      redirect_to animal_sightings_path(@animal)
    else
      render :new
    end
  end

  def update
    if @sighting.update(sighting_params)
      redirect_to animal_sightings_path(@animal)
    else
      render :edit
    end
  end

  def destroy
    @sighting.destroy

    redirect_to animal_sightings_path(@animal)
  end

  private

  def sighting_params
    params.require(:sighting).permit(:region_id, :date, :latitude, :longitude)
  end

  def find_animal
    @animal = Animal.find(params[:animal_id])
  end

  def set_sighting
    @sighting = @shark.sightings.find(params[:id])
  end
end
